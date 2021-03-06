﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="WebApplication1.Empleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="height: 2592px; width: 713px;">
        <p style="height: 57px" class="text-center">
            ¡Bienvenido Empleado!</p>
            <table style="width: 100%; height: 189px;">
                <tr>
                    <td style="height: 74px; width: 206px">
                        <asp:Button ID="btaprobar" runat="server" OnClick="btaprobar_Click" Text="Autorizar Clientes" style="font-size: medium" Width="146px" />
                    </td>
                    <td style="height: 74px; width: 188px">
                        <asp:Button ID="btpedidos" runat="server" Text="Registrar Paquetes" OnClick="btpedidos_Click" style="font-size: medium" Width="161px" />
                    </td>
                    <td style="height: 74px">
                        <asp:Button ID="añadirlote" runat="server" OnClick="añadirlote_Click" style="font-size: medium" Text="Añadir Lote" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" style="font-size: small" Text="Carga CSV" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 206px; height: 33px;">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: medium" Text="Servicio al cliente" />
                    </td>
                    <td style="width: 188px; height: 33px;">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-size: medium" Text="Devoluciones" />
                    </td>
                    <td style="height: 33px">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-size: small" Text="Buscar Cliente" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 206px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [NombreC], [ApellidoC], [NoCasilla], [CasillaInter], [UsuarioC] FROM [Cliente]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL)) AND (([CasillaInter] = @original_CasillaInter) OR ([CasillaInter] IS NULL AND @original_CasillaInter IS NULL))" InsertCommand="INSERT INTO [Cliente] ([NombreC], [ApellidoC], [NoCasilla], [CasillaInter], [UsuarioC]) VALUES (@NombreC, @ApellidoC, @NoCasilla, @CasillaInter, @UsuarioC)" UpdateCommand="UPDATE [Cliente] SET [NombreC] = @NombreC, [ApellidoC] = @ApellidoC, [NoCasilla] = @NoCasilla, [CasillaInter] = @CasillaInter WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL)) AND (([CasillaInter] = @original_CasillaInter) OR ([CasillaInter] IS NULL AND @original_CasillaInter IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                                <asp:Parameter Name="original_NombreC" Type="String" />
                                <asp:Parameter Name="original_ApellidoC" Type="String" />
                                <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                                <asp:Parameter Name="original_CasillaInter" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="NombreC" Type="String" />
                                <asp:Parameter Name="ApellidoC" Type="String" />
                                <asp:Parameter Name="NoCasilla" Type="Int32" />
                                <asp:Parameter Name="CasillaInter" Type="Int32" />
                                <asp:Parameter Name="UsuarioC" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="NombreC" Type="String" />
                                <asp:Parameter Name="ApellidoC" Type="String" />
                                <asp:Parameter Name="NoCasilla" Type="Int32" />
                                <asp:Parameter Name="CasillaInter" Type="Int32" />
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                                <asp:Parameter Name="original_NombreC" Type="String" />
                                <asp:Parameter Name="original_ApellidoC" Type="String" />
                                <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                                <asp:Parameter Name="original_CasillaInter" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 188px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Categoria], [Cod_Sede]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Categoria, @Cod_Sede)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Categoria] = @Categoria, [Cod_Sede] = @Cod_Sede WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL))">
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
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300" Width="100%"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>

        <p style="height: 193px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; left: 45px; top: 455px; " Visible="False" DataKeyNames="UsuarioC" Height="165px" Width="529px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                    <asp:BoundField DataField="ApellidoC" HeaderText="ApellidoC" SortExpression="ApellidoC" />
                    <asp:BoundField DataField="NoCasilla" HeaderText="NoCasilla" SortExpression="NoCasilla" />
                    <asp:BoundField DataField="CasillaInter" HeaderText="CasillaInter" SortExpression="CasillaInter" />
                    <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" ReadOnly="True" SortExpression="UsuarioC" />
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
        <p style="height: 544px">
            &nbsp<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" style="font-size: small" Width="125px" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Valor_Costo" HeaderText="Valor_Costo" SortExpression="Valor_Costo" />
                    <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
                    <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" SortExpression="TipoImpuesto" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" SortExpression="UsuarioC" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Cod_Sede" HeaderText="Cod_Sede" SortExpression="Cod_Sede" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [EstadoP]) VALUES (@Cod_Paquete, @Nombre, @EstadoP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Paquete], [Nombre], [EstadoP] FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [EstadoP] = @EstadoP WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_EstadoP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="EstadoP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="EstadoP" Type="String" />
            <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_EstadoP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Peso_Lb] = @original_Peso_Lb AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Peso_Lb], [Cod_Lote]) VALUES (@Cod_Paquete, @Peso_Lb, @Cod_Lote)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Paquete], [Peso_Lb], [Cod_Lote] FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Cod_Lote] = @Cod_Lote WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Peso_Lb] = @original_Peso_Lb AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="original_Peso_Lb" Type="Double" />
            <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="Peso_Lb" Type="Double" />
            <asp:Parameter Name="Cod_Lote" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Peso_Lb" Type="Double" />
            <asp:Parameter Name="Cod_Lote" Type="Int32" />
            <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
            <asp:Parameter Name="original_Peso_Lb" Type="Double" />
            <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </p>
        <asp:Panel ID="Panel2" runat="server" style="width: 429px; height: 544px; position: absolute; left: 277px; top: 642px" Visible="False">
            <strong>
            <asp:Label ID="Label8" runat="server" style="font-size: small" Text="Añadir Paquete a lote"></asp:Label>
            <br />
            </strong><span style="font-size: small">A<span style="font-weight: bold">gregue el numero de lote en Cod_Lote</span></span><asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource8" ForeColor="#333333" GridLines="None" style="font-size: x-small" Width="343px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Cod_Lote" HeaderText="Cod_Lote" SortExpression="Cod_Lote" />
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
            <span style="font-weight: bold; font-size: small">Cambiar de estados los paquetes<br /> </span>
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource9" ForeColor="#333333" GridLines="None" style="font-size: x-small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
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
        </asp:Panel>
        <p>
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Categoria]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Categoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Categoria] = @Categoria WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))">
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
        </p>
        <p style="height: 248px">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Lote] WHERE [Cod_lote] = @original_Cod_lote AND (([FechaEnvio] = @original_FechaEnvio) OR ([FechaEnvio] IS NULL AND @original_FechaEnvio IS NULL)) AND (([FechaVuelo] = @original_FechaVuelo) OR ([FechaVuelo] IS NULL AND @original_FechaVuelo IS NULL)) AND (([Cod_Paquete] = @original_Cod_Paquete) OR ([Cod_Paquete] IS NULL AND @original_Cod_Paquete IS NULL))" InsertCommand="INSERT INTO [Lote] ([Cod_lote], [FechaEnvio], [FechaVuelo], [Cod_Paquete]) VALUES (@Cod_lote, @FechaEnvio, @FechaVuelo, @Cod_Paquete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Lote]" UpdateCommand="UPDATE [Lote] SET [FechaEnvio] = @FechaEnvio, [FechaVuelo] = @FechaVuelo, [Cod_Paquete] = @Cod_Paquete WHERE [Cod_lote] = @original_Cod_lote AND (([FechaEnvio] = @original_FechaEnvio) OR ([FechaEnvio] IS NULL AND @original_FechaEnvio IS NULL)) AND (([FechaVuelo] = @original_FechaVuelo) OR ([FechaVuelo] IS NULL AND @original_FechaVuelo IS NULL)) AND (([Cod_Paquete] = @original_Cod_Paquete) OR ([Cod_Paquete] IS NULL AND @original_Cod_Paquete IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_lote" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_FechaEnvio" />
                    <asp:Parameter DbType="Date" Name="original_FechaVuelo" />
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_lote" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="FechaEnvio" />
                    <asp:Parameter DbType="Date" Name="FechaVuelo" />
                    <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="FechaEnvio" />
                    <asp:Parameter DbType="Date" Name="FechaVuelo" />
                    <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                    <asp:Parameter Name="original_Cod_lote" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_FechaEnvio" />
                    <asp:Parameter DbType="Date" Name="original_FechaVuelo" />
                    <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Cod_lote" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="50px" style="font-size: small" Visible="False" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Cod_lote" HeaderText="Cod_lote" ReadOnly="True" SortExpression="Cod_lote" />
                    <asp:BoundField DataField="FechaEnvio" HeaderText="FechaEnvio" SortExpression="FechaEnvio" />
                    <asp:BoundField DataField="FechaVuelo" HeaderText="FechaVuelo" SortExpression="FechaVuelo" />
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" SortExpression="Cod_Paquete" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br />
        </p>

        <p style="height: 264px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 123px">
                        <asp:Label ID="Label2" runat="server" Text="NoCasilla" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 207px">
                        <asp:TextBox ID="txtcasilla" runat="server" Height="35px" style="font-size: medium" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btfactura" runat="server" OnClick="btfactura_Click" style="font-size: small" Text="Facturar" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 123px">
                        <asp:Label ID="lbusuarios" runat="server" style="font-size: medium"></asp:Label>
                    </td>
                    <td style="width: 207px">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [Peso_Lb], [Valor_final], [EstadoP], [Cod_Sede], [Categoria], [Cod_Paquete] FROM [Paquete] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Peso_Lb] = @original_Peso_Lb AND [Valor_final] = @original_Valor_final AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Peso_Lb], [Valor_final], [EstadoP], [Cod_Sede], [Categoria], [Cod_Paquete]) VALUES (@Peso_Lb, @Valor_final, @EstadoP, @Cod_Sede, @Categoria, @Cod_Paquete)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Paquete] SET [Peso_Lb] = @Peso_Lb, [Valor_final] = @Valor_final, [EstadoP] = @EstadoP, [Cod_Sede] = @Cod_Sede, [Categoria] = @Categoria WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Peso_Lb] = @original_Peso_Lb AND [Valor_final] = @original_Valor_final AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Categoria" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Categoria" Type="String" />
                                <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbusuarios" Name="UsuarioC" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Categoria" Type="String" />
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Categoria" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 123px">&nbsp;</td>
                    <td style="width: 207px">&nbsp;</td>
                    <td style="font-size: small">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Imprimir" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gvpaquetes" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvpaquetes_SelectedIndexChanged" style="font-size: small" Width="183px" DataKeyNames="Cod_Paquete">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
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
        <p style="height: 234px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 222px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 222px">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" style="font-size: small" Visible="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                                <asp:BoundField DataField="CasillaInter" HeaderText="CasillaInter" SortExpression="CasillaInter" />
                                <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
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
                    </td>
                    <td style="width: 192px"><strong>
                        <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Autorizados para Devolución" Visible="False"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:Label ID="lbapellido" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbdireccion" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 222px">&nbsp;</td>
                    <td style="width: 192px">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbtotal" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [NombreC], [CasillaInter], [Pago] FROM [Cliente]"></asp:SqlDataSource>
        </p>
        <p style="height: 47px">&nbsp;</p>
        <table style="width: 100%;">
            <tr>
                <td style="width: 170px"><strong>
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Buscar Cliente" Visible="False"></asp:Label>
                    </strong></td>
                <td style="width: 201px">
                    <asp:TextBox ID="txtbuscar" runat="server" Height="26px" OnTextChanged="txtbuscar_TextChanged" style="font-size: medium" Visible="False" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-size: medium" Text="Buscar" Visible="False" />
                </td>
            </tr>
            <tr>
                <td style="width: 170px"></td>
                <td style="width: 201px"></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 170px">
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [UsuarioC], [NombreC], [ApellidoC], [NoCasilla] FROM [Cliente] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtbuscar" Name="UsuarioC" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 201px">
                    <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" Height="180px" style="font-size: small" Visible="False" Width="355px" DataKeyNames="UsuarioC">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" SortExpression="UsuarioC" ReadOnly="True" />
                            <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                            <asp:BoundField DataField="ApellidoC" HeaderText="ApellidoC" SortExpression="ApellidoC" />
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
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" Height="284px" Visible="False">
            <table style="width:100%;">
                <tr>
                    <td style="width: 271px">
                        <asp:FileUpload ID="FileUpload1" runat="server" style="font-size: small" />
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" style="font-size: small" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 271px">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="font-size: small" Text="Subir" />
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="font-size: small" Text="Cargar" />
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" style="font-size: small" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 271px">
                        <asp:GridView ID="GridView5" runat="server" style="font-size: small">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
