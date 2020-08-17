<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="servicio.aspx.vb" Inherits="AgapeWeb.Programacion_frecuencia" %>

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
        .style9
        {
            width: 784px;
        }
        .style12
        {
            width: 754px;
        }
        .auto-style1 {
            width: 295px;
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
        <table class="style1">
            <tr>
                <td>
                    <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" SelectCommand="SELECT nombre, id FROM CLIENTE"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridEquipo" runat="server" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            SelectCommand="SELECT codigo, marca, modelo, serie, capacidad, tipo, localizacion, id FROM equipo WHERE id_cliente= @id_Cliente">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCliente" Name="id_Cliente" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        
        <table>
            <tr>
                <td>Fecha Prog</td>
                <td>
                    <asp:TextBox ID="txtFecha_prog" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td>Fecha Inicio</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td>Notas</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNotas" runat="server" Width="230px">NINGUNA</asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    Frecuencia</td>
                <td>
                    <asp:DropDownList ID="ddlFrecuencia" runat="server" Width="128px" AutoPostBack="True">
                        <asp:ListItem>MENSUAL</asp:ListItem>
                        <asp:ListItem>BIMENSUAL</asp:ListItem>
                        <asp:ListItem>TRIMESTRAL</asp:ListItem>
                        <asp:ListItem>SEMESTRAL</asp:ListItem>
                        <asp:ListItem>ANUAL</asp:ListItem>
                        <asp:ListItem>UNICO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Hora</td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" required></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td style="margin-left: 40px" class="auto-style1">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                   Tipo Mant</td>
                <td>
                    <asp:DropDownList ID="ddlTpo_mantenimiento" runat="server" Width="128px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    Estado</td>
                <td>
                    <asp:DropDownList ID="ddlEstado" runat="server">
                        <asp:ListItem>ABIERTA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td style="margin-left: 40px" class="auto-style1">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="margin-left: 40px" class="auto-style1">
                    &nbsp;</td>
                            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Programacion de equipos"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td style="margin-left: 40px" class="auto-style1">
                    &nbsp;</td>
                
            </tr>
        </table>
        
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnProgramar" runat="server" Text="Programar" Width="114px" />
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="114px" />
                </td>
                <td>
                    <asp:Button ID="btnQuitar_ultima" runat="server" Text="Quitar Ultima" />
                </td>
                <td>
                    <asp:Button ID="btnQuitar_todas" runat="server" Text="Quitar Todas" 
                        Width="114px" />
                </td>
            </tr>
            </table>
            <br />
        <asp:GridView ID="GridServicio" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black">
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
    
    </div>
    </form>
</body>
</html>
