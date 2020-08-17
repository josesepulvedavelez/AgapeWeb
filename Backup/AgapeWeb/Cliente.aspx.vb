Public Class Cliente
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        SqlDataSource2.InsertParameters("nit").DefaultValue = txtNit.Text
        SqlDataSource2.InsertParameters("nombre").DefaultValue = txtNombre.Text
        SqlDataSource2.InsertParameters("prefijo").DefaultValue = txtPrefijo.Text
        SqlDataSource2.InsertParameters("direccion").DefaultValue = txtDireccion.Text
        SqlDataSource2.InsertParameters("usuario").DefaultValue = txtUsuario.Text
        SqlDataSource2.InsertParameters("contraseña").DefaultValue = txtContraseña.Text
        SqlDataSource2.InsertParameters("telefonos").DefaultValue = txtTelefonos.Text
        SqlDataSource2.InsertParameters("contacto").DefaultValue = txtContacto.Text
        SqlDataSource2.InsertParameters("tels_contacto").DefaultValue = txtTelefonos_contacto.Text
        SqlDataSource2.InsertParameters("web").DefaultValue = txtWeb.Text
        SqlDataSource2.InsertParameters("email").DefaultValue = txtEmail.Text
        SqlDataSource2.InsertParameters("notas").DefaultValue = txtNotas.Text

        SqlDataSource2.Insert()

        lblMensaje.Text = "Cliente Guardado con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        GridView1.DataBind()

        txtNit.Text = String.Empty
        txtNombre.Text = String.Empty
        txtPrefijo.Text = String.Empty
        txtDireccion.Text = String.Empty
        txtUsuario.Text = String.Empty
        txtContraseña.Text = String.Empty
        txtTelefonos.Text = String.Empty
        txtContacto.Text = String.Empty
        txtTelefonos_contacto.Text = String.Empty
        txtWeb.Text = "http://"
        txtEmail.Text = String.Empty
        txtNotas.Text = "NINGUNA"

        txtNit.Focus()
    End Sub

    Protected Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        txtNit.Text = String.Empty
        txtNombre.Text = String.Empty
        txtPrefijo.Text = String.Empty
        txtDireccion.Text = String.Empty
        txtUsuario.Text = String.Empty
        txtContraseña.Text = String.Empty
        txtTelefonos.Text = String.Empty
        txtContacto.Text = String.Empty
        txtTelefonos_contacto.Text = String.Empty
        txtWeb.Text = String.Empty
        txtEmail.Text = String.Empty
        txtNotas.Text = String.Empty

        lblMensaje.Text = "Lista de Clientes"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtNit.Focus()
    End Sub

    Protected Sub SqlDataSource1_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Selected
        lblMensaje.Text = "Lista de clientes: " + e.AffectedRows.ToString
    End Sub
End Class