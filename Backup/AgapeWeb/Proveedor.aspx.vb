Imports System.Data
Imports System.Data.SqlClient

Public Class Proveedor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        SqlDataSource2.InsertParameters("nit").DefaultValue = txtNit.Text
        SqlDataSource2.InsertParameters("nombre").DefaultValue = txtNombre.Text
        SqlDataSource2.InsertParameters("direccion").DefaultValue = txtDireccion.Text
        SqlDataSource2.InsertParameters("telefonos").DefaultValue = txtTelefonos.Text
        SqlDataSource2.InsertParameters("contacto").DefaultValue = txtContacto.Text
        SqlDataSource2.InsertParameters("telefonos_contacto").DefaultValue = txtTelefonos_contacto.Text
        SqlDataSource2.InsertParameters("web").DefaultValue = txtWeb.Text
        SqlDataSource2.InsertParameters("email").DefaultValue = txtEmail.Text
        SqlDataSource2.InsertParameters("notas").DefaultValue = txtNotas.Text

        SqlDataSource2.Insert()

        lblMensaje.Text = "Proveedor Guardado con exito"
        lblMensaje.ForeColor = Drawing.Color.Green
        GridView1.DataBind()

        txtNit.Text = String.Empty
        txtNombre.Text = String.Empty
        txtDireccion.Text = String.Empty
        txtTelefonos.Text = String.Empty
        txtContacto.Text = String.Empty
        txtTelefonos_contacto.Text = String.Empty
        txtWeb.Text = "http://"
        txtEmail.Text = String.Empty
        txtNotas.Text = "NINGUNA"

        txtNit.Focus()
    End Sub

    Protected Sub txtNuevo_Click(sender As Object, e As EventArgs) Handles txtNuevo.Click
        txtNit.Text = String.Empty
        txtNombre.Text = String.Empty
        txtDireccion.Text = String.Empty
        txtTelefonos.Text = String.Empty
        txtContacto.Text = String.Empty
        txtTelefonos_contacto.Text = String.Empty
        txtWeb.Text = "http://"
        txtEmail.Text = String.Empty
        txtNotas.Text = "NINGUNA"

        lblMensaje.Text = "Lista de proveedores"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtNit.Focus()
    End Sub

    Protected Sub SqlDataSource1_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Selected
        lblMensaje.Text = "Lista de proveedores: " + e.AffectedRows.ToString
    End Sub
End Class