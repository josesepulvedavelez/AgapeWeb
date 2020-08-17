Imports System.Data
Imports System.Data.SqlClient

Public Class Informe_reintegro_detalle
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtDesde.Text = DateTime.Now.Date.Date
            cargardatos()
        End If
    End Sub

    Protected Sub cargardatos()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, emp.apellidos, emp.nombres, emp.usuario, r.fecha, r.hora, r.devolucion, mr.cantidad, mr.costo, mr.cantidad * mr.costo AS total FROM reintegro AS r INNER JOIN empleado AS emp ON r.id_empleado = emp.id INNER JOIN material_reintegro AS mr ON r.id = mr.id_reintegro INNER JOIN material AS m ON mr.id_material = m.id ORDER BY r.fecha DESC, emp.usuario, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView1.DataSource = datos.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub btnVer_Click(sender As Object, e As EventArgs) Handles btnVer.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("SELECT m.codigo, m.descripcion, emp.apellidos, emp.nombres, emp.usuario, r.fecha, r.hora, r.devolucion, mr.cantidad, mr.costo, mr.cantidad * mr.costo AS total FROM reintegro AS r INNER JOIN empleado AS emp ON r.id_empleado = emp.id INNER JOIN material_reintegro AS mr ON r.id = mr.id_reintegro INNER JOIN material AS m ON mr.id_material = m.id WHERE r.fecha BETWEEN '" + txtDesde.Text + "' AND '" + txtHasta.Text + "' ORDER BY r.fecha DESC, emp.usuario, m.descripcion", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView1.DataSource = datos.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub btnVerTodo_Click(sender As Object, e As EventArgs) Handles btnVerTodo.Click
        cargardatos()
    End Sub
End Class