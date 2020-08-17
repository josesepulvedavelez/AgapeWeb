Public Class Principal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblUsuario.Text = "Usuario: " & Session("usuario")
        lblFecha.Text = DateTime.Now.Date.Date
        REM lblHora.Text = DateAndTime.TimeString

        Timer1.Enabled = True
        Timer1.Interval = 1
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lblHora.Text = DateTime.Now.ToString("HH:mm:ss")
    End Sub
End Class