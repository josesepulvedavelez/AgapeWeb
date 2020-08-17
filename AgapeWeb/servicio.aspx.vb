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
            tabla.Columns.Add("notas")
            tabla.Columns.Add("estado")
            tabla.Columns.Add("id_equipo")

            GridServicio.DataSource = tabla
            GridServicio.DataBind()

            Session("datos") = tabla
        End If
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridEquipo.SelectedIndexChanged
        REM txtId_equipo.Text = GridView2.SelectedValue
    End Sub

    Protected Sub btnProgramar_Click(sender As Object, e As EventArgs) Handles btnProgramar.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        Dim fecha As Date = txtFecha.Text
        Dim año As Integer = Year(fecha)

        If ddlFrecuencia.Text = "MENSUAL" Then
            For i As Integer = 0 To 11 Step 1
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

                GridServicio.DataSource = tabla
                GridServicio.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "BIMENSUAL" Then
            For i As Integer = 0 To 11 Step 2
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

                GridServicio.DataSource = tabla
                GridServicio.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "TRIMESTRAL" Then
            For i As Integer = 0 To 11 Step 3
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

                GridServicio.DataSource = tabla
                GridServicio.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "SEMESTRAL" Then
            For i As Integer = 0 To 11 Step 6
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

                GridServicio.DataSource = tabla
                GridServicio.DataBind()

                Session("datos") = tabla
            Next
        ElseIf ddlFrecuencia.Text = "ANUAL" Then
            For i As Integer = 0 To 11 Step 12
                tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, DateAdd(DateInterval.Month, i, fecha), txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

                GridServicio.DataSource = tabla
                GridServicio.DataBind()

                Session("datos") = tabla
            Next

        ElseIf ddlFrecuencia.Text = "UNICO" Then

            tabla.Rows.Add(txtFecha_prog.Text, ddlFrecuencia.SelectedItem, txtFecha.Text, txtHora.Text, ddlTpo_mantenimiento.Text, txtNotas.Text, ddlEstado.Text, GridEquipo.SelectedValue)

            GridServicio.DataSource = tabla
            GridServicio.DataBind()

            Session("datos") = tabla

        End If

        lblMensaje.Text = "Programacion de equipo " & " " & año.ToString()
        lblMensaje.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub btnQuitar_ultima_Click(sender As Object, e As EventArgs) Handles btnQuitar_ultima.Click
        Try
            Dim tabla As New DataTable()
            tabla = DirectCast(Session("datos"), DataTable)

            tabla.Rows.RemoveAt(tabla.Rows.Count - 1)

            GridServicio.DataSource = tabla
            GridServicio.DataBind()
        Catch ex As IndexOutOfRangeException
            lblMensaje.Text = "No exite programacion"
            lblMensaje.ForeColor = Drawing.Color.Red
        End Try
    End Sub

    Protected Sub btnQuitar_todas_Click(sender As Object, e As EventArgs) Handles btnQuitar_todas.Click
        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        For i As Integer = GridServicio.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        GridServicio.DataSource = tabla
        GridServicio.DataBind()
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        conexion = New SqlConnection(ConexionDB.conectar)
        conexion.Open()

        comando = New SqlCommand("INSERT INTO servicio(fecha_prog, frecuencia, fecha, hora, tipo, notas, estado, id_equipo) VALUES(@fecha_prog, @frecuencia, @fecha, @hora, @tipo, @notas, @estado, @id_equipo)", conexion)

        For Each row As GridViewRow In GridServicio.Rows
            comando.Parameters.Clear()
            comando.Parameters.AddWithValue("@fecha_prog", CDate(row.Cells(0).Text))
            comando.Parameters.AddWithValue("@frecuencia", row.Cells(1).Text)
            comando.Parameters.AddWithValue("@fecha", row.Cells(2).Text)
            comando.Parameters.AddWithValue("@hora", row.Cells(3).Text)
            comando.Parameters.AddWithValue("@tipo", row.Cells(4).Text)
            comando.Parameters.AddWithValue("@notas", row.Cells(5).Text)
            comando.Parameters.AddWithValue("@estado", row.Cells(6).Text)
            comando.Parameters.AddWithValue("@id_equipo", row.Cells(7).Text)
            comando.ExecuteNonQuery()
        Next

        lblMensaje.Text = "Programacion guardada con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        conexion.Close()

        txtFecha.Text = String.Empty
        txtHora.Text = String.Empty
        'txtId_equipo.Text = String.Empty
        txtNotas.Text = "NINGUNA"

        Dim tabla As New DataTable()
        tabla = DirectCast(Session("datos"), DataTable)

        For i As Integer = GridServicio.Rows.Count - 1 To 0 Step -1
            tabla.Rows.RemoveAt(i)
        Next

        GridServicio.DataSource = tabla
        GridServicio.DataBind()

    End Sub

    Protected Sub ddlFrecuencia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlFrecuencia.SelectedIndexChanged
        ddlTpo_mantenimiento.Items.Clear()
        If ddlFrecuencia.Text = "UNICO" Then
            ddlTpo_mantenimiento.Items.Add("CORRECTIVO")
            ddlTpo_mantenimiento.Items.Add("MONTAJE")
        Else
            ddlTpo_mantenimiento.Items.Add("PREVENTIVO")
        End If
    End Sub
End Class