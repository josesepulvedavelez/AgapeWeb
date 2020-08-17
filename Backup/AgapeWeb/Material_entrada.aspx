<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Material_entrada.aspx.vb" Inherits="AgapeWeb.Material_entrada" %>

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
        .style4
        {
            width: 145px;
            height: 131px;
            text-align: center;
        }
        .style3
        {
            width: 654px;
            text-align: center;
        }
        .style6
        {
            width: 118px;
        }
        .style8
        {
            width: 233px;
        }
        .style7
        {
            width: 241px;
        }
        .style9
        {
            width: 784px;
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
        <fieldset>
        <legend>Factura</legend> 
        <table class="style1">
            <tr>
                <td class="style6">
                    Factura</td>
                <td class="style8">
                    <asp:TextBox ID="txtFactura" runat="server" required MaxLength="20"></asp:TextBox>
                </td>
                <td class="style6">
                    Fecha</td>
                <td class="style7">
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td class="style6">
                    Hora</td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Proveedor</td>
                <td class="style8">
                    <asp:DropDownList ID="ddlProveedor" DataTextField="nombre" DataValueField="id" runat="server" OnSelectedIndexChanged = "ddlProveedor_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Proveedor.aspx" 
                        Target="_blank">Ver</asp:HyperLink>
                &nbsp;<asp:ImageButton ID="btnRecargarProveedor" runat="server" Height="16px" 
                        ImageUrl="~/img/refresh_128.png" Width="17px" />
                </td>
                <td class="style6">
                    Digitador</td>
                <td class="style7">
                    <asp:TextBox ID="txtDigitador" runat="server" ReadOnly="True" Enabled="False" 
                        AutoPostBack="True" OnTextChanged="txtDigitador_TextChanged"></asp:TextBox>
                </td>
                <td class="style6">
                    Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>

            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnNueva" runat="server" Text="Nueva" style="width: 68px" OnClick="btnLimpiar_Click"/>
                    </td>
                    <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                    </td>
                    <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Entrada de Materiales"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtId_proveedor" runat="server" Enabled="False" 
                        Visible="False"></asp:TextBox>
                    <asp:TextBox ID="txtId_digitador" runat="server" Enabled="False" 
                        Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
       
        </fieldset> 
        <br />
        <fieldset>
        <legend>Detalle de Factura</legend>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblUbicacion" runat="server" Text="Ubicacion"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCantidad" runat="server" Text="Cantidad"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCosto" runat="server" Text="Costo"></asp:Label>
                &nbsp;Unit</td>
                <td>
                    <asp:Label ID="lblUtilidad" runat="server" Text="Utilidad %"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblId_material" runat="server" Text="Id_material" 
                        Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDescripcion" runat="server" AutoPostBack="True" 
                        OnSelectedIndexChanged="ddlDescripcion_SelectedIndexChanged"></asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlUbicacion" runat="server">
                        <asp:ListItem>BODEGA</asp:ListItem>
                        <asp:ListItem>VITRINA 1</asp:ListItem>
                        <asp:ListItem>VITRINA 2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" required></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtCosto" runat="server" TextMode="Number" required></asp:TextBox>
                    <br />
                </td>
                <td>
                    <asp:DropDownList ID="ddlUtilidad" runat="server" Width="59px">
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Material.aspx" 
                        Target="_blank">Ver</asp:HyperLink>
                    &nbsp;<asp:ImageButton ID="btnRecargarMaterial" runat="server" Height="16px" 
                        ImageUrl="~/img/refresh_128.png" Width="17px" />
                    </td>
                <td>
                    <asp:TextBox ID="txtId_material" runat="server" Width="47px" 
                        AutoPostBack="True" Visible="False"></asp:TextBox>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3"> 
                    <asp:Label ID="lblMensaje2" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de Materiales"></asp:Label>
                </td>
                <td></td>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
         <table>
          <tr>
           <td>
             <asp:Button ID="btnAgregar" runat="server" Text="Agregar" style="text-align: justify" Width="107px" />
           </td>
           <td>
            <asp:Button ID="btnLimpiarUltima" runat="server" Text="Quitar ultima"/>
           </td>
           <td>
            <asp:Button ID="btnLimpiar" runat="server" Text="Quitar todas" />
           </td>
          </tr>
         </table>
         <br/>
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                CellSpacing="2" ForeColor="Black">
                 <Columns>
                     <asp:BoundField DataField="codigo" HeaderText="codigo" 
                         SortExpression="codigo" />
                     <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                         SortExpression="descripcion" />
                     <asp:BoundField DataField="medida" HeaderText="medida" 
                         SortExpression="medida" />
                     <asp:BoundField DataField="existencia" HeaderText="existencia" 
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        SelectCommand="SELECT * FROM [material] WHERE ([id] = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlDescripcion" Name="id" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
             <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black">
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
    </fieldset>
    </div>
    </form>
    </body>