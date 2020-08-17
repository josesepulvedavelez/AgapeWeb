<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Material.aspx.vb" Inherits="AgapeWeb.Material" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 764px;
            text-align: center;
        }
        .style4
        {
            width: 145px;
            height: 131px;
            text-align: center;
        }
        .style10
        {
            width: 203px;
        }
        .style11
        {
            width: 764px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style10" rowspan="4" align=center>
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
             <td class="style10"></td>
             <td class="style11">
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
                    Codigo</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server" style="margin-left: 0px" required 
                        MaxLength="15"></asp:TextBox>
                &nbsp;</td>
                <td>
                    Medida</td>
                <td>
                    <asp:DropDownList ID="ddlMedida" runat="server">
                        <asp:ListItem>UND</asp:ListItem>
                        <asp:ListItem>K</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;</td>
                <td>
                    Tipo</td>
                <td>
                    <asp:DropDownList ID="ddlTipo" runat="server" Height="17px" Width="130px">
                        <asp:ListItem>MATERIAL</asp:ListItem>
                        <asp:ListItem>HERRAMIENTA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Descripcion</td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Existencia</td>
                <td>
                    <asp:TextBox ID="txtExistencia" runat="server" TextMode="Number" 
                        Enabled="False">0</asp:TextBox>
                &nbsp;</td>
                <td>
                    Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" Width="350px">NINGUNA</asp:TextBox>
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
                <td>
                    &nbsp;</td>
            </tr>
            
            </table>
            <table>
             <tr>
                <td>
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" Width="68px" />
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de Materiales"></asp:Label>
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
                <asp:BoundField DataField="codigo" HeaderText="codigo" 
                    SortExpression="codigo" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                    SortExpression="descripcion" />
                <asp:BoundField DataField="medida" HeaderText="medida" 
                    SortExpression="medida" />
                <asp:BoundField DataField="existencia" HeaderText="existencia" ReadOnly="True" 
                    SortExpression="existencia" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
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
            DeleteCommand="DELETE FROM [material] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [material] ([codigo], [descripcion], [medida], [existencia], [tipo], [notas]) VALUES (@codigo, @descripcion, @medida, @existencia, @tipo, @notas)" 
            SelectCommand="SELECT * FROM [material] ORDER BY [descripcion]" 
            
            
            UpdateCommand="UPDATE [material] SET [codigo] = @codigo, [descripcion] = @descripcion, [medida] = @medida, [existencia] = @existencia, [tipo] = @tipo, [notas] = @notas WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codigo" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="medida" Type="String" />
                <asp:Parameter Name="existencia" Type="Int32" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="notas" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="codigo" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="medida" Type="String" />
                <asp:Parameter Name="existencia" Type="Int32" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="notas" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            InsertCommand="insert into material(codigo, descripcion, medida, existencia, tipo, notas) values(@codigo, @descripcion, @medida, @existencia, @tipo, @notas)" 
            
            
            ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDescripcion" Name="descripcion" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlMedida" Name="medida" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtExistencia" Name="existencia" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlTipo" Name="tipo" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtNotas" Name="notas" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
