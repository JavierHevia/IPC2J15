<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="WebApplication1.Administrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center" style="height: 37px">
            <asp:Label ID="Label1" runat="server" style="color: #FF3300" Text="¡Bienvenido Admnistrador!"></asp:Label>
        </p>
        <p style="height: 39px">
            <table style="width: 100%; height: 37px;">
                <tr>
                    <td class="text-center" style="width: 184px">
                        <asp:Button ID="btcargararchivos" runat="server" OnClick="btcargararchivos_Click" style="font-size: medium" Text="Carga de Archivo" Width="136px" />
                    </td>
                    <td class="text-center" style="width: 183px">
                        <asp:Button ID="Button2" runat="server" style="font-size: medium" Text="Modificar Datos de Impuestos" Width="223px" OnClick="Button2_Click" />
                    </td>
                    <td class="text-center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 184px">&nbsp;</td>
                    <td style="width: 183px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px">&nbsp;</td>
                    <td style="width: 183px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 58px">
            <p style="height: 255px; width: 724px;">
            <asp:SqlDataSource ID="sqdimpuesto" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]"></asp:SqlDataSource>
            <table style="width: 100%; height: 159px;">
                <tr>
                    <td style="height: 30px; width: 306px"><strong>
                        <asp:Label ID="Label2" runat="server" style="font-size: medium" Text="Agregar, Modificar e Inhabilitar  Cobros" Visible="False"></asp:Label>
                        </strong></td>
                    <td style="height: 30px; width: 242px;"><strong>
                        <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Comisión" Visible="False"></asp:Label>
                        </strong></td>
                    <td style="height: 30px"></td>
                </tr>
                <tr>
                    <td style="height: 92px; width: 306px">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Categoria" DataSourceID="sqdimpuesto" ForeColor="#333333" GridLines="None" Height="50px" style="font-size: small" Width="125px" Visible="False">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Categoria" HeaderText="Categoria" ReadOnly="True" SortExpression="Categoria" />
                                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                    <td style="height: 92px; width: 242px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Sede" DataSourceID="sdssede" ForeColor="#333333" GridLines="None" style="font-size: small" Visible="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Cod_Sede" HeaderText="Cod_Sede" ReadOnly="True" SortExpression="Cod_Sede" />
                                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
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
                    <td style="height: 92px">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 306px">&nbsp;</td>
                    <td style="width: 242px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 71px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Departamento] WHERE [Cod_Departamento] = @original_Cod_Departamento AND [Nombre] = @original_Nombre AND [Cod_Sucursal] = @original_Cod_Sucursal" InsertCommand="INSERT INTO [Departamento] ([Cod_Departamento], [Nombre], [Cod_Sucursal]) VALUES (@Cod_Departamento, @Nombre, @Cod_Sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [Nombre] = @Nombre, [Cod_Sucursal] = @Cod_Sucursal WHERE [Cod_Departamento] = @original_Cod_Departamento AND [Nombre] = @original_Nombre AND [Cod_Sucursal] = @original_Cod_Sucursal">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sdssede" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Sede] WHERE [Cod_Sede] = @original_Cod_Sede AND [Pais] = @original_Pais AND [Direccion] = @original_Direccion AND [Comision] = @original_Comision AND [Telefono1] = @original_Telefono1 AND (([Telefono2] = @original_Telefono2) OR ([Telefono2] IS NULL AND @original_Telefono2 IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))" InsertCommand="INSERT INTO [Sede] ([Cod_Sede], [Pais], [Direccion], [Comision], [Telefono1], [Telefono2], [Estado]) VALUES (@Cod_Sede, @Pais, @Direccion, @Comision, @Telefono1, @Telefono2, @Estado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Pais] = @Pais, [Direccion] = @Direccion, [Comision] = @Comision, [Telefono1] = @Telefono1, [Telefono2] = @Telefono2, [Estado] = @Estado WHERE [Cod_Sede] = @original_Cod_Sede AND [Pais] = @original_Pais AND [Direccion] = @original_Direccion AND [Comision] = @original_Comision AND [Telefono1] = @original_Telefono1 AND (([Telefono2] = @original_Telefono2) OR ([Telefono2] IS NULL AND @original_Telefono2 IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_Telefono2" Type="Int32" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="Telefono2" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Telefono1" Type="Int32" />
                    <asp:Parameter Name="Telefono2" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Telefono1" Type="Int32" />
                    <asp:Parameter Name="original_Telefono2" Type="Int32" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 484px">
            <table style="width: 100%; height: 151px;">
                <tr>
                    <td style="width: 281px">
                <asp:FileUpload ID="fusubir" runat="server" style="font-size: small" Visible="False" Height="32px" />
                    </td>
                    <td style="width: 166px">
                        <asp:Label ID="Label3" runat="server" style="font-size: small"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" style="font-size: small" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 281px">
                        <asp:Button ID="btsubir" runat="server" OnClick="btsubir_Click" style="font-size: small" Text="Subir" Visible="False" />
                        <asp:Button ID="btcargar" runat="server" OnClick="btcargar_Click1" style="font-size: small" Text="Cargar" Visible="False" />
                    </td>
                    <td style="width: 166px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 281px">&nbsp;</td>
                    <td style="width: 166px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" style="font-size: small">
            </asp:GridView>
        </p>
        <p style="height: 15px">&nbsp;</p>
    </div>

</asp:Content>
