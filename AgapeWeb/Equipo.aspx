<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Equipo.aspx.vb" Inherits="AgapeWeb.Equipo" %>

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
                <td>
                    Fecha</td>
                <td>
                    <asp:TextBox ID="txtFecha_creacion" runat="server" required TextMode="Date"></asp:TextBox>
                &nbsp;</td>
                <td>
                    Serie</td>
                <td>
                    <asp:TextBox ID="txtSerie" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Notas</td>
                <td>
                    <asp:TextBox ID="txtNotas" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Codigo</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Capacidad</td>
                <td>
                    <asp:TextBox ID="txtCapacidad" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Pref_localizacion</td>
                <td>
                    <asp:TextBox ID="txtPrefijo_localizacion" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Marca</td>
                <td>
                    <asp:TextBox ID="txtMarca" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Tipo Equipo</td>
                <td>
                    <asp:TextBox ID="txtTipo_equipo" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Cliente</td>
                <td>
                    <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True"
                        DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Modelo</td>
                <td>
                    <asp:TextBox ID="txtModelo" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    Localizacion</td>
                <td>
                    <asp:TextBox ID="txtLocalizacion" runat="server" required></asp:TextBox>
                &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
                        SelectCommand="SELECT [nombre], [id] FROM [cliente]"></asp:SqlDataSource>
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
                    <asp:Button ID="btnGuardar" runat="server" style="width: 68px" Text="Guardar" 
                        TabIndex="7" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700" Text="Lista de Equipos"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
            <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True">
            <Columns>
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="modelo" HeaderText="modelo" SortExpression="modelo" />
                <asp:BoundField DataField="serie" HeaderText="serie" SortExpression="serie" />
                <asp:BoundField DataField="capacidad" HeaderText="capacidad" SortExpression="capacidad" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:BoundField DataField="localizacion" HeaderText="localizacion" SortExpression="localizacion" />
                <asp:BoundField DataField="notas" HeaderText="notas" SortExpression="notas" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>" SelectCommand="SELECT fecha, codigo, marca, modelo, serie, capacidad, tipo, localizacion, notas FROM equipo"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
            InsertCommand="insert into equipo(fecha, codigo, marca, modelo, serie, capacidad, tipo, localizacion, notas, prefijo, id_cliente) values(@fecha, @codigo, @marca, @modelo, @serie, @capacidad, @tipo, @localizacion, @notas, @prefijo, @id_cliente)" 
            
            ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtFecha_creacion" Name="fecha" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtMarca" Name="marca" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtModelo" Name="modelo" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSerie" Name="serie" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCapacidad" Name="capacidad" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTipo_equipo" Name="tipo" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtLocalizacion" Name="localizacion" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNotas" Name="notas" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPrefijo_localizacion" Name="prefijo" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlCliente" Name="id_cliente" 
                    PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
