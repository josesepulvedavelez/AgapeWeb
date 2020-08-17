<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Programacion_frecuencia.aspx.vb" Inherits="AgapeWeb.Programacion_frecuencia" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" PageSize="5">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="nit" HeaderText="nit" SortExpression="nit" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="prefijo" HeaderText="prefijo" 
                    SortExpression="prefijo" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" 
                    SortExpression="direccion" />
                <asp:BoundField DataField="telefonos" HeaderText="telefonos" 
                    SortExpression="telefonos" />
                <asp:BoundField DataField="contacto" HeaderText="contacto" 
                    SortExpression="contacto" />
                <asp:BoundField DataField="tels_contacto" HeaderText="tels_contacto" 
                    SortExpression="tels_contacto" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                    InsertVisible="False" ReadOnly="True" Visible="False" />
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
            
            
            SelectCommand="SELECT [nit], [nombre], [prefijo], [direccion], [telefonos], [id], [contacto], [tels_contacto] FROM [cliente]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" 
            ForeColor="Black" PageSize="5">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" 
                    SortExpression="fecha" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" 
                    SortExpression="codigo" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="modelo" HeaderText="modelo" 
                    SortExpression="modelo" />
                <asp:BoundField DataField="serie" HeaderText="serie" SortExpression="serie" />
                <asp:BoundField DataField="capacidad" HeaderText="capacidad" 
                    SortExpression="capacidad" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" 
                    SortExpression="tipo" />
                <asp:BoundField DataField="localizacion" HeaderText="localizacion" 
                    SortExpression="localizacion" />
                <asp:BoundField DataField="notas" HeaderText="notas" 
                    SortExpression="notas" />
                <asp:BoundField DataField="prefijo" HeaderText="prefijo" SortExpression="prefijo" 
                    Visible="False" />
                <asp:BoundField DataField="id_cliente" 
                    HeaderText="id_cliente" SortExpression="id_cliente" 
                    Visible="False" />
                <asp:BoundField DataField="id" HeaderText="id" 
                    SortExpression="id" Visible="False" InsertVisible="False" 
                    ReadOnly="True" />
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
            SelectCommand="SELECT * FROM [equipo] WHERE ([id_cliente] = @id_cliente)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id_cliente" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <asp:TextBox ID="txtId_equipo" runat="server" required Visible="False"></asp:TextBox>
        <br />
        <table>
            <tr>
                <td>Fecha Prog</td>
                <td>
                    <asp:TextBox ID="txtFecha_prog" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>Fecha Inicio</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>Hora</td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Frecuencia</td>
                <td>
                    <asp:DropDownList ID="ddlFrecuencia" runat="server" Width="128px">
                        <asp:ListItem>MENSUAL</asp:ListItem>
                        <asp:ListItem>BIMENSUAL</asp:ListItem>
                        <asp:ListItem>TRIMESTRAL</asp:ListItem>
                        <asp:ListItem>SEMESTRAL</asp:ListItem>
                        <asp:ListItem>ANUAL</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                   Tipo Mant</td>
                <td>
                    <asp:DropDownList ID="ddlTpo_mantenimiento" runat="server" Width="128px">
                        <asp:ListItem>PREVENTIVO</asp:ListItem>
                        <asp:ListItem>PREDICTIVO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    Notas</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtNotas" runat="server">NINGUNA</asp:TextBox>
                </td>
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
                <td style="margin-left: 40px">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
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
        <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" 
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
