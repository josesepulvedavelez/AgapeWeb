<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empleado.aspx.vb" Inherits="AgapeWeb.Empleado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">




        .style1
        {
            width: 100%;
        }
        .style9
        {
        }
        .style2
        {
            width: 202px;
        }
        .style4
        {
            width: 145px;
            height: 131px;
            text-align: center;
        }
        .style3
        {
            width: 784px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" rowspan="4" align=center>
                    <img alt="" class="style4" src="img/logo_irm.png" /></td>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>Agape</strong></td>
                <td rowspan="4" align="center">
                    <img alt="" class="style4" 
                        src="img/Logo%20opcion%20t.png" /></td>
            </tr>
            <tr>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>IRM</strong></td>
            </tr>
            <tr>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>INGENIERÍA DE MANTENIMIENTO INDUSTRIAL</strong></td>
            </tr>
            <tr>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    &nbsp;</td>
            </tr>
            <tr>
             <td class="style2"></td>
             <td class="style9">
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
                        BackColor="#F7F6F3" BorderColor="Black" DynamicHorizontalOffset="2" 
                        Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" 
                        StaticSubMenuIndent="10px" style="text-align: justify">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Principal.aspx" Text="Principal" Value="Principal">
                            </asp:MenuItem>
                            <asp:MenuItem Text="Configuracion" Value="Nuevo elemento">
                                <asp:MenuItem NavigateUrl="~/Proveedor.aspx" Text="Proveedor" Value="Proveedor">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Material" Value="Material" NavigateUrl="~/Material.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Empleado" Value="Empleado" NavigateUrl="~/Empleado.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Almacen" Value="Nuevo elemento">
                                <asp:MenuItem Text="Entrada" Value="Entrada" 
                                    NavigateUrl="~/Material_entrada.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Salida" Value="Salida" NavigateUrl="~/Material_salida.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Reintegro" Value="Reintegro" 
                                    NavigateUrl="~/Material_reintegro.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Mantenimiento" Value="Nuevo elemento">
                                <asp:MenuItem Text="Cliente" Value="Cliente" NavigateUrl="~/Cliente.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Equipo" Value="Equipo" NavigateUrl="~/Equipo.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Programacion frecuencia" Value="Programacion frecuencia" 
                                    NavigateUrl="~/Programacion_frecuencia.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Informe Almacen" Value="Informe Almacen">
                                <asp:MenuItem Text="Entrada" Value="Entrada">
                                    <asp:MenuItem NavigateUrl="~/Informe_Entrada_detalle.aspx" Text="Detalle" 
                                        Value="Detalle"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_entrada_resumen.aspx" Text="Resumen" 
                                        Value="Resumen"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_entrada_proveedor.aspx" 
                                        Text="Entrada x Proveedor" Value="Entrada x Proveedor"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Salida" Value="Salida">
                                    <asp:MenuItem NavigateUrl="~/Informe_salida_detalle.aspx" Text="Detalle" 
                                        Value="Detalle"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_salida_resumen.aspx" Text="Resumen" 
                                        Value="Resumen"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Reintegro" Value="Reintegro">
                                    <asp:MenuItem NavigateUrl="~/Informe_reintegro_detalle.aspx" Text="Detalle" 
                                        Value="Detalle"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_reintegro_resumen.aspx" Text="Resumen" 
                                        Value="Resumen"></asp:MenuItem>
                                </asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Informe Mantenimiento" Value="Informe Mantenimiento">
                                <asp:MenuItem Text="Frecuencia" Value="Frecuencia"></asp:MenuItem>
                                <asp:MenuItem Text="Preventivo" Value="Preventivo"></asp:MenuItem>
                                <asp:MenuItem Text="Correctivo" Value="Correctivo"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
             <td></td>
            </tr>
        </table>
    
        <br />
        <table>
            <tr>
                <td>
                    Identificacion</td>
                <td>
                    <asp:TextBox ID="txtIdentificacion" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Usuario</td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Tels</td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Apellidos</td>
                <td>
                    <asp:TextBox ID="txtApellidos" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Contraseña</td>
                <td>
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;</td>
                <td>
                    Cel</td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Nombres</td>
                <td>
                    <asp:TextBox ID="txtNombres" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Nacimiento</td>
                <td>
                    <asp:TextBox ID="txtNacimiento" runat="server" TextMode="Date" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Salario</td>
                <td>
                    <asp:TextBox ID="txtSalario" runat="server" required>0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Cargo</td>
                <td>
                    <asp:DropDownList ID="ddlCargo" runat="server">
                        <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                        <asp:ListItem>TECNICO</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;</td>
                <td>
                    Direccion</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Contrato</td>
                <td>
                    <asp:DropDownList ID="ddlTipo_contrato" runat="server" Height="16px" 
                        Width="128px">
                        <asp:ListItem>INDEFINIDO</asp:ListItem>
                        <asp:ListItem>P SERVICIOS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            
            </table>
            <table>
             <tr>
                <td>
                    <asp:Button ID="txtNuevo" runat="server" Text="Nuevo" Width="68px" />
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de Empleados"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            ForeColor="Black">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="identificacion" HeaderText="identificacion" 
                    SortExpression="identificacion" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                    SortExpression="apellidos" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" 
                    SortExpression="nombres" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" 
                    SortExpression="usuario" />
                <asp:BoundField DataField="contraseña" HeaderText="contraseña" 
                    SortExpression="contraseña" Visible="False" />
                <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                <asp:BoundField DataField="fecha_nacimiento" HeaderText="fecha_nacimiento" 
                    SortExpression="fecha_nacimiento" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" 
                    SortExpression="direccion" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" 
                    SortExpression="telefono" />
                <asp:BoundField DataField="celular" HeaderText="celular" 
                    SortExpression="celular" />
                <asp:BoundField DataField="salario" HeaderText="salario" 
                    SortExpression="salario" />
                <asp:BoundField DataField="tipo_contrato" HeaderText="tipo_contrato" 
                    SortExpression="tipo_contrato" />
                <asp:BoundField DataField="notas" HeaderText="notas" SortExpression="notas" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            DeleteCommand="DELETE FROM [empleado] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [empleado] ([identificacion], [apellidos], [nombres], [usuario], [contraseña], [cargo], [fecha_nacimiento], [direccion], [telefono], [celular], [salario], [tipo_contrato], [notas]) VALUES (@identificacion, @apellidos, @nombres, @usuario, @contraseña, @cargo, @fecha_nacimiento, @direccion, @telefono, @celular, @salario, @tipo_contrato, @notas)" 
            SelectCommand="SELECT * FROM [empleado] ORDER BY [usuario]" 
            
            UpdateCommand="UPDATE [empleado] SET [identificacion] = @identificacion, [apellidos] = @apellidos, [nombres] = @nombres, [usuario] = @usuario, [contraseña] = @contraseña, [cargo] = @cargo, [fecha_nacimiento] = @fecha_nacimiento, [direccion] = @direccion, [telefono] = @telefono, [celular] = @celular, [salario] = @salario, [tipo_contrato] = @tipo_contrato, [notas] = @notas WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="identificacion" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="contraseña" Type="String" />
                <asp:Parameter Name="cargo" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha_nacimiento" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="celular" Type="String" />
                <asp:Parameter Name="salario" Type="Decimal" />
                <asp:Parameter Name="tipo_contrato" Type="String" />
                <asp:Parameter Name="notas" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="identificacion" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="contraseña" Type="String" />
                <asp:Parameter Name="cargo" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha_nacimiento" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="celular" Type="String" />
                <asp:Parameter Name="salario" Type="Decimal" />
                <asp:Parameter Name="tipo_contrato" Type="String" />
                <asp:Parameter Name="notas" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            InsertCommand="insert into empleado(identificacion, apellidos, nombres, usuario, contraseña, cargo, fecha_nacimiento, direccion, telefono, celular, salario, tipo_contrato, notas) values(@identificacion, @apellidos, @nombres, @usuario, @contraseña, @cargo, @fecha_nacimiento, @direccion, @telefono, @celular, @salario, @tipo_contrato, @notas)" 
            ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtIdentificacion" Name="identificacion" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtApellidos" Name="apellidos" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNombres" Name="nombres" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtUsuario" Name="usuario" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtContraseña" Name="contraseña" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlCargo" Name="cargo" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtNacimiento" Name="fecha_nacimiento" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDireccion" Name="direccion" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTelefono" Name="telefono" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCelular" Name="celular" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSalario" Name="salario" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlTipo_contrato" Name="tipo_contrato" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtNotas" Name="notas" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
