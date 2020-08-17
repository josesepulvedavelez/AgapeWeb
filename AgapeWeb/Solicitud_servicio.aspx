<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Solicitud_servicio.aspx.vb" Inherits="AgapeWeb.Orden" %>

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
        .style9
        {
            width: 784px;
        }
        .style10
        {
            width: 71px;
        }
        .style12
        {
            width: 754px;
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
                <td class="style10">
                    Cliente</td>
                <td>
                    <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        SelectCommand="SELECT [nombre], [id] FROM [cliente] ORDER BY nombre;">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <br />
            <tr>
                <td colspan="2"><br/>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" ForeColor="Black" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="localizacion" HeaderText="localizacion" 
                                SortExpression="localizacion" />
                            <asp:BoundField DataField="codigo" HeaderText="codigo" 
                                SortExpression="codigo" />
                            <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                            <asp:BoundField DataField="modelo" HeaderText="modelo" 
                                SortExpression="modelo" />
                            <asp:BoundField DataField="serie" HeaderText="serie" SortExpression="serie" />
                            <asp:BoundField DataField="capacidad" HeaderText="capacidad" 
                                SortExpression="capacidad" />
                            <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        SelectCommand="SELECT [localizacion], [codigo], [marca], [modelo], [serie], [capacidad], [tipo], [id] FROM [equipo] WHERE id_cliente = @id_cliente
ORDER BY localizacion; ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlCliente" Name="id_cliente" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td>
                    No</td>
                <td>
                    <asp:TextBox ID="txtNo" runat="server" required></asp:TextBox>
                </td>
                <td>
                    Tipo</td>
                <td>
                    <asp:DropDownList ID="ddlTipo" runat="server">
                        <asp:ListItem>CORRECTIVO</asp:ListItem>
                        <asp:ListItem>PREVENTIVO</asp:ListItem>
                        <asp:ListItem>MONTAJE</asp:ListItem>
                        <asp:ListItem>DESMONTAJE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Fecha</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" required></asp:TextBox>
                </td>
                <td>
                    Descripcion</td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server" required></asp:TextBox>
                </td>
                <td>
                    Estado</td>
                <td>
                    <asp:TextBox ID="txtEstado" runat="server" Enabled="False">ABIERTA</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Hora</td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" required></asp:TextBox>
                </td>
                <td>
                    Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" required></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                        <asp:Button ID="btnNueva" runat="server" Text="Nueva" Width="68px" />
                    </td>
                    <td>
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" />
                    </td>
                    <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Solicitud de servicio"></asp:Label>
                    </td>
                </tr>
            </table>       
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource3" 
            ForeColor="Black">
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            InsertCommand="INSERT INTO orden(No, fecha, hora, tipo, descripcion, notas, estado, id_equipo) VALUES (@No, @fecha, @hora, @tipo, @descripcion, @notas, @estado, @id_equipo)" 
            
            ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNo" Name="No" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtFecha" Name="fecha" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtHora" Name="hora" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlTipo" Name="tipo" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtDescripcion" Name="descripcion" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNotas" Name="notas" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEstado" Name="estado" PropertyName="Text" />
                <asp:ControlParameter ControlID="GridView1" Name="id_equipo" 
                    PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
       
        <br />
        </div>
    </form>
</body>
</html>
