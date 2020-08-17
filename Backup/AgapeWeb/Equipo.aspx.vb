Public Class Equipo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        SqlDataSource3.InsertParameters("fecha").DefaultValue = txtFecha_creacion.Text
        SqlDataSource3.InsertParameters("codigo").DefaultValue = txtCodigo.Text
        SqlDataSource3.InsertParameters("marca").DefaultValue = txtMarca.Text
        SqlDataSource3.InsertParameters("modelo").DefaultValue = txtModelo.Text
        SqlDataSource3.InsertParameters("serie").DefaultValue = txtSerie.Text
        SqlDataSource3.InsertParameters("capacidad").DefaultValue = txtCapacidad.Text
        SqlDataSource3.InsertParameters("tipo").DefaultValue = txtTipo_equipo.Text
        SqlDataSource3.InsertParameters("localizacion").DefaultValue = txtLocalizacion.Text
        SqlDataSource3.InsertParameters("notas").DefaultValue = txtNotas.Text
        SqlDataSource3.InsertParameters("prefijo").DefaultValue = txtPrefijo_localizacion.Text
        SqlDataSource3.InsertParameters("id_cliente").DefaultValue = ddlCliente.SelectedValue

        SqlDataSource3.Insert()

        lblMensaje.Text = "Equipo Guardado con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        GridView1.DataBind()
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        
    End Sub

    Protected Sub SqlDataSource1_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Selected
        lblMensaje.Text = "Lista de equipos: " + e.AffectedRows.ToString
    End Sub
End Class