<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginUsuario.aspx.cs" Inherits="WebApplication1.LoginUsuario" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>Ingreso de Usuario</h2>
        <table style="width: 99%; height: 235px;">
            <tr>
                <td style="width: 212px"><strong>
                    <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Usuario"></asp:Label>
                    </strong></td>
                <td style="width: 310px">
                    <asp:TextBox ID="txtusuario" runat="server" Height="32px" Width="100%"></asp:TextBox>
                </td>
                <td style="width: 261px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 212px"><strong>
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Contraseña"></asp:Label>
                    </strong></td>
                <td style="width: 310px">
                    <asp:TextBox ID="txtcontraseña" runat="server" Height="34px" Width="100%"></asp:TextBox>
                </td>
                <td style="width: 261px">
                    <asp:DropDownList ID="dprRol" runat="server">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Empleado</asp:ListItem>
                        <asp:ListItem>Cliente</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 310px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar Sesion" />
                </td>
                <td style="width: 261px">&nbsp;</td>
            </tr>
        </table>
    <p>&nbsp;</p>





    </asp:Content>