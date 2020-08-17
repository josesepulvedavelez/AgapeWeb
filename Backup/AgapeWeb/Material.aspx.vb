Public Class Material
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        SqlDataSource2.InsertParameters("codigo").DefaultValue = txtCodigo.Text
        SqlDataSource2.InsertParameters("descripcion").DefaultValue = txtDescripcion.Text
        SqlDataSource2.InsertParameters("medida").DefaultValue = ddlMedida.SelectedItem.ToString()
        SqlDataSource2.InsertParameters("existencia").DefaultValue = txtExistencia.Text
        SqlDataSource2.InsertParameters("tipo").DefaultValue = ddlTipo.Text
        SqlDataSource2.InsertParameters("notas").DefaultValue = txtNotas.Text

        SqlDataSource2.Insert()

        lblMensaje.Text = "Material Guardado con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        GridView1.DataBind()

        txtCodigo.Text = String.Empty
        txtDescripcion.Text = String.Empty
        txtExistencia.Text = 0
        txtNotas.Text = "NINGUNA"

        txtCodigo.Focus()
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtCodigo.Text = String.Empty
        txtDescripcion.Text = String.Empty
        txtExistencia.Text = 0
        txtNotas.Text = "NINGUNA"

        lblMensaje.Text = "Lista de materiales"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtCodigo.Focus()
    End Sub

    Protected Sub SqlDataSource1_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Selected
        lblMensaje.Text = "Lista de materiales: " + e.AffectedRows.ToString
    End Sub
End Class