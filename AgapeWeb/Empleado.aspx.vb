Public Class Empleado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        If txtIdentificacion.Text = "" Or txtApellidos.Text = "" Or txtNombres.Text = "" Or txtUsuario.Text = "" Then
            lblMensaje.Text = "Escriba la identificacion, apellidos, nombres y usuario"
            lblMensaje.ForeColor = Drawing.Color.Red
        Else
            SqlDataSource2.InsertParameters("identificacion").DefaultValue = txtIdentificacion.Text
            SqlDataSource2.InsertParameters("apellidos").DefaultValue = txtApellidos.Text
            SqlDataSource2.InsertParameters("nombres").DefaultValue = txtNombres.Text
            SqlDataSource2.InsertParameters("cargo").DefaultValue = ddlCargo.Text
            SqlDataSource2.InsertParameters("usuario").DefaultValue = txtUsuario.Text
            SqlDataSource2.InsertParameters("contraseña").DefaultValue = txtContraseña.Text
            SqlDataSource2.InsertParameters("fecha_nacimiento").DefaultValue = txtNacimiento.Text
            SqlDataSource2.InsertParameters("direccion").DefaultValue = txtDireccion.Text
            SqlDataSource2.InsertParameters("telefono").DefaultValue = txtTelefono.Text
            SqlDataSource2.InsertParameters("celular").DefaultValue = txtCelular.Text
            SqlDataSource2.InsertParameters("salario").DefaultValue = txtSalario.Text
            SqlDataSource2.InsertParameters("tipo_contrato").DefaultValue = ddlTipo_contrato.Text
            SqlDataSource2.InsertParameters("notas").DefaultValue = txtNotas.Text

            SqlDataSource2.Insert()

            lblMensaje.Text = "Empleado guardado con exito"
            lblMensaje.ForeColor = Drawing.Color.Green
            GridView1.DataBind()

            txtIdentificacion.Text = String.Empty
            txtApellidos.Text = String.Empty
            txtNombres.Text = String.Empty
            txtUsuario.Text = String.Empty
            txtContraseña.Text = String.Empty
            txtNacimiento.Text = String.Empty
            txtDireccion.Text = String.Empty
            txtTelefono.Text = String.Empty
            txtCelular.Text = String.Empty
            txtSalario.Text = 0
            txtNotas.Text = "NINGUNA"

            txtIdentificacion.Focus()
        End If
    End Sub

    Protected Sub txtNuevo_Click(sender As Object, e As EventArgs) Handles txtNuevo.Click
        txtIdentificacion.Text = String.Empty
        txtApellidos.Text = String.Empty
        txtNombres.Text = String.Empty
        txtUsuario.Text = String.Empty
        txtContraseña.Text = String.Empty
        txtNacimiento.Text = String.Empty
        txtDireccion.Text = String.Empty
        txtTelefono.Text = String.Empty
        txtCelular.Text = String.Empty
        txtSalario.Text = 0
        txtNotas.Text = "NINGUNA"

        lblMensaje.Text = "Lista de empleados"
        lblMensaje.ForeColor = Drawing.Color.Black

        txtIdentificacion.Focus()
    End Sub

    Protected Sub SqlDataSource1_Selected(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Selected
        lblMensaje.Text = "Lista de empleados: " + e.AffectedRows.ToString
    End Sub
End Class