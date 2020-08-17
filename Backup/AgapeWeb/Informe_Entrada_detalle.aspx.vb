Imports System.Data
Imports System.Data.SqlClient

Public Class Informe_Entrada_detalle
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtDesde.Text = DateTime.Now.Date.Date
            cargarDatos()
        End If
    End Sub

    Protected Sub cargarDatos()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, p.nit, p.nombre, emp.usuario, e.fecha, e.hora, e.factura, me.cantidad, me.costo, me.cantidad * me.costo AS total, me.utilidad, me.costo + me.costo * (me.utilidad / 100) AS sugerido FROM proveedor AS p INNER JOIN entrada AS e ON p.id = e.id_proveedor INNER JOIN material AS m INNER JOIN material_entrada AS me ON m.id = me.id_material ON e.id = me.id_entrada INNER JOIN empleado AS emp ON e.id_digitador = emp.id ORDER BY e.fecha DESC, p.nombre, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView2.DataSource = datos.Tables(0)
        GridView2.DataBind()
    End Sub

    Protected Sub btnVer_Click(sender As Object, e As EventArgs) Handles btnVer.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, p.nit, p.nombre, emp.usuario, e.fecha, e.hora, e.factura, me.cantidad, me.costo, me.cantidad * me.costo AS total, me.utilidad, me.costo + me.costo * (me.utilidad / 100) AS sugerido FROM proveedor AS p INNER JOIN entrada AS e ON p.id = e.id_proveedor INNER JOIN material AS m INNER JOIN material_entrada AS me ON m.id = me.id_material ON e.id = me.id_entrada INNER JOIN empleado AS emp ON e.id_digitador = emp.id WHERE e.fecha BETWEEN '" + txtDesde.Text + "' AND '" + txtHasta.Text + "' ORDER BY e.fecha DESC, p.nombre, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView2.DataSource = datos.Tables(0)
        GridView2.DataBind()

    End Sub

    Protected Sub btnVerTodo_Click(sender As Object, e As EventArgs) Handles btnVerTodo.Click, Me.Load
        cargarDatos()
    End Sub
End Class