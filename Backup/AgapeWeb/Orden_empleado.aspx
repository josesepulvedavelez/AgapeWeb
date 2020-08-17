<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Orden_empleado.aspx.vb" Inherits="AgapeWeb.Orden_empleado" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" rowspan="4" align=center>
                    <asp:Image ID="Image1" runat="server" Height="130px" 
                        ImageUrl="~/img/logo_irm.png" Width="141px" />
                </td>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>Agape</strong></td>
                <td rowspan="4" align="center">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" style="font-family: Verdana; font-size: x-large">
                    <strong>IRM IRM</td>
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
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource3" 
            ForeColor="Black" AllowPaging="True" AllowSorting="True" PageSize="5">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="localizacion" HeaderText="localizacion" 
                    SortExpression="localizacion" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" 
                    SortExpression="codigo" />
                <asp:BoundField DataField="No" HeaderText="No" SortExpression="No" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" 
                    SortExpression="fecha" />
                <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" 
                    SortExpression="tipo" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                    SortExpression="descripcion" />
                <asp:BoundField DataField="notas" HeaderText="notas" SortExpression="notas" />
                <asp:BoundField DataField="estado" HeaderText="estado" 
                    SortExpression="estado" />
                <asp:BoundField DataField="id_equipo" HeaderText="id_equipo" 
                    SortExpression="id_equipo" Visible="False" />
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
       
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            SelectCommand="select nombre, localizacion, codigo, No, o.fecha, o.hora, o.tipo, o.descripcion, o.notas, o.estado, o.id_equipo, o.id
from cliente c, equipo e, orden o
where c.id=e.id_cliente and e.id=o.id_equipo
order by o.fecha DESC;">
        </asp:SqlDataSource>
    
        <br />
        
            <table>
                <tr>
                    <td>
                        Fecha</td>
                    <td>
                        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                        &nbsp;</td>
                    <td>
                        Estado</td>
                    <td>
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem>EN CURSO</asp:ListItem>
                            <asp:ListItem>CERRADA</asp:ListItem>
                            <asp:ListItem>APLAZADA</asp:ListItem>
                            <asp:ListItem>CANCELADA</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;</td>
                    <td>
                        Notas Orden
                    </td>
                    <td>
                        <asp:TextBox ID="txtNotasOrden" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Hora</td>
                    <td>
                        <asp:TextBox ID="txtHora" runat="server" TextMode="Time"></asp:TextBox>
                        &nbsp;</td>
                    <td>
                        Notas Estado</td>
                    <td>
                        <asp:TextBox ID="txtNotasEstado" runat="server"></asp:TextBox>
                        &nbsp;</td>
                    <td>
                        Labores Realizadas
                    </td>
                    <td>
                        <asp:TextBox ID="txtLaboresRealizadas" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblMensaje2" runat="server" Font-Names="Verdana" 
                            style="font-weight: 700" Text="Recursos de Orden"></asp:Label>
                    </td>
                    <td>
                        Empleado
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlEmpleado" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="usuario" DataValueField="id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                            SelectCommand="SELECT [usuario], [id] FROM [empleado] ORDER BY [usuario]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                                <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" 
                                    SortExpression="id_empleado" />
                                <asp:BoundField DataField="id_material" HeaderText="id_material" 
                                    SortExpression="id_material" />
                                <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                                    SortExpression="descripcion" />
                                <asp:BoundField DataField="salida" HeaderText="salida" 
                                    SortExpression="salida" />
                                <asp:BoundField DataField="reintegro" HeaderText="reintegro" 
                                    SortExpression="reintegro" />
                                <asp:BoundField DataField="consumo" HeaderText="consumo" 
                                    SortExpression="consumo" />
                                <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="id" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                            SelectCommand="SELECT * FROM [salida_reintegro_] WHERE ([id_empleado] = @id_empleado)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlEmpleado" Name="id_empleado" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnAgregar0" runat="server" style="text-align: justify" 
                            Text="Agregar" Width="107px" />
                    </td>
                    <td>
                        <asp:Button ID="btnLimpiarUltima0" runat="server" Text="Quitar ultima" />
                    </td>
                    <td>
                        <asp:Button ID="btnLimpiar0" runat="server" Text="Quitar todas" />
                    </td>
                </tr>
            </table>
        
        <br />
        </div>
    </form>
    
</body>
</html>
