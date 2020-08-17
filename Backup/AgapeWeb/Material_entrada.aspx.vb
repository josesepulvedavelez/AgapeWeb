Imports System.Data
Imports System.Data.SqlClient

Public Class Material_entrada
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim adaptador2 As SqlDataAdapter
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtFecha.Text = DateTime.Now.ToString("dd/MM/yyyy")
            txtHora.Text = DateTime.Now.ToString("HH:mm:ss")
            txtDigitador.Text = Session("usuario").ToString()
            cargarDropDownList()
            cargarDigitador()

            txtId_proveedor.Text = ddlProveedor.SelectedValue
            txtId_material.Text = ddlDescripcion.SelectedValue

            Dim tabla As New DataTable
            tabla.Columns.Add("id_material")
            tabla.Columns.Add("descripcion")
            tabla.Columns.Add("ubicacion")
            tabla.Columns.Add("cantidad")
            tabla.Columns.Add("costo")
            tabla.Columns.Add("total")
            tabla.Columns.Add("utilidad")
            tabla.Columns.Add("sugerido")

            GridView1.DataSource = tabla
            GridView1.DataBind()

            Session("datos") = tabla
        End If
    End Sub

    Sub cargarDropDownList()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("select nombre, id from proveedor order by nombre", conexion)
        adaptador2 = New SqlDataAdapter("select codigo, descripcion, id from material order by descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos, "proveedor")
        adaptador2.Fill(datos, "material")
        conexion.Close()

        ddlProveedor.DataSource = datos.Tables("proveedor")
        ddlDescripcion.DataSource = datos.Tables("material")

        ddlProveedor.DataTextField = "nombre"
        ddlProveedor.DataValueField = "id"
        ddlProveedor.DataBind()

        ddlDescripcion.DataTextField = "descripcion"
        ddlDescripcion.DataValueField = "id"
        ddlDescripcion.DataBind()
    End Sub

    Sub cargarDigitador()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("select usuario, id from empleado where usuario='" + txtDigitador.Text + "'", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos, "empleado")
        conexion.Close()

        txtId_digitador.Text = datos.Tables("empleado").Rows(0)("id").ToString
    End Sub

    Protected Sub ddlProveedor_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProveedor.SelectedIndexChanged
        txtId_proveedor.Text = ddlProveedor.SelectedValue
        txtFactura.Text = txtFecha.Text & "-" & txtHora.Text
    End Sub

    Protected Sub ddlDescripcion_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlDescripcion.SelectedIndexChanged
        txtId_material.Text = ddlDescripcion.SelectedValue
    End Sub

    Protected Sub txtDigitador_TextChanged(sender As Object, e As EventArgs) Handles txtDigitador.TextChanged
        cargarDigitador()
    End Sub

    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        Dim cantidad As Integer = txtCantidad.Text
        Dim costo As Double = txtCosto.Text
        Dim total As Double

        Dim utilidad As Integer = ddlUtilidad.Text
        Dim sugerido As Double

        total = cantidad * costo
        sugerido = costo + (costo * (utilidad / 100))

        tabla.Rows.Add(ddlDescripcion.SelectedValue, ddlDescripcion.SelectedItem.ToString(), ddlUbicacion.SelectedItem, txtCantidad.Text, txtCosto.Text, total.ToString, ddlUtilidad.SelectedItem, sugerido.ToString())

        GridView1.DataSource = tabla
        GridView1.DataBind()

        Session("datos") = tabla
        lblMensaje2.Text = "Material agregado con exito"
        lblMensaje2.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click, btnNueva.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        For i As Integer = GridView1.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        GridView1.DataSource = tabla
        GridView1.DataBind()
    End Sub

    Protected Sub btnLimpiarUltima_Click(sender As Object, e As EventArgs) Handles btnLimpiarUltima.Click
        Try
            Dim tabla As New DataTable()
            tabla = DirectCast(Session("datos"), DataTable)

            tabla.Rows.RemoveAt(tabla.Rows.Count - 1)

            GridView1.DataSource = tabla
            GridView1.DataBind()
        Catch ex As IndexOutOfRangeException
            lblMensaje2.Text = "No existen Materiales"
            lblMensaje2.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click, btnLimpiar.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        conexion.Open()

        Dim transaccion As SqlTransaction
        Dim comando As SqlCommand

        transaccion = conexion.BeginTransaction()

        Try
            comando = New SqlCommand("INSERT INTO entrada(factura, fecha, hora, id_proveedor, id_digitador, notas) VALUES(@factura, @fecha, @hora, @id_proveedor, @id_digitador, @notas)", conexion)
            comando.Parameters.AddWithValue("@factura", txtFactura.Text)
            comando.Parameters.AddWithValue("@fecha", txtFecha.Text)
            comando.Parameters.AddWithValue("@hora", txtHora.Text)
            comando.Parameters.AddWithValue("@id_proveedor", txtId_proveedor.Text)
            comando.Parameters.AddWithValue("@id_digitador", txtId_digitador.Text)
            comando.Parameters.AddWithValue("@notas", txtNotas.Text)
            comando.Transaction = transaccion
            comando.ExecuteNonQuery()

            comando = New SqlCommand("select max(id) from entrada", conexion)
            comando.Transaction = transaccion
            Dim id_entrada As Integer = comando.ExecuteScalar()

            comando = New SqlCommand("INSERT INTO material_entrada(id_material, id_entrada, ubicacion, cantidad, costo, utilidad) VALUES(@id_material, @id_entrada, @ubicacion, @cantidad, @costo, @utilidad)", conexion)
            comando.Transaction = transaccion

            Dim cmd As New SqlCommand("UPDATE material set existencia=existencia+@existencia where id=@id_material", conexion)
            cmd.Transaction = transaccion

            For Each row As GridViewRow In GridView1.Rows
                comando.Parameters.Clear()
                comando.Parameters.AddWithValue("@id_material", row.Cells(0).Text)
                comando.Parameters.AddWithValue("@id_entrada", id_entrada)
                comando.Parameters.AddWithValue("@ubicacion", row.Cells(2).Text)
                comando.Parameters.AddWithValue("@cantidad", row.Cells(3).Text)
                comando.Parameters.AddWithValue("@costo", row.Cells(4).Text)
                comando.Parameters.AddWithValue("@utilidad", row.Cells(6).Text)
                comando.ExecuteNonQuery()

                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@existencia", row.Cells(3).Text)
                cmd.Parameters.AddWithValue("@id_material", row.Cells(0).Text)
                cmd.ExecuteNonQuery()
            Next

            transaccion.Commit()
            lblMensaje.Text = "Factura guardada con exito "
            lblMensaje.ForeColor = Drawing.Color.Green

            txtFactura.Text = String.Empty
            txtNotas.Text = "NINGUNA"
            txtCantidad.Text = 0
            txtCosto.Text = 0

            Dim tabla As New DataTable()
            tabla = DirectCast(Session("datos"), DataTable)

            For i As Integer = GridView1.Rows.Count - 1 To 0 Step -1
                tabla.Rows.RemoveAt(i)
            Next

            GridView1.DataSource = tabla
            GridView1.DataBind()
            txtFactura.Focus()
        Catch ex As Exception
            transaccion.Rollback()
            lblMensaje.Text = ex.Message
            lblMensaje.ForeColor = Drawing.Color.Red
        End Try

        conexion.Close()
    End Sub

    Protected Sub btnNueva_Click(sender As Object, e As EventArgs) Handles btnNueva.Click
        txtFactura.Text = String.Empty
        txtNotas.Text = String.Empty

        lblMensaje.Text = "Entrada de materiales"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtCantidad.Text = String.Empty
        txtCosto.Text = String.Empty

        txtFactura.Focus()
    End Sub

    Protected Sub btnRecargarProveedor_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles btnRecargarProveedor.Click
        cargarDropDownList()
    End Sub

    Protected Sub btnRecargarMaterial_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles btnRecargarMaterial.Click
        cargarDropDownList()
    End Sub
End Class