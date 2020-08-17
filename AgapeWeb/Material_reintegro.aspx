<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Material_reintegro.aspx.vb" Inherits="AgapeWeb.Material_reintegro" %>

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
        .style12
        {
            width: 754px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" rowspan="4" align=center>
                    <img alt="" class="style4" src="img/logo_irm.png" /></td>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>Agape WEB</strong></td>
                <td rowspan="4" align="center">
                    <img alt="" class="style4" 
                        src="img/photo.png" /></td>
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
             <td class="style12">
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
                            <asp:MenuItem Text="Int Datos" Value="Int Datos">
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
                                <asp:MenuItem Text="Solicitud Serivicio" Value="Solicitud Serivicio" 
                                    NavigateUrl="~/Solicitud_servicio.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Orden_empleado.aspx" Text="Orden Trabajo" 
                                    Value="Orden Trabajo"></asp:MenuItem>
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
                                    <asp:MenuItem NavigateUrl="~/Informe_salida_empleado.aspx" 
                                        Text="Salida x Empleado " Value="Salida x Empleado "></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Reintegro" Value="Reintegro">
                                    <asp:MenuItem NavigateUrl="~/Informe_reintegro_detalle.aspx" Text="Detalle" 
                                        Value="Detalle"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_reintegro_resumen.aspx" Text="Resumen" 
                                        Value="Resumen"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/Informe_reintegro_empleado.aspx" 
                                        Text="Reintegro x Empleado" Value="Reintegro x Empleado"></asp:MenuItem>
                                </asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Informe Mantenimiento" Value="Informe Mantenimiento">
                                <asp:MenuItem Text="Frecuencia" Value="Frecuencia" 
                                    NavigateUrl="~/Informe_recuencia_cliente.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Preventivo" Value="Preventivo" 
                                    NavigateUrl="~/Informe_mantenimiento_preventivo.aspx"></asp:MenuItem>
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
        <legend>Devolucion</legend> 
        <table class="style1">
            <tr>
                <td class="style6">
                    Devolucion</td>
                <td class="style8">
                    <asp:TextBox ID="txtReintegro" runat="server" required MaxLength="20" 
                        Enabled="False"></asp:TextBox>
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
                    Empleado</td>
                <td class="style8">
                    <asp:DropDownList ID="ddlEmpleado" DataTextField="nombre" DataValueField="id" 
                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpleado_SelectedIndexChanged">
                    </asp:DropDownList>
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
                        <asp:Button ID="btnNueva" runat="server" Text="Nueva" Width="69px" />
                    </td>
                    <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                    </td>
                    <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Reintegro de Materiales"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtId_empleado" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="txtId_digitador" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </fieldset>
        <br/>
        <fieldset>
        <legend>Detalle de Reintegro</legend>
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
                </td>
                <td>
                    <asp:Label ID="lblId_material" runat="server" Text="Id_material" 
                        Visible="False"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDescripcion" runat="server" AutoPostBack="True" 
                        OnSelectedIndexChanged="ddlDescripcion_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource2" DataTextField="descripcion" 
                        DataValueField="id_material" style="margin-right: 0px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        
                        
                        SelectCommand="SELECT DISTINCT descripcion, id_material FROM salida_reintegro_ WHERE (id_empleado = @id_empleado)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtId_empleado" Name="id_empleado" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="ddlUbicacion" runat="server">
                        <asp:ListItem>BODEGA</asp:ListItem>
                        <asp:ListItem>VITRINA 1</asp:ListItem>
                        <asp:ListItem>VITRINA 2</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" required Width="80px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtCosto" runat="server" TextMode="Number" required 
                        Enabled="False" Width="80px">0</asp:TextBox>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtId_material" runat="server" Width="47px" 
                        AutoPostBack="True" Visible="False"></asp:TextBox>
                    </td>                
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMensaje2" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de materiales"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
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
                            <td>
                                <asp:Button ID="btnLimpiar" runat="server" Text="Quitar todas" />
                            </td>
                            
                        </tr>
            </table>             
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        Entregadas al empleado</td>
                </tr>
                <tr>
                    <td>
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
                    </td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id_material" HeaderText="id_material" 
                                    SortExpression="id_material" />
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                                    SortExpression="descripcion" />
                                <asp:BoundField DataField="entrega" HeaderText="entrega" 
                                    SortExpression="entrega" ReadOnly="True" />
                                <asp:BoundField DataField="devolucion" HeaderText="devolucion" 
                                    SortExpression="devolucion" ReadOnly="True" />
                                <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" 
                                    SortExpression="Column1" />
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
            </table>
    </fieldset>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
        
        SelectCommand="/*SELECT id_material, descripcion, tipo, SUM(cantidad) AS cantidad  FROM salida_reintegro WHERE (id_empleado = @id_empleado)   GROUP BY tipo, id_empleado, id_material, descripcion   ORDER BY id_material, descripcion, tipo DESC*/ 

SELECT id_material, descripcion, SUM(salida) AS entrega, SUM(reintegro) AS devolucion, SUM(salida)-SUM(reintegro) FROM salida_reintegro_ WHERE (id_empleado = @id_empleado) GROUP BY id_material, descripcion">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlEmpleado" Name="id_empleado" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
