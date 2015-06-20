<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="WebApplication1.Productos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>&nbsp;</p>
        <p style="height: 53px">&nbsp;</p>
        <p style="height: 86px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT * FROM [Paquete]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Categoria], [Cod_Sede]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Categoria, @Cod_Sede)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Categoria] = @Categoria, [Cod_Sede] = @Cod_Sede WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))">
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
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
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
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
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
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
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
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 392px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Cod_Sede" HeaderText="Cod_Sede" SortExpression="Cod_Sede" />
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
        <p style="height: 86px">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p style="height: 86px">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <p style="height: 86px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
    </div>

</asp:Content>
