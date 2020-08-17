Imports System.Data
Imports System.Data.SqlClient

Public Class Programacion_frecuencia
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim comando As SqlCommand
    Dim tabla As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            tabla.Columns.Add("fecha_prog")
            tabla.Columns.Add("frecuencia")
            tabla.Columns.Add("fecha")
            tabla.Columns.Add("hora")
            tabla.Columns.Add("tipo")
            tabla.Columns.Add("id_equipo")
            tabla.Columns.Add("notas")

            GridView3.DataSource = tabla
            GridView3.DataBind()

            Session("datos") = tabla
        End If
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        REM txtId_equipo.Text = GridView2.SelectedValue
    End Sub

    Protected Sub btnProgramar_Click(sender As Object, e As EventArgs) Handles btnProgramar.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        Dim fecha As Date = txtFecha.Text
        Dim año As Integer = Year(fecha)

        If ddlFrecuencia.Text = "MENSUAL" Then
            For i As Integer = 0 To 11 Step 1
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, GridView2.SelectedValue, txtNotas.Text)

                GridView3.DataSource = tabla
                GridView3.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "BIMENSUAL" Then
            For i As Integer = 0 To 11 Step 2
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, GridView2.SelectedValue, txtNotas.Text)

                GridView3.DataSource = tabla
                GridView3.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "TRIMESTRAL" Then
            For i As Integer = 0 To 11 Step 3
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, GridView2.SelectedValue, txtNotas.Text)

                GridView3.DataSource = tabla
                GridView3.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "SEMESTRAL" Then
            For i As Integer = 0 To 11 Step 6
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, GridView2.SelectedValue, txtNotas.Text)

                GridView3.DataSource = tabla
                GridView3.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "ANUAL" Then
            For i As Integer = 0 To 11 Step 12
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, GridView2.SelectedValue, txtNotas.Text)

                GridView3.DataSource = tabla
                GridView3.DataBind()

                Session("datos") = tabla
            Next
        End If

        lblMensaje.Text = "Programacion de equipo " & " " & año.ToString()
        lblMensaje.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub btnQuitar_ultima_Click(sender As Object, e As EventArgs) Handles btnQuitar_ultima.Click
        Try
            Dim tabla As New DataTable()
            tabla = DirectCast(Session("datos"), DataTable)

            tabla.Rows.RemoveAt(tabla.Rows.Count - 1)

            GridView3.DataSource = tabla
            GridView3.DataBind()
        Catch ex As IndexOutOfRangeException
            lblMensaje.Text = "No exite programacion"
            lblMensaje.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Protected Sub btnQuitar_todas_Click(sender As Object, e As EventArgs) Handles btnQuitar_todas.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        For i As Integer = GridView3.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        GridView3.DataSource = tabla
        GridView3.DataBind()
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        conexion = New SqlConnection(ConexionDB.conectar)
        conexion.Open()

        comando = New SqlCommand("INSERT INTO frecuencia(fecha_prog, frecuencia, fecha, hora, tipo, id_equipo, notas) VALUES(@fecha_prog, @frecuencia, @fecha, @hora, @tipo, @id_equipo, @notas)", conexion)

        For Each row As GridViewRow In GridView3.Rows
            comando.Parameters.Clear()
            comando.Parameters.AddWithValue("@fecha_prog", row.Cells(0).Text)
            comando.Parameters.AddWithValue("@frecuencia", row.Cells(1).Text)
            comando.Parameters.AddWithValue("@fecha", row.Cells(2).Text)
            comando.Parameters.AddWithValue("@hora", row.Cells(3).Text)
            comando.Parameters.AddWithValue("@tipo", row.Cells(4).Text)
            comando.Parameters.AddWithValue("@id_equipo", row.Cells(5).Text)
            comando.Parameters.AddWithValue("@notas", row.Cells(6).Text)
            comando.ExecuteNonQuery()
        Next

        lblMensaje.Text = "Programacion guardada con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        conexion.Close()

        txtFecha.Text = String.Empty
        txtHora.Text = String.Empty
        txtId_equipo.Text = String.Empty
        txtNotas.Text = "NINGUNA"

        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        For i As Integer = GridView3.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        GridView3.DataSource = tabla
        GridView3.DataBind()
    End Sub

End Class