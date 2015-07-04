<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="WebApplication1.Clientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
            <table style="width: 100%; height: 54px;">
                <tr>
                    <td style="width: 200px">
                    </td>
                    <td style="width: 203px">
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC], [EstadoP], [Cod_Sede], [Cod_Lote]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC, @EstadoP, @Cod_Sede, @Cod_Lote)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC, [EstadoP] = @EstadoP, [Cod_Sede] = @Cod_Sede, [Cod_Lote] = @Cod_Lote WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL))" ConflictDetection="CompareAllValues">
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
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
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
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Cod_Lote" Type="Int32" />
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
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Cod_Lote" Type="Int32" />
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
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 33px;">
                        &nbsp;</td>
                    <td style="width: 203px; height: 33px;">
                    </td>
                    <td style="height: 33px"></td>
                </tr>
                <tr>
                    <td style="width: 200px"><strong>
                        <asp:Label ID="txtnombre" runat="server" style="color: #0066CC"></asp:Label>
                        </strong></td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <p style="height: 40px" class="text-center">
            ¡Bienvenido Cliente!</p>
        <p style="height: 29px" class="text-center">
            <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300"></asp:Label>
        &nbsp;Consulta de Paquetes Disponibles</p>
        <p style="height: 320px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small; margin-right: 0px;" UseAccessibleHeader="False" Height="275px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
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
            <p class="text-center">
                <span style="font-size: medium"><strong>Cotización de Paquete por peso e impuesto</strong></span></p>
        <p style="height: 162px">
            <table style="width: 100%; height: 242px;">
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Costo Paquete"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:TextBox ID="txtcostopaquete" runat="server" Height="43px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td class="text-right">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="navbar-header" DataSourceID="SqlDataSource4" DataTextField="Pais" DataValueField="Pais" style="font-size: small; width: 91px; height: 16px; left: 402px; top: 827px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [Pais] FROM [Sede]"></asp:SqlDataSource>
                        <asp:Button ID="c" runat="server" OnClick="Calcular_Click" Text="Calcular" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label2" runat="server" Text="Peso"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:TextBox ID="txtpeso" runat="server" Height="35px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" Text="Total "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label3" runat="server" Text="Impuesto"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:DropDownList ID="ddImpuesto" runat="server" DataSourceID="SqlDataSource3" DataTextField="Categoria" DataValueField="Categoria" style="font-size: small">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [Categoria] FROM [Impuesto]"></asp:SqlDataSource>
                    </td>
                    <td class="text-right">
                        <asp:TextBox ID="txttotal" runat="server" Height="41px" Width="178px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <p style="height: 57px">&nbsp;</p>
            <p class="text-center">
                Información de Paquetes</p>
        <p style="height: 287px">
            <asp:Label ID="lbmostrarproducto" runat="server" style="color: #0033CC" Visible="False"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Paquete], [Nombre], [Peso_Lb], [Valor_final], [TipoImpuesto], [Stock], [EstadoP], [FechaE] FROM [Paquete]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" style="font-size: small" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
                    <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" SortExpression="TipoImpuesto" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="FechaE" HeaderText="FechaE" SortExpression="FechaE" />
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
        <p style="height: 37px" class="text-center">Edición de su Información</p>
        <p style="height: 350px">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="199px" style="font-size: small" Width="525px" DataKeyNames="UsuarioC">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" SortExpression="Telefono1" />
                    <asp:BoundField DataField="TipoTarjeta" HeaderText="TipoTarjeta" SortExpression="TipoTarjeta" />
                    <asp:BoundField DataField="NoTarjeta" HeaderText="NoTarjeta" SortExpression="NoTarjeta" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [NombreC], [Direccion], [Telefono], [Telefono1], [TipoTarjeta], [NoTarjeta], [UsuarioC] FROM [Cliente] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [Direccion] = @original_Direccion AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Telefono1] = @original_Telefono1) OR ([Telefono1] IS NULL AND @original_Telefono1 IS NULL)) AND (([TipoTarjeta] = @original_TipoTarjeta) OR ([TipoTarjeta] IS NULL AND @original_TipoTarjeta IS NULL)) AND (([NoTarjeta] = @original_NoTarjeta) OR ([NoTarjeta] IS NULL AND @original_NoTarjeta IS NULL))" InsertCommand="INSERT INTO [Cliente] ([NombreC], [Direccion], [Telefono], [Telefono1], [TipoTarjeta], [NoTarjeta], [UsuarioC]) VALUES (@NombreC, @Direccion, @Telefono, @Telefono1, @TipoTarjeta, @NoTarjeta, @UsuarioC)" UpdateCommand="UPDATE [Cliente] SET [NombreC] = @NombreC, [Direccion] = @Direccion, [Telefono] = @Telefono, [Telefono1] = @Telefono1, [TipoTarjeta] = @TipoTarjeta, [NoTarjeta] = @NoTarjeta WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [Direccion] = @original_Direccion AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Telefono1] = @original_Telefono1) OR ([Telefono1] IS NULL AND @original_Telefono1 IS NULL)) AND (([TipoTarjeta] = @original_TipoTarjeta) OR ([TipoTarjeta] IS NULL AND @original_TipoTarjeta IS NULL)) AND (([NoTarjeta] = @original_NoTarjeta) OR ([NoTarjeta] IS NULL AND @original_NoTarjeta IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_NombreC" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_TipoTarjeta" Type="String" />
                    <asp:Parameter Name="original_NoTarjeta" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NombreC" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="TipoTarjeta" Type="String" />
                    <asp:Parameter Name="NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="UsuarioC" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtnombre" Name="UsuarioC" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreC" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="TipoTarjeta" Type="String" />
                    <asp:Parameter Name="NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_NombreC" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_TipoTarjeta" Type="String" />
                    <asp:Parameter Name="original_NoTarjeta" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="text-center">
            Ingreso de Comprobante de Factura</p>
            <p class="text-center">
                <table style="width: 489px;">
                    <tr>
                        <td style="width: 136px; font-size: medium"><strong>Nombre Producto</strong></td>
                        <td style="width: 207px">
                            <asp:TextBox ID="txtproductosubir" runat="server" Height="29px" style="font-size: small" Width="162px"></asp:TextBox>
                        </td>
                        <td class="text-center" style="width: 89px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="font-size: medium" Text="Verificar" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px">&nbsp;</td>
                        <td style="width: 207px">&nbsp;</td>
                        <td style="width: 89px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 136px">&nbsp;</td>
                        <td style="width: 207px">&nbsp;</td>
                        <td style="width: 89px">&nbsp;</td>
                    </tr>
                </table>
            </p>
            <p>
                <table style="width: 100%; height: 166px;">
                    <tr>
                        <td style="width: 288px">
                            <asp:FileUpload ID="fuimagenfactura" runat="server" style="font-size: medium" Height="39px" Visible="False" />
                        </td>
                        <td style="width: 57px">
                            <asp:Label ID="lblink" runat="server" style="font-size: small"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 288px; height: 25px">
                            <br />
                        </td>
                        <td style="width: 57px; height: 25px">
                            <asp:Button ID="btsubirimagen" runat="server" OnClick="btsubirimagen_Click" style="font-size: medium; width: 55px" Text="Subir" Visible="False" />
                        </td>
                        <td style="height: 25px"></td>
                    </tr>
                    <tr>
                        <td style="width: 288px">
                            &nbsp;</td>
                    </tr>
                </table>
            </p>
    </div>

</asp:Content>

