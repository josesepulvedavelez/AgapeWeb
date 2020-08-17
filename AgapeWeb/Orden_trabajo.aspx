<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Orden_trabajo.aspx.vb" Inherits="AgapeWeb.Orden_empleado" %>

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
            width: 202px;
        }
        .style3
        {
            width: 784px;
            text-align: center;
        }
        .style9
        {
            width: 784px;
        }
        .menuTabs
        {
            position:relative;
            top:1px;
            left:10px;
        }
        .tab
        {
            border:Solid 1px black;
            border-bottom:none;
            padding:0px 10px;
            background-color:#eeeeee;
        }
        .tabBody
        {
            border:Solid 1px black;
            padding:20px;
            background-color:white;
        }
        .style4
        {
            width: 145px;
            height: 131px;
            text-align: center;
        }
        .style12
        {
            width: 754px;
        }
        .style10
        {
            width: 71px;
        }
        .auto-style2 {
            width: 282px;
        }
        .auto-style3 {
            width: 49px;
        }
        .auto-style4 {
            width: 75px;
        }
        .auto-style5 {
            width: 112px;
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
        <table>
         <tr>
          <td>Entre</td>
          <td>
              <asp:TextBox ID="txtDesde" runat="server" TextMode="Date"></asp:TextBox>
             </td>
          <td>Hasta</td>
          <td>
              <asp:TextBox ID="txtHasta" runat="server" TextMode="Date"></asp:TextBox>
             </td>
          <td>
              <asp:Button ID="btnVer" runat="server" Text="Ver" />
             </td>
             <td class="style10">
                 <asp:Button ID="btnVerTodo" runat="server" Text="Ver todo" />
             </td>
         </tr>
        </table>    
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black" PageSize="5" Font-Size="Small">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>" SelectCommand="SELECT s.fecha, c.nombre AS cliente, e.localizacion, e.codigo, e.marca, e.modelo, e.capacidad, s.hora, s.tipo, s.estado, s.id FROM cliente AS c INNER JOIN equipo AS e ON c.id = e.id_cliente INNER JOIN servicio AS s ON e.id = s.id_equipo WHERE  (s.estado = 'ABIERTA') ORDER BY s.fecha DESC, cliente"></asp:SqlDataSource>
    
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style3">Orden No</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">Localizacion</td>
                <td>
                    <asp:TextBox ID="txtLocalizacion" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Cliente</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCliente" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">Marca</td>
                <td>
                    <asp:TextBox ID="txtMarca" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Servicio</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtServicio" runat="server" Width="230px"></asp:TextBox>
                        </td>
                <td>&nbsp;</td>
                <td class="auto-style4">Modelo</td>
                <td>
                    <asp:TextBox ID="txtModelo" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Fecha</td>
                <td class="auto-style2">
                        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                <td>&nbsp;</td>
                <td class="auto-style4">Serie</td>
                <td>
                    <asp:TextBox ID="txtSerie" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hora</td>
                <td class="auto-style2">
                        <asp:TextBox ID="txtHora" runat="server" TextMode="Time"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">Capacidad</td>
                <td>
                    <asp:TextBox ID="txtCapacidad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Codigo</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style5">
                        <asp:Button ID="btnGuardar" runat="server" style="text-align: justify" 
                            Text="Guardar" Width="107px" />
                    </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Ordenes de trabajo"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>" InsertCommand="insert into orden(fecha, hora, estado, notas_estado, observaciones, id_servicio) vaues(@fecha, @hora, @estado, @notas_estado, @observaciones, @id_servicio)"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;<br />
        
            <table>
                </table>
        
        </div>
    </form>
    
</body>
</html>
