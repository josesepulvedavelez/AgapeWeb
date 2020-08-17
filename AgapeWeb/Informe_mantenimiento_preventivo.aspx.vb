Imports System.Data
Imports System.Data.SqlClient

Public Class Informe_mantenimiento_preventivo
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cargarDatos()
        End If
    End Sub

    Protected Sub cargarDatos()
        conexion = New SqlConnection(ConexionDB.conectar())
        adaptador = New SqlDataAdapter("select s.fecha, nombre as cliente, localizacion, codigo, marca, modelo, serie, capacidad, hora, s.tipo, estado from cliente c, equipo e, servicio s where c.id=e.id_cliente and e.id=s.id_equipo AND s.tipo = 'PREVENTIVO' AND  estado = 'ABIERTA' order by s.fecha DESC, nombre;", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView2.DataSource = datos.Tables(0)
        GridView2.DataBind()
    End Sub

    Protected Sub btnVer_Click(sender As Object, e As EventArgs) Handles btnVer.Click
        conexion = New SqlConnection(ConexionDB.conectar())
        Dim q As String = ""
        adaptador = New SqlDataAdapter("select s.fecha, nombre as cliente, localizacion, codigo, marca, modelo, serie, capacidad, hora, s.tipo, estado from cliente c, equipo e, servicio s where c.id=e.id_cliente and e.id=s.id_equipo AND s.tipo = 'PREVENTIVO' AND  estado = 'ABIERTA' and s.fecha between '" + txtDesde.Text + "' and '" + txtHasta.Text + "' order by s.fecha DESC, nombre;", conexion)
        datos = New DataSet()

        conexion.Open()
        adaptador.Fill(datos)
        conexion.Close()

        GridView2.DataSource = datos.Tables(0)
        GridView2.DataBind()
    End Sub

    Protected Sub btnVerTodo_Click(sender As Object, e As EventArgs) Handles btnVerTodo.Click
        cargarDatos()
    End Sub

    Protected Sub GridView2_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView2.RowDataBound
        'If e.Row.RowType = DataControlRowType.DataRow Then

        '    Dim fecha As DateTime = DataBinder.Eval(e.Row.DataItem, "fecha").ToString()

        '    If fecha.Month <= DateTime.Now.Date.Month Then
        '        e.Row.BackColor = System.Drawing.Color.OrangeRed
        '    End If

        'End If
    End Sub

End Class