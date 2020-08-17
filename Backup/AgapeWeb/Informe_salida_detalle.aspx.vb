Imports System.Data
Imports System.Data.SqlClient

Public Class Informe_salida_detalle
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
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, emp.apellidos, emp.nombres, emp.usuario, s.fecha, s.hora, s.entrega, ms.cantidad, ms.precio, ms.cantidad * ms.precio AS total FROM salida AS s INNER JOIN empleado AS emp ON s.id_empleado = emp.id INNER JOIN material_salida AS ms ON s.id = ms.id_salida INNER JOIN material AS m ON ms.id_material = m.id ORDER BY s.fecha DESC, emp.usuario, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView1.DataSource = datos.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub btnVer_Click(sender As Object, e As EventArgs) Handles btnVer.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, emp.apellidos, emp.nombres, emp.usuario, s.fecha, s.hora, s.entrega, ms.cantidad, ms.precio, ms.cantidad * ms.precio AS total FROM salida AS s INNER JOIN empleado AS emp ON s.id_empleado = emp.id INNER JOIN material_salida AS ms ON s.id = ms.id_salida INNER JOIN material AS m ON ms.id_material = m.id WHERE s.fecha BETWEEN '" + txtDesde.Text + "' AND '" + txtHasta.Text + "' ORDER BY s.fecha DESC, emp.usuario, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView1.DataSource = datos.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub btnVerTodo_Click(sender As Object, e As EventArgs) Handles btnVerTodo.Click
        cargarDatos()
    End Sub
End Class