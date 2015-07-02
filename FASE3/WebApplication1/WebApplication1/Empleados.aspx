<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="WebApplication1.Empleados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="height: 3466px; width: 713px;">
        <p class="text-center">
            ¡Bienvenido Empleado!</p>

        <p class="text-center">

            <asp:Label ID="Label9" runat="server" Text="Autorización de Clientes"></asp:Label>

        </p>

        <p>
            <table style="width:100%; height: 116px;">
                <tr>
                    <td style="font-size: small; width: 388px">
                        <asp:DropDownList ID="ddautorización" runat="server" DataSourceID="SqlDataSource1" DataTextField="UsuarioC" DataValueField="UsuarioC" Height="56px" Width="205px">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="Autorizar" />
                    </td>
                    <td>
                        <asp:Label ID="lbmensaje" runat="server" style="color: #FF3300" Width="100%"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [UsuarioC] FROM [Cliente]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC" InsertCommand="INSERT INTO [Cliente] ([UsuarioC]) VALUES (@UsuarioC)">
                            <DeleteParameters>
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UsuarioC" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 388px; font-size: medium;">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [Cod_Sede], [Cod_Lote], [EstadoP]) VALUES (@Cod_Paquete, @Nombre, @Peso_Lb, @Valor_Costo, @Comision, @Valor_final, @TipoImpuesto, @Stock, @Cod_Sede, @Cod_Lote, @EstadoP)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Paquete], [Nombre], [Peso_Lb], [Valor_Costo], [Comision], [Valor_final], [TipoImpuesto], [Stock], [Cod_Sede], [Cod_Lote], [EstadoP] FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Peso_Lb] = @Peso_Lb, [Valor_Costo] = @Valor_Costo, [Comision] = @Comision, [Valor_final] = @Valor_final, [TipoImpuesto] = @TipoImpuesto, [Stock] = @Stock, [Cod_Sede] = @Cod_Sede, [Cod_Lote] = @Cod_Lote, [EstadoP] = @EstadoP WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND [Peso_Lb] = @original_Peso_Lb AND [Valor_Costo] = @original_Valor_Costo AND (([Comision] = @original_Comision) OR ([Comision] IS NULL AND @original_Comision IS NULL)) AND [Valor_final] = @original_Valor_final AND [TipoImpuesto] = @original_TipoImpuesto AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Cod_Sede] = @original_Cod_Sede) OR ([Cod_Sede] IS NULL AND @original_Cod_Sede IS NULL)) AND (([Cod_Lote] = @original_Cod_Lote) OR ([Cod_Lote] IS NULL AND @original_Cod_Lote IS NULL)) AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Nombre" Type="String" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                                <asp:Parameter Name="original_Comision" Type="Double" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                                <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                                <asp:Parameter Name="original_Stock" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
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
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Cod_Lote" Type="Int32" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="Valor_Costo" Type="Double" />
                                <asp:Parameter Name="Comision" Type="Double" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                                <asp:Parameter Name="TipoImpuesto" Type="String" />
                                <asp:Parameter Name="Stock" Type="Int32" />
                                <asp:Parameter Name="Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="Cod_Lote" Type="Int32" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Nombre" Type="String" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                                <asp:Parameter Name="original_Comision" Type="Double" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                                <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                                <asp:Parameter Name="original_Stock" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                                <asp:Parameter Name="original_Cod_Lote" Type="Int32" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size: small; width: 388px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p class="text-center" style="height: 29px">
            <strong>Agregar Paquetes</strong></p>
        <p>
            &nbsp<table style="width:100%;">
                <tr>
                    <td style="width: 139px">
                        <asp:Label ID="Codigo" runat="server" style="font-size: medium" Text="Codigo"></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" style="font-size: medium" Text="Nombre"></asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" style="font-size: medium" Text="Peso"></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server" style="font-size: medium" Text="ValorCosto"></asp:Label>
                        <br />
                        <asp:Label ID="Label14" runat="server" style="font-size: medium" Text="Valor Final"></asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" style="font-size: medium" Text="Stock"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 234px">
                        <asp:TextBox ID="txtcodigop" runat="server" style="font-size: medium"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtnombre" runat="server" style="font-size: medium"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtpeso" runat="server" style="font-size: medium"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtvalorcosto" runat="server" style="font-size: medium"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtvalorfinal" runat="server" style="font-size: medium"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtstock" runat="server" style="font-size: medium"></asp:TextBox>
&nbsp;&nbsp;
                        <br />
                    </td>
                    <td>
                        <br />
                        <span style="font-size: small">
                        <asp:DropDownList ID="ddproductosdesac" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nombre" DataValueField="Nombre" Height="16px" Width="130px">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Desactivar" />
                        </span></td>
                </tr>
                <tr>
                    <td style="width: 139px">
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" style="font-size: small" Text="Guardar" />
                    </td>
                    <td style="font-size: small; width: 234px">&nbsp;</td>
                    <td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Nombre] FROM [Paquete]">
            </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 139px">&nbsp;</td>
                    <td style="width: 234px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p class="text-center">
            &nbsp;Facturación de Cliente<br />
        </p>

        <p style="height: 293px">
            <table style="width: 100%; height: 135px;">
                <tr>
                    <td style="width: 569px">
                        <asp:Label ID="Label2" runat="server" Text="NoCasilla"></asp:Label>
                    </td>
                    <td style="width: 126px">
                        
                        <asp:TextBox ID="txtcasilla" runat="server" Height="31px" style="font-size: small" Width="144px"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:Button ID="btfactura" runat="server" OnClick="btfactura_Click" style="font-size: small; " Text="Facturar" Height="33px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 569px">
                        <asp:Label ID="lbusuarios" runat="server" style="font-size: medium"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [Cod_Paquete], [Valor_Costo], [EstadoP], [Peso_Lb], [UsuarioC] FROM [Paquete] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Valor_Costo] = @original_Valor_Costo AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND [Peso_Lb] = @original_Peso_Lb AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Valor_Costo], [EstadoP], [Peso_Lb], [UsuarioC]) VALUES (@Cod_Paquete, @Valor_Costo, @EstadoP, @Peso_Lb, @UsuarioC)" UpdateCommand="UPDATE [Paquete] SET [Valor_Costo] = @Valor_Costo, [EstadoP] = @EstadoP, [Peso_Lb] = @Peso_Lb, [UsuarioC] = @UsuarioC WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Valor_Costo] = @original_Valor_Costo AND (([EstadoP] = @original_EstadoP) OR ([EstadoP] IS NULL AND @original_EstadoP IS NULL)) AND [Peso_Lb] = @original_Peso_Lb AND (([UsuarioC] = @original_UsuarioC) OR ([UsuarioC] IS NULL AND @original_UsuarioC IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="Valor_Costo" Type="Double" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="UsuarioC" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbusuarios" Name="UsuarioC" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Valor_Costo" Type="Double" />
                                <asp:Parameter Name="EstadoP" Type="String" />
                                <asp:Parameter Name="Peso_Lb" Type="Double" />
                                <asp:Parameter Name="UsuarioC" Type="String" />
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Valor_Costo" Type="Double" />
                                <asp:Parameter Name="original_EstadoP" Type="String" />
                                <asp:Parameter Name="original_Peso_Lb" Type="Double" />
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 126px">
                        <asp:Label ID="fecha" runat="server" style="font-size: medium"></asp:Label>
                        <br />
                        <asp:Label ID="fechas" runat="server" style="font-size: medium" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Imprimir" style="font-size: small" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 569px">
            <asp:GridView ID="gvpaquetes" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvpaquetes_SelectedIndexChanged" style="font-size: small" Width="16px" DataKeyNames="Cod_Paquete">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" SortExpression="Cod_Paquete" ReadOnly="True" />
                    <asp:BoundField DataField="Valor_Costo" HeaderText="Valor_Costo" SortExpression="Valor_Costo" />
                    <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                    <asp:BoundField DataField="Peso_Lb" HeaderText="Peso_Lb" SortExpression="Peso_Lb" />
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
                    </td>
                    <td style="width: 126px">
                        <asp:Label ID="lbnombrepaquete" runat="server" style="font-size: small" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lbvalorfinal" runat="server" style="font-size: small" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="lbnombrecliente" runat="server" style="font-size: medium" Visible="False"></asp:Label>
                    </td>
                    <td style="font-size: small">
                        &nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 33px" class="text-center">
            <strong>
                        <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Autorizados para Devolución"></asp:Label>
                        </strong>
        </p>
        <p style="height: 284px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 258px"></td>
                </tr>
                <tr>
                    <td style="width: 258px">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" style="font-size: small; margin-right: 14px;" Width="273px" DataKeyNames="NoFactura">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="NoFactura" HeaderText="NoFactura" SortExpression="NoFactura" ReadOnly="True" InsertVisible="False" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
                                <asp:BoundField DataField="FechadeEmision" HeaderText="FechadeEmision" SortExpression="FechadeEmision" />
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
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT * FROM [Factura]"></asp:SqlDataSource>
                    </td>
                    <td style="width: 62px">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbapellido" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbdireccion" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 258px">&nbsp;</td>
                    <td style="width: 62px">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbtotal" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p style="height: 35px" class="text-center">Busqueda de Cliente por Nombre</p>
        <table style="width: 100%;">
            <tr>
                <td style="width: 170px"><strong>
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Buscar Cliente"></asp:Label>
                    </strong></td>
                <td style="width: 201px">
                    <asp:TextBox ID="txtbuscar" runat="server" Width="187px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-size: medium" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td style="width: 170px; height: 3px;"></td>
                <td style="width: 201px; height: 3px;"></td>
                <td style="height: 3px"></td>
            </tr>
            <tr>
                <td style="width: 170px">
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" SelectCommand="SELECT [UsuarioC], [NombreC], [ApellidoC], [NoCasilla] FROM [Cliente] WHERE ([UsuarioC] LIKE '%' + @UsuarioC + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL))" InsertCommand="INSERT INTO [Cliente] ([UsuarioC], [NombreC], [ApellidoC], [NoCasilla]) VALUES (@UsuarioC, @NombreC, @ApellidoC, @NoCasilla)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Cliente] SET [NombreC] = @NombreC, [ApellidoC] = @ApellidoC, [NoCasilla] = @NoCasilla WHERE [UsuarioC] = @original_UsuarioC AND [NombreC] = @original_NombreC AND [ApellidoC] = @original_ApellidoC AND (([NoCasilla] = @original_NoCasilla) OR ([NoCasilla] IS NULL AND @original_NoCasilla IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_UsuarioC" Type="String" />
                            <asp:Parameter Name="original_NombreC" Type="String" />
                            <asp:Parameter Name="original_ApellidoC" Type="String" />
                            <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="UsuarioC" Type="String" />
                            <asp:Parameter Name="NombreC" Type="String" />
                            <asp:Parameter Name="ApellidoC" Type="String" />
                            <asp:Parameter Name="NoCasilla" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtbuscar" Name="UsuarioC" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NombreC" Type="String" />
                            <asp:Parameter Name="ApellidoC" Type="String" />
                            <asp:Parameter Name="NoCasilla" Type="Int32" />
                            <asp:Parameter Name="original_UsuarioC" Type="String" />
                            <asp:Parameter Name="original_NombreC" Type="String" />
                            <asp:Parameter Name="original_ApellidoC" Type="String" />
                            <asp:Parameter Name="original_NoCasilla" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 201px">
                    <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" Height="180px" style="font-size: small" Width="355px" DataKeyNames="UsuarioC" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
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
        <p>Carga CSV de Paquetes</p>
        <asp:Panel ID="Panel1" runat="server" Height="387px">
            <table style="width:100%; height: 275px;">
                <tr>
                    <td style="width: 271px">
                        <asp:FileUpload ID="FileUpload1" runat="server" style="font-size: small" Height="30px" />
                    </td>
                    <td style="width: 150px">
                        <asp:Label ID="Label5" runat="server" style="font-size: small"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 271px">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="font-size: small" Text="Subir" />
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="font-size: small" Text="Cargar" />
                    </td>
                    <td style="width: 150px">
                        <asp:Label ID="Label6" runat="server" style="font-size: small" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 271px">
                        <asp:GridView ID="GridView5" runat="server" style="font-size: small">
                        </asp:GridView>
                    </td>
                    <td style="width: 150px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <p class="text-center">Ingresar paquete manual por medio de imagen cargada</p>
        <p style="height: 508px">
            <table style="width:100%;">
                <tr>
                    <td style="font-size: medium; width: 280px"><strong>Factura ingresada por cliente</strong></td>
                    <td style="width: 40px"><span style="font-size: medium"></td>
                    <td><strong>Paquetes sin precio</strong></span></td>
                </tr>
                <tr>
                    <td style="width: 280px">
                        <asp:GridView ID="GridView8" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UsuarioC" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" style="font-size: small">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="UsuarioC" HeaderText="UsuarioC" ReadOnly="True" SortExpression="UsuarioC" />
                                <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
                                <asp:ImageField DataImageUrlField="Factura" DataImageUrlFormatString="~/Imagenes/{0}" HeaderText="Foto">
                                </asp:ImageField>
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
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Cliente] WHERE [UsuarioC] = @original_UsuarioC AND (([Pago] = @original_Pago) OR ([Pago] IS NULL AND @original_Pago IS NULL)) AND (([Factura] = @original_Factura) OR ([Factura] IS NULL AND @original_Factura IS NULL))" InsertCommand="INSERT INTO [Cliente] ([UsuarioC], [Pago], [Factura]) VALUES (@UsuarioC, @Pago, @Factura)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UsuarioC], [Pago], [Factura] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [Pago] = @Pago, [Factura] = @Factura WHERE [UsuarioC] = @original_UsuarioC AND (([Pago] = @original_Pago) OR ([Pago] IS NULL AND @original_Pago IS NULL)) AND (([Factura] = @original_Factura) OR ([Factura] IS NULL AND @original_Factura IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                                <asp:Parameter Name="original_Pago" Type="String" />
                                <asp:Parameter Name="original_Factura" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UsuarioC" Type="String" />
                                <asp:Parameter Name="Pago" Type="String" />
                                <asp:Parameter Name="Factura" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Pago" Type="String" />
                                <asp:Parameter Name="Factura" Type="String" />
                                <asp:Parameter Name="original_UsuarioC" Type="String" />
                                <asp:Parameter Name="original_Pago" Type="String" />
                                <asp:Parameter Name="original_Factura" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 40px">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Paquete" DataSourceID="SqlDataSource8" ForeColor="#333333" GridLines="None" style="font-size: small">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Cod_Paquete" HeaderText="Cod_Paquete" ReadOnly="True" SortExpression="Cod_Paquete" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
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
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Paquete] WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND (([Valor_final] = @original_Valor_final) OR ([Valor_final] IS NULL AND @original_Valor_final IS NULL))" InsertCommand="INSERT INTO [Paquete] ([Cod_Paquete], [Nombre], [Valor_final]) VALUES (@Cod_Paquete, @Nombre, @Valor_final)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Paquete], [Nombre], [Valor_final] FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [Nombre] = @Nombre, [Valor_final] = @Valor_final WHERE [Cod_Paquete] = @original_Cod_Paquete AND [Nombre] = @original_Nombre AND (([Valor_final] = @original_Valor_final) OR ([Valor_final] IS NULL AND @original_Valor_final IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Nombre" Type="String" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Valor_final" Type="Double" />
                                <asp:Parameter Name="original_Cod_Paquete" Type="Int32" />
                                <asp:Parameter Name="original_Nombre" Type="String" />
                                <asp:Parameter Name="original_Valor_final" Type="Double" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 280px">
                        <br />
                    </td>
                    <td style="width: 40px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 508px">&nbsp;</p>
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
