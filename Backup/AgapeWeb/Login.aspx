<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="AgapeWeb.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="login-box.css" rel="stylesheet" type="text/css" />
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
        .style3
        {
            width: 654px;
            text-align: center;
        }
        .style5
        {
            background-color: #FFFFFF;
        }
        .style6
        {
            width: 63px;
            background-color: #FFFFFF;
        }
        .style7
        {
            width: 417px;
        }
        .style10
        {
            width: 85px;
            background-color: #FFFFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
        <table class="style1">
            <tr>
                <td class="style2" rowspan="4" align=center>
                    <asp:Image ID="Image1" runat="server" Height="150px" 
                        ImageUrl="~/img/logo_irm.png" Width="160px" />
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
            </tr>
        </table>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style7">&nbsp;&nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style10">
                Usuario</td>
            <td class="style6">
                <asp:TextBox ID="txtUsuario" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                Contraseña</td>
            <td class="style5">
                <asp:TextBox ID="txtContraseña" runat="server" Width="160px" 
                    TextMode="Password">admin</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5" colspan="2" align="center">
                    <asp:Label ID="lblMensaje" runat="server" Font-Names="Verdana" 
                        style="font-weight: 700"></asp:Label>
                    </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style5" colspan="2" align="center">
                <asp:Button ID="btnInicioSesion" runat="server" Text="Iniciar Sesión" />
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:irmingenieriaConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:irmingenieriaConnectionString.ProviderName %>" 
        SelectCommand="select usuario from empleado where usuario=@usuario and contraseña = @contraseña">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtContraseña" Name="usuario" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtContraseña" Name="contraseña" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
