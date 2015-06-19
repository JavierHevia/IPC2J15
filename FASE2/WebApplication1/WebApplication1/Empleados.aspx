<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="WebApplication1.Empleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="height: 807px">
        <p style="height: 57px">
            &nbsp;</p>
            <table style="width: 100%; height: 224px;">
                <tr>
                    <td style="height: 74px; width: 254px">
                        <asp:Button ID="btaprobar" runat="server" OnClick="btaprobar_Click" Text="Autorizar Clientes" />
                    </td>
                    <td style="height: 74px; width: 180px">
                        <asp:Button ID="btpedidos" runat="server" Text="Pedidos" />
                    </td>
                    <td style="height: 74px"></td>
                </tr>
                <tr>
                    <td style="width: 254px">
                        <asp:Button ID="Button3" runat="server" Text="Reporte de Ventas" Width="245px" />
                    </td>
                    <td style="width: 180px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 254px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
                    </td>
                    <td style="width: 180px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>

        <p style="height: 199px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; width: 518px; height: 156px; left: 45px; top: 455px; position: absolute;" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                    <asp:BoundField DataField="ApellidoC" HeaderText="ApellidoC" SortExpression="ApellidoC" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="NoTarjeta" HeaderText="NoTarjeta" SortExpression="NoTarjeta" />
                    <asp:BoundField DataField="TipoTarjeta" HeaderText="TipoTarjeta" SortExpression="TipoTarjeta" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="NoCasilla" HeaderText="NoCasilla" SortExpression="NoCasilla" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <strong>
            <asp:Label ID="Label1" runat="server" style="width: 517px; height: 37px; left: 45px; top: 415px; font-size: small; position: absolute;" Text="Para Autorizar Cliente en vez de &quot;0&quot; coloque un &quot;1&quot; o viceversa" Visible="False"></asp:Label>
            </strong>
        </p>
        <p style="height: 133px">
            &nbsp
        </p>
        <p>&nbsp;</p>

        <p>&nbsp;</p>
        <br />
        <br />
    </div>

</asp:Content>
