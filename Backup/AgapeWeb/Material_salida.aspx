<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Material_salida.aspx.vb" Inherits="AgapeWeb.Salida" Debug="true" %>

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
        .style17
        {
            width: 233px;
        }
        .style18
        {
            width: 118px;
        }
        .style19
        {
            width: 119px;
        }
        .style20
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
        <legend>Entrega</legend>
        <table class="style1">
            <tr>
                <td class="style18">
                    Entrega</td>
                <td class="style17">
                    <asp:TextBox ID="txtEntrega" runat="server" required MaxLength="20"></asp:TextBox>
                </td>
                <td class="style19">
                    Fecha</td>
                <td class="style20">
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td class="style18">
                    Hora</td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    Empleado</td>
                <td class="style17">
                    <asp:DropDownList ID="ddlEmpleado" runat="server" AutoPostBack="True" 
                        DataTextField="usuario" DataValueField="id" OnSelectedIndexChanged="ddlEmpleado_SelectedIndexChanged"></asp:DropDownList>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl="~/Empleado.aspx" Target="_blank">Ver</asp:HyperLink>
                            &nbsp;<asp:ImageButton ID="btnRecargarEmpleado" runat="server" Height="16px" 
                        ImageUrl="~/img/refresh_128.png" Width="17px" />
                </td>
                <td class="style19">
                    Digitador</td>
                <td class="style20">
                    <asp:TextBox ID="txtDigitador" runat="server" 
                        OnTextChanged="txtDigitador_TextChanged" Enabled="False"></asp:TextBox>
                </td>
                <td class="style18">Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
            <table>
            <tr>
                <td>
                    <asp:Button ID="btnNueva" runat="server" Text="Nueva" Width="69px" />
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Entrega de Materiales"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtId_empleado" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="txtId_digitador" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        </fieldset>
        <br />
        <fieldset>
        <legend>Detalle de entrega</legend>
        <table>
            <tr>
                <td>
                    Descripcion</td>
                <td>
                    Cantidad</td>
                <td>
                    Precio 
                    Unit</td>
                <td>
                    <asp:Label ID="lblId_material" runat="server" Text="Id_material" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDescripcion" runat="server" AutoPostBack="True" 
                        OnSelectedIndexChanged="ddlDescripcion_SelectedIndexChanged"></asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" required></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" required></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtId_material" runat="server" Width="47px" Visible="False"></asp:TextBox>
                    </td>
                <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/Informe_Entrada_detalle.aspx" Target="_blank">Ver</asp:HyperLink>
                            &nbsp;</td>
                <td>
                                <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource2" 
                                    SelectedIndex="0" BackColor="#CCCCCC" BorderColor="#999999" 
                                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                                    Font-Size="Small" ForeColor="Black">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" Visible="False" />
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
                </td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMensaje2" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de materiales"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        SelectCommand="SELECT * FROM [material] WHERE ([id] = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlDescripcion" Name="id" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
           
            </table>

         <table>
                        <tr>
                            <td>
        
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" 
                        style="text-align: justify" Width="107px" />
                            </td>
                            <td>
                    <asp:Button ID="btnLimpiarUltima" runat="server" Text="Quitar ultima"/>
                            </td>
                            <td style="margin-left: 40px">
                                <asp:Button ID="btnLimpiar0" runat="server" Text="Quitar todas" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
            </table>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="codigo" 
                        SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                        SortExpression="descripcion" />
                    <asp:BoundField DataField="nit" HeaderText="nit" 
                        SortExpression="nit" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" 
                        SortExpression="nombre" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" 
                        SortExpression="usuario" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                    <asp:BoundField DataField="factura" HeaderText="factura" 
                        SortExpression="factura" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" 
                        SortExpression="cantidad" />
                    <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
                    <asp:BoundField DataField="total" HeaderText="total" ReadOnly="True" 
                        SortExpression="total" />
                    <asp:BoundField DataField="utilidad" HeaderText="utilidad" 
                        SortExpression="utilidad" />
                    <asp:BoundField DataField="sugerido" HeaderText="sugerido" ReadOnly="True" 
                        SortExpression="sugerido" />
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
                
                SelectCommand="SELECT m.codigo, m.descripcion, p.nit, p.nombre, emp.usuario, e.fecha, e.hora, e.factura, me.cantidad, me.costo, me.cantidad * me.costo AS total, me.utilidad, me.costo + me.costo * (me.utilidad / 100) AS sugerido FROM proveedor AS p INNER JOIN entrada AS e ON p.id = e.id_proveedor INNER JOIN material AS m INNER JOIN material_entrada AS me ON m.id = me.id_material ON e.id = me.id_entrada INNER JOIN empleado AS emp ON e.id_digitador = emp.id where m.id=@id_material ORDER BY e.fecha DESC, p.nombre, m.descripcion ;">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlDescripcion" Name="id_material" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                      BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                      CellSpacing="2" ForeColor="Black" PageSize="5">
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
    
            <table>
                           
            </table>
        
                </fieldset>
        <br />
        </div>
    
    </form>
</body>
</html>
