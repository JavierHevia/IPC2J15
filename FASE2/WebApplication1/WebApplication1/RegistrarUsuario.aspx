<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="WebApplication1.RegistrarUsuario" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>Registro de Usuarios</h2>
        <table style="width: 99%; height: 235px;">
            <tr>
                <td style="width: 136px; height: 49px;"><strong>
                    <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Usuario"></asp:Label>
                    </strong></td>
                <td style="width: 297px; height: 49px;">
                    <asp:TextBox ID="txtusuarioc" runat="server" Height="32px" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 136px; height: 69px;"><strong>
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Contraseña"></asp:Label>
                    </strong></td>
                <td style="width: 297px; height: 69px;">
                    <asp:TextBox ID="txtcontraseñac" runat="server" Height="34px" Width="100%" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 136px"><strong>
                    <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Nombres "></asp:Label>
                    </strong></td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtnombrec" runat="server" Height="34px" Width="100%"></asp:TextBox>
                </td>
                <td style="width: 261px">&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 170px;">
            <tr>
                <td style="width: 215px; height: 61px"><strong>
                    <asp:Label ID="Label4" runat="server" style="font-size: large" Text="Apellidos"></asp:Label>
                    </strong></td>
                <td style="width: 315px; height: 61px">
                    <asp:TextBox ID="txtapellido" runat="server" Height="34px" Width="100%"></asp:TextBox>
                </td>
                <td style="height: 61px"></td>
            </tr>
            <tr>
                <td style="width: 215px; height: 53px"><strong>
                    <asp:Label ID="Label5" runat="server" style="font-size: large" Text="DPI"></asp:Label>
                    </strong></td>
                <td style="width: 315px; height: 53px">
                    <asp:TextBox ID="txtdpi" runat="server" Height="34px" Width="100%"></asp:TextBox>
                </td>
                <td style="height: 53px"></td>
            </tr>
            <tr>
                <td style="width: 215px"><strong>
                    <asp:Label ID="Label6" runat="server" style="font-size: large" Text="Dirección"></asp:Label>
                    </strong></td>
                <td style="width: 315px">
                    <asp:TextBox ID="txtdirección" runat="server" Height="34px" Width="100%" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 163px;">
            <tr>
                <td style="width: 216px"><strong>
                    <asp:Label ID="Label7" runat="server" style="font-size: large" Text="NoTarjeta"></asp:Label>
                    </strong></td>
                <td style="width: 319px">
                    <asp:TextBox ID="txtNoTarjeta" runat="server" Height="34px" Width="100%"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="dptipotarjeta" runat="server">
                        <asp:ListItem>Credito</asp:ListItem>
                        <asp:ListItem>Debito</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 216px"><strong>
                    <asp:Label ID="Label8" runat="server" style="font-size: large" Text="Telefono"></asp:Label>
                    </strong></td>
                <td style="width: 319px">
                    <asp:TextBox ID="txtetelefono" runat="server" Height="34px" Width="100%" TextMode="Phone"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 216px"><strong>
                    <asp:Label ID="Label9" runat="server" style="font-size: large" Text="Telefono1"></asp:Label>
                    </strong></td>
                <td style="width: 319px">
                    <asp:TextBox ID="txttelefono1" runat="server" Height="34px" Width="100%" TextMode="Phone"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    <p style="height: 648px">
        &nbsp;</p>
    <p>&nbsp;</p>





    </asp:Content>