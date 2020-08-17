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
        adaptador = New SqlDataAdapter("select f.fecha_prog, f.fecha, nombre, direccion, tels_contacto, localizacion, codigo, marca, modelo, serie, capacidad, hora, f.tipo, DATEDIFF(day, fecha_prog, f.fecha) as total_dias, DATEDIFF(day, f.fecha_prog, GETDATE()) as dias_pasados, CONVERT( decimal(15,2),round(((cast(DATEDIFF(day, f.fecha_prog, GETDATE()) as decimal) / cast(DATEDIFF(day, fecha_prog, f.fecha) as decimal))*100),2)) as porc from cliente c, equipo e, frecuencia f where c.id=e.id_cliente and e.id=f.id_equipo order by f.fecha DESC, nombre;", conexion)
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
        adaptador = New SqlDataAdapter("select f.fecha_prog, f.fecha, nombre, direccion, tels_contacto, localizacion, codigo, marca, modelo, serie, capacidad, hora, f.tipo, DATEDIFF(day, fecha_prog, f.fecha) as total_dias, DATEDIFF(day, f.fecha_prog, GETDATE()) as dias_pasados, CONVERT( decimal(15,2),round(((cast(DATEDIFF(day, f.fecha_prog, GETDATE()) as decimal) / cast(DATEDIFF(day, fecha_prog, f.fecha) as decimal))*100),2)) as porc from cliente c, equipo e, frecuencia f where c.id=e.id_cliente and e.id=f.id_equipo and f.fecha between '" + txtDesde.Text + "' and '" + txtHasta.Text + "' order by f.fecha DESC, nombre;", conexion)
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