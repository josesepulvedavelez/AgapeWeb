Public Class Orden_empleado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView4_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView4.SelectedIndexChanged
        txtCapacidad.Text = GridView4.SelectedRow.Cells(4).Text
    End Sub
End Class