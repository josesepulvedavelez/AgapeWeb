Public Class Orden
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        SqlDataSource4.InsertParameters("No").DefaultValue = txtNo.Text
        SqlDataSource4.InsertParameters("fecha").DefaultValue = txtFecha.Text
        SqlDataSource4.InsertParameters("hora").DefaultValue = txtHora.Text
        SqlDataSource4.InsertParameters("tipo").DefaultValue = ddlTipo.SelectedItem.ToString()
        SqlDataSource4.InsertParameters("descripcion").DefaultValue = txtDescripcion.Text
        SqlDataSource4.InsertParameters("id_equipo").DefaultValue = GridView1.SelectedValue

        SqlDataSource4.Insert()

        lblMensaje.Text = "Orden Guardada con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        GridView2.DataBind()

        txtNo.Text = String.Empty
        txtFecha.Text = String.Empty
        txtHora.Text = String.Empty
        txtDescripcion.Text = String.Empty

        txtNo.Focus()
    End Sub
End Class