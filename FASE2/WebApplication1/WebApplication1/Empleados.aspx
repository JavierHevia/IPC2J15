<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="WebApplication1.Empleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="height: 1656px; width: 713px;">
        <p style="height: 57px">
            &nbsp;</p>
            <table style="width: 100%; height: 224px;">
                <tr>
                    <td style="height: 74px; width: 206px">
                        <asp:Button ID="btaprobar" runat="server" OnClick="btaprobar_Click" Text="Autorizar Clientes" style="font-size: medium" Width="146px" />
                    </td>
                    <td style="height: 74px; width: 188px">
                        <asp:Button ID="btpedidos" runat="server" Text="Registrar Paquetes" OnClick="btpedidos_Click" style="font-size: medium" Width="161px" />
                    </td>
                    <td style="height: 74px"></td>
                </tr>
                <tr>
                    <td style="width: 206px">
                        &nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 206px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
                    </td>
                    <td style="width: 188px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300" Width="100%"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>

        <p style="height: 193px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; width: 518px; height: 156px; left: 45px; top: 455px; " Visible="False">
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
            <asp:Label ID="Label1" runat="server" style="width: 517px; height: 23px; left: 53px; top: 423px; font-size: small; " Text="Para Autorizar Cliente en vez de &quot;0&quot; coloque un &quot;1&quot; o viceversa" Visible="False"></asp:Label>
            </strong>
        </p>
        <p style="height: 379px">
            &nbsp
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Categoria]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Categoria] = @Categoria WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                    <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Valor_final" Type="Double" />
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_EstadoP" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Valor_Costo" Type="Double" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Valor_final" Type="Double" />
                    <asp:Parameter Name="TipoImpuesto" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                    <asp:Parameter Name="UsuarioC" Type="String" />
                    <asp:Parameter Name="EstadoP" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Peso_Lb" Type="Double" />
                    <asp:Parameter Name="Valor_Costo" Type="Double" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Valor_final" Type="Double" />
                    <asp:Parameter Name="TipoImpuesto" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                    <asp:Parameter Name="UsuarioC" Type="String" />
                    <asp:Parameter Name="EstadoP" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                    <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Valor_final" Type="Double" />
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_EstadoP" Type="String" />
                    <asp:Parameter Name="original_Categoria" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="262px" style="font-size: small" ViewStateMode="Disabled" Visible="False" Width="169px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" SortExpression="TipoImpuesto" />
                    <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" SortExpression="UsuarioC" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
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
        </p>
        <p style="height: 163px">&nbsp;</p>

        <p style="height: 208px">&nbsp;</p>
        <p>&nbsp;</p>
        <br />
        <br />
        <br />
    </div>

</asp:Content>
