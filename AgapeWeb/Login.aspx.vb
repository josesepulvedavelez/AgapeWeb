Imports System.Data
Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Dim conexion As SqlConnection
    Dim adaptador As SqlDataAdapter
    Dim comando As SqlCommand
    Dim datos As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnInicioSesion_Click(sender As Object, e As EventArgs) Handles btnInicioSesion.Click
        'Dim numero As Integer
        'Dim dvSQl As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)

        'Try
        '    If dvSQl.Count > 0 Then
        '        numero = 1
        '    End If

        '    If numero = 1 Then
        '        Session("usuario") = dvSQl(0).Item(0)
        '        Response.Redirect("Principal.aspx")
        '    Else
        '        Response.Redirect("Login.aspx")
        '    End If
        'Catch ex As NullReferenceException

        'End Try

        conexion = New SqlConnection(ConexionDB.conectar())
        conexion.Open()
        comando = conexion.CreateCommand()
        comando.CommandText = "select count(*) from empleado where usuario='" + txtUsuario.Text + "' and contraseña='" + txtContraseña.Text + "' "

        Dim i As Integer
        i = comando.ExecuteScalar()
        conexion.Close()

        If i = 0 Then
            lblMensaje.Text = "Datos incorrectos"
            lblMensaje.ForeColor = Drawing.Color.Red
        Else
            Session("usuario") = txtUsuario.Text
            Response.Redirect("Principal.aspx")
        End If
    End Sub
End Class