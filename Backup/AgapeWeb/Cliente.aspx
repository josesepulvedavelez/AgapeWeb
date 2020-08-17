<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cliente.aspx.vb" Inherits="AgapeWeb.Cliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">





        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 267px;
        }
        .style3
        {
            width: 654px;
            text-align: center;
        }
        .style4
        {
            width: 145px;
            height: 131px;
            text-align: center;
        }
        .style9
        {
            width: 784px;
        }
        .style10
        {
            width: 331px;
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
                    Nit / CC</td>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Usuario</td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Tel Contacto</td>
                <td class="style10">
                    <asp:TextBox ID="txtTelefonos_contacto" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Nombre</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Contraseña</td>
                <td>
                    <asp:TextBox ID="txtContraseña" runat="server" required TextMode="Password"></asp:TextBox>
                &nbsp;</td>
                <td>
                    Web</td>
                <td>
                    <asp:TextBox ID="txtWeb" runat="server" TextMode="Url" Width="350px">http://</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Prefijo</td>
                <td>
                    <asp:TextBox ID="txtPrefijo" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Telefonos</td>
                <td>
                    <asp:TextBox ID="txtTelefonos" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Email</td>
                <td class="style10">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Direccion</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Contacto</td>
                <td>
                    <asp:TextBox ID="txtContacto" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Notas</td>
                <td class="style10">
                    <asp:TextBox ID="txtNotas" runat="server" Width="350px"></asp:TextBox>
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
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" Width="68px" />
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" 
                        TabIndex="7" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de Clientes"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
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
                    <asp:BoundField DataField="nit" HeaderText="nit" SortExpression="nit" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" 
                        SortExpression="nombre" />
                    <asp:BoundField DataField="prefijo" HeaderText="prefijo" 
                        SortExpression="prefijo" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" 
                        SortExpression="direccion" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" 
                        SortExpression="usuario" />
                    <asp:BoundField DataField="contraseña" HeaderText="contraseña" 
                        SortExpression="contraseña" />
                    <asp:BoundField DataField="telefonos" HeaderText="telefonos" 
                        SortExpression="telefonos" />
                    <asp:BoundField DataField="contacto" HeaderText="contacto" 
                        SortExpression="contacto" />
                    <asp:BoundField DataField="tels_contacto" HeaderText="tels_contacto" 
                        SortExpression="tels_contacto" />
                    <asp:BoundField DataField="web" HeaderText="web" SortExpression="web" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
        DeleteCommand="DELETE FROM [cliente] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [cliente] ([nit], [nombre], [prefijo], [direccion], [usuario], [contraseña], [telefonos], [contacto], [tels_contacto], [web], [email], [notas]) VALUES (@nit, @nombre, @prefijo, @direccion, @usuario, @contraseña, @telefonos, @contacto, @tels_contacto, @web, @email, @notas)" 
        SelectCommand="SELECT * FROM [cliente] ORDER BY [nombre]" 
        
        UpdateCommand="UPDATE [cliente] SET [nit] = @nit, [nombre] = @nombre, [prefijo] = @prefijo, [direccion] = @direccion, [usuario] = @usuario, [contraseña] = @contraseña, [telefonos] = @telefonos, [contacto] = @contacto, [tels_contacto] = @tels_contacto, [web] = @web, [email] = @email, [notas] = @notas WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nit" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="prefijo" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="usuario" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="telefonos" Type="String" />
            <asp:Parameter Name="contacto" Type="String" />
            <asp:Parameter Name="tels_contacto" Type="String" />
            <asp:Parameter Name="web" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="notas" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nit" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="prefijo" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="usuario" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="telefonos" Type="String" />
            <asp:Parameter Name="contacto" Type="String" />
            <asp:Parameter Name="tels_contacto" Type="String" />
            <asp:Parameter Name="web" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="notas" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" InsertCommand="insert into cliente(nit, nombre, prefijo, direccion, usuario, contraseña, telefonos, contacto, tels_contacto, web, email, notas) values(@nit, @nombre, @prefijo, @direccion, @usuario, @contraseña, @telefonos, @contacto, @tels_contacto, @web, @email, @notas)

" 
        ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>">
        <InsertParameters>
            <asp:ControlParameter ControlID="txtNit" Name="nit" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtPrefijo" Name="prefijo" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDireccion" Name="direccion" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtUsuario" Name="usuario" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtContraseña" Name="contraseña" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtTelefonos" Name="telefonos" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtContacto" Name="contacto" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtTelefonos_contacto" Name="tels_contacto" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtWeb" Name="web" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtNotas" Name="notas" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
