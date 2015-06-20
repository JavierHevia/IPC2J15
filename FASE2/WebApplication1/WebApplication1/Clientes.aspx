<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="WebApplication1.Clientes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>&nbsp;</p>
        <p style="height: 230px">
            <table style="width: 100%; height: 196px;">
                <tr>
                    <td style="width: 200px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: small" Text="Consulta de Paquetes" Width="183px" />
                    </td>
                    <td style="width: 203px">
                        <asp:Button ID="Button3" runat="server" style="font-size: small" Text="Cotización" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [UsuarioC]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @UsuarioC)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [UsuarioC] = @UsuarioC WHERE [Cod_Paquete] = @original_Cod_Paquete">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
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
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txttotal" Name="UsuarioC" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Valor_Costo" Type="Double" />
                                <asp:Parameter Name="Comision" Type="Double" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                                <asp:Parameter Name="TipoImpuesto" Type="String" />
                                <asp:Parameter Name="Stock" Type="Int32" />
                                <asp:Parameter Name="UsuarioC" Type="String" />
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <asp:Button ID="Button2" runat="server" style="font-size: small" Text="Información invidual de Paquetes " Height="39px" OnClick="Button2_Click" Width="186px" />
                    </td>
                    <td style="width: 203px">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-size: small" Text="Edición de Perfil" Width="110px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 200px"><strong>
                        <asp:Label ID="txtnombre" runat="server" style="color: #0066CC"></asp:Label>
                        </strong></td>
                    <td style="width: 203px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 55px">
            <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300"></asp:Label>
        </p>
        <p style="height: 326px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="font-size: small" UseAccessibleHeader="False" Height="275px" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
                    <asp:BoundField DataField="Valor_Costo" HeaderText="Valor_Costo" SortExpression="Valor_Costo" />
                    <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                    <asp:BoundField DataField="Valor_final" HeaderText="Valor_final" SortExpression="Valor_final" />
                    <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" SortExpression="TipoImpuesto" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" SortExpression="UsuarioC" />
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
        <p style="height: 162px">
            <table style="width: 100%; height: 151px;">
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Costo Paquete" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:TextBox ID="txtcostopaquete" runat="server" Height="43px" style="font-size: small" Visible="False"></asp:TextBox>
                    </td>
                    <td class="text-right">
                        <asp:Button ID="c" runat="server" OnClick="Calcular_Click" Text="Calcular" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label2" runat="server" Text="Peso" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:TextBox ID="txtpeso" runat="server" Height="35px" style="font-size: small" Visible="False"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" Text="Total " Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="Label3" runat="server" Text="Impuesto" Visible="False"></asp:Label>
                    </td>
                    <td style="width: 209px">
                        <asp:DropDownList ID="ddImpuesto" runat="server" style="font-size: small" Visible="False">
                            <asp:ListItem>VideoJuegos Blu-Ray 15%</asp:ListItem>
                            <asp:ListItem>VideoCintas 15%</asp:ListItem>
                            <asp:ListItem>Art. Cuero 15%</asp:ListItem>
                            <asp:ListItem>Telefonia, 15%</asp:ListItem>
                            <asp:ListItem>Deportivo 10%</asp:ListItem>
                            <asp:ListItem>Zapatos 15%</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-right">
                        <asp:TextBox ID="txttotal" runat="server" Height="46px" Visible="False" Width="178px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <p style="height: 28px">&nbsp;</p>
        <p style="height: 212px">&nbsp;</p>
        <p style="height: 37px">&nbsp;</p>
        <p style="height: 350px">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="199px" style="font-size: small" Visible="False" Width="436px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="NombreC" HeaderText="NombreC" SortExpression="NombreC" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" SortExpression="Telefono1" />
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
        <p style="height: 232px">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC AND [Contraseña] = @original_Contraseña AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND [DPI] = @original_DPI AND [Direccion] = @original_Direccion AND (([NoTarjeta] = @original_NoTarjeta) OR ([NoTarjeta] IS NULL AND @original_NoTarjeta IS NULL)) AND (([TipoTarjeta] = @original_TipoTarjeta) OR ([TipoTarjeta] IS NULL AND @original_TipoTarjeta IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Telefono1] = @original_Telefono1) OR ([Telefono1] IS NULL AND @original_Telefono1 IS NULL)) AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL))" InsertCommand="INSERT INTO [Cliente] ([UsuarioC], [Contraseña], [NombreC], [ApellidoC], [DPI], [Direccion], [NoTarjeta], [TipoTarjeta], [Telefono], [Telefono1], [NoCasilla]) VALUES (@UsuarioC, @Contraseña, @NombreC, @ApellidoC, @DPI, @Direccion, @NoTarjeta, @TipoTarjeta, @Telefono, @Telefono1, @NoCasilla)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cliente] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" UpdateCommand="UPDATE [Cliente] SET [Contraseña] = @Contraseña, [NombreC] = @NombreC, [ApellidoC] = @ApellidoC, [DPI] = @DPI, [Direccion] = @Direccion, [NoTarjeta] = @NoTarjeta, [TipoTarjeta] = @TipoTarjeta, [Telefono] = @Telefono, [Telefono1] = @Telefono1, [NoCasilla] = @NoCasilla WHERE [UsuarioC] = @original_UsuarioC AND [Contraseña] = @original_Contraseña AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND [DPI] = @original_DPI AND [Direccion] = @original_Direccion AND (([NoTarjeta] = @original_NoTarjeta) OR ([NoTarjeta] IS NULL AND @original_NoTarjeta IS NULL)) AND (([TipoTarjeta] = @original_TipoTarjeta) OR ([TipoTarjeta] IS NULL AND @original_TipoTarjeta IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Telefono1] = @original_Telefono1) OR ([Telefono1] IS NULL AND @original_Telefono1 IS NULL)) AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_NombreC" Type="String" />
                    <asp:Parameter Name="original_ApellidoC" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="original_TipoTarjeta" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UsuarioC" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="NombreC" Type="String" />
                    <asp:Parameter Name="ApellidoC" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="TipoTarjeta" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="NoCasilla" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtnombre" Name="UsuarioC" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="NombreC" Type="String" />
                    <asp:Parameter Name="ApellidoC" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="TipoTarjeta" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="NoCasilla" Type="Int32" />
                    <asp:Parameter Name="original_UsuarioC" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_NombreC" Type="String" />
                    <asp:Parameter Name="original_ApellidoC" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_NoTarjeta" Type="Int32" />
                    <asp:Parameter Name="original_TipoTarjeta" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 183px">&nbsp;</p>
    </div>

</asp:Content>

