Imports System.Data
Imports System.Data.SqlClient

Public Class Material_reintegro
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim adaptador2 As SqlDataAdapter
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtFecha.Text = DateTime.Now.Date.ToString
            txtHora.Text = DateTime.Now.ToString("HH:mm:ss")
            txtDigitador.Text = Session("usuario").ToString()
            cargarDropDownList()
            cargarDigitador()

            txtId_empleado.Text = ddlEmpleado.SelectedValue
            txtId_material.Text = ddlDescripcion.SelectedValue

            Dim tabla As New DataTable
            tabla.Columns.Add("id_material")
            tabla.Columns.Add("descripcion")
            tabla.Columns.Add("ubicacion")
            tabla.Columns.Add("cantidad")
            tabla.Columns.Add("costo")
            tabla.Columns.Add("total")

            GridView1.DataSource = tabla
            GridView1.DataBind()

            Session("datos") = tabla
        End If
    End Sub

    Sub cargarDropDownList()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("select usuario, id from empleado", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos, "empleado")
        conexion.Close()

        ddlEmpleado.DataSource = datos.Tables("empleado")

        ddlEmpleado.DataTextField = "usuario"
        ddlEmpleado.DataValueField = "id"
        ddlEmpleado.DataBind()

        txtId_empleado.Text = ddlEmpleado.SelectedValue
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

    Protected Sub ddlEmpleado_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlEmpleado.SelectedIndexChanged
        txtId_empleado.Text = ddlEmpleado.SelectedValue
        txtReintegro.Text = txtFecha.Text & "-" & txtHora.Text
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

        total = cantidad * costo

        tabla.Rows.Add(ddlDescripcion.SelectedValue, ddlDescripcion.SelectedItem.ToString(), ddlUbicacion.SelectedItem, txtCantidad.Text, txtCosto.Text, total.ToString)

        GridView1.DataSource = tabla
        GridView1.DataBind()

        Session("datos") = tabla
        lblMensaje2.Text = "Material agregado con exito"
        lblMensaje2.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click, btnNueva.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        'ELImina toda la grilla 
        For i As Integer = GridView1.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        REM elimina el ultimo elemento de la grilla
        REM tabla.Rows.RemoveAt(tabla.Rows.Count - 1)

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

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        conexion.Open()

        Dim transaccion As SqlTransaction
        Dim comando As SqlCommand

        transaccion = conexion.BeginTransaction()

        Try
            comando = New SqlCommand("INSERT INTO reintegro(devolucion, fecha, hora, id_empleado, id_digitador, notas) VALUES(@devolucion, @fecha, @hora, @id_empleado, @id_digitador, @notas)", conexion)
            comando.Parameters.AddWithValue("@devolucion", txtReintegro.Text)
            comando.Parameters.AddWithValue("@fecha", txtFecha.Text)
            comando.Parameters.AddWithValue("@hora", txtHora.Text)
            comando.Parameters.AddWithValue("@id_empleado", txtId_empleado.Text)
            comando.Parameters.AddWithValue("@id_digitador", txtId_digitador.Text)
            comando.Parameters.AddWithValue("@notas", txtNotas.Text)
            comando.Transaction = transaccion
            comando.ExecuteNonQuery()

            comando = New SqlCommand("select max(id) from reintegro", conexion)
            comando.Transaction = transaccion
            Dim id_reintegro As Integer = comando.ExecuteScalar()

            comando = New SqlCommand("INSERT INTO material_reintegro(id_material, id_reintegro, ubicacion, cantidad, costo) VALUES(@id_material, @id_reintegro, @ubicacion, @cantidad, @costo)", conexion)
            comando.Transaction = transaccion

            Dim cmd As New SqlCommand("UPDATE material set existencia=existencia+@existencia where id=@id_material", conexion)
            cmd.Transaction = transaccion

            Dim cmdSR As New SqlCommand("insert into salida_reintegro_(fecha, id_empleado, id_material, salida, reintegro, descripcion, valor) values(@fecha, @id_empleado, @id_material, @salida, @reintegro, @descripcion, @valor)", conexion)
            cmdSR.Transaction = transaccion

            Dim tipo As String = "reintegro"

            For Each row As GridViewRow In GridView1.Rows
                comando.Parameters.Clear()
                comando.Parameters.AddWithValue("@id_material", row.Cells(0).Text)
                comando.Parameters.AddWithValue("@id_reintegro", id_reintegro)
                comando.Parameters.AddWithValue("@ubicacion", row.Cells(2).Text)
                comando.Parameters.AddWithValue("@cantidad", row.Cells(3).Text)
                comando.Parameters.AddWithValue("@costo", row.Cells(4).Text)
                comando.ExecuteNonQuery()

                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@existencia", row.Cells(3).Text)
                cmd.Parameters.AddWithValue("@id_material", row.Cells(0).Text)
                cmd.ExecuteNonQuery()

                cmdSR.Parameters.Clear()
                cmdSR.Parameters.AddWithValue("@fecha", txtFecha.Text)
                cmdSR.Parameters.AddWithValue("@id_empleado", txtId_empleado.Text)
                cmdSR.Parameters.AddWithValue("@id_material", row.Cells(0).Text)
                cmdSR.Parameters.AddWithValue("@descripcion", row.Cells(1).Text)
                cmdSR.Parameters.AddWithValue("@salida", 0)
                cmdSR.Parameters.AddWithValue("@reintegro", row.Cells(3).Text)
                cmdSR.Parameters.AddWithValue("@valor", 0)
                cmdSR.ExecuteNonQuery()
            Next

            transaccion.Commit()
            lblMensaje.Text = "Devolucion guardada con exito "
            lblMensaje.ForeColor = Drawing.Color.Green

            txtReintegro.Text = String.Empty
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
            txtReintegro.Focus()
        Catch ex As Exception
            transaccion.Rollback()
            lblMensaje.Text = ex.Message
            lblMensaje.ForeColor = Drawing.Color.Red
        End Try

        conexion.Close()

        GridView2.DataBind()
    End Sub

    Protected Sub btnNueva_Click(sender As Object, e As EventArgs) Handles btnNueva.Click
        txtReintegro.Text = String.Empty
        txtNotas.Text = String.Empty

        lblMensaje.Text = "Reintegro de materiales"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtCantidad.Text = String.Empty
        txtCosto.Text = String.Empty

        txtReintegro.Focus()
    End Sub

End Class