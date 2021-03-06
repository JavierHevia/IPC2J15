﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="WebApplication1.Administrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center" style="height: 37px">
            <asp:Label ID="Label1" runat="server" style="color: #FF3300" Text="¡Bienvenido Admnistrador!"></asp:Label>
        </p>
            <p style="height: 334px; width: 728px;">
            <asp:SqlDataSource ID="sqdimpuesto" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]" DeleteCommand="DELETE FROM [Impuesto] WHERE [TipoImpuesto] = @original_TipoImpuesto AND (([Impuesto] = @original_Impuesto) OR ([Impuesto] IS NULL AND @original_Impuesto IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))" InsertCommand="INSERT INTO [Impuesto] ([TipoImpuesto], [Impuesto], [Estado]) VALUES (@TipoImpuesto, @Impuesto, @Estado)" UpdateCommand="UPDATE [Impuesto] SET [Impuesto] = @Impuesto, [Estado] = @Estado WHERE [TipoImpuesto] = @original_TipoImpuesto AND (([Impuesto] = @original_Impuesto) OR ([Impuesto] IS NULL AND @original_Impuesto IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL))" ConflictDetection="CompareAllValues">
                <DeleteParameters>
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Impuesto" Type="Int32" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TipoImpuesto" Type="String" />
                    <asp:Parameter Name="Impuesto" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Impuesto" Type="Int32" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="original_TipoImpuesto" Type="String" />
                    <asp:Parameter Name="original_Impuesto" Type="Int32" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                </UpdateParameters>
                </asp:SqlDataSource>
            <table style="width: 100%; height: 272px;">
                <tr>
                    <td style="height: 30px; width: 590px"><strong>
                        <asp:Label ID="Label2" runat="server" style="font-size: medium" Text="Agregar, Modificar e Inhabilitar  Cobros"></asp:Label>
                        </strong></td>
                    <td style="height: 30px; width: 290px;"><strong>
                        <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Comisión"></asp:Label>
                        </strong></td>
                    <td style="height: 30px"></td>
                </tr>
                <tr>
                    <td style="height: 92px; width: 590px">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="TipoImpuesto" DataSourceID="sqdimpuesto" ForeColor="#333333" GridLines="None" Height="50px" style="font-size: small" Width="125px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="TipoImpuesto" HeaderText="TipoImpuesto" ReadOnly="True" SortExpression="TipoImpuesto" />
                                <asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                    <td style="height: 92px; width: 290px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Sede" DataSourceID="sdssede" ForeColor="#333333" GridLines="None" style="font-size: small" Height="155px" Width="345px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Cod_Sede" HeaderText="Cod_Sede" ReadOnly="True" SortExpression="Cod_Sede" />
                                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                <asp:BoundField DataField="CobroLb" HeaderText="CobroLb" SortExpression="CobroLb" />
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
            <asp:SqlDataSource ID="sdssede" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Sede] WHERE [Cod_Sede] = @original_Cod_Sede AND [Comision] = @original_Comision AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL)) AND (([CobroLb] = @original_CobroLb) OR ([CobroLb] IS NULL AND @original_CobroLb IS NULL))" InsertCommand="INSERT INTO [Sede] ([Cod_Sede], [Comision], [Estado], [CobroLb]) VALUES (@Cod_Sede, @Comision, @Estado, @CobroLb)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Sede], [Comision], [Estado], [CobroLb] FROM [Sede]" UpdateCommand="UPDATE [Sede] SET [Comision] = @Comision, [Estado] = @Estado, [CobroLb] = @CobroLb WHERE [Cod_Sede] = @original_Cod_Sede AND [Comision] = @original_Comision AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL)) AND (([CobroLb] = @original_CobroLb) OR ([CobroLb] IS NULL AND @original_CobroLb IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                    <asp:Parameter Name="original_CobroLb" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="CobroLb" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Comision" Type="Double" />
                    <asp:Parameter Name="Estado" Type="String" />
<asp:Parameter Name="CobroLb" Type="Double"></asp:Parameter>
                    <asp:Parameter Name="original_Cod_Sede" Type="Int32" />
                    <asp:Parameter Name="original_Comision" Type="Double" />
                    <asp:Parameter Name="original_Estado" Type="String" />
                    <asp:Parameter Name="original_CobroLb" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 590px">&nbsp;</td>
                    <td style="width: 290px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 41px">
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
        </p>
        <p style="height: 46px">
            Carga de CSV Impuesto y Empleados</p>
        <p style="height: 274px">
            <table style="width: 100%; height: 142px;">
                <tr>
                    <td style="width: 281px">
                <asp:FileUpload ID="fusubir" runat="server" style="font-size: small" Height="40px" />
                    </td>
                    <td style="width: 135px">
                        <asp:Label ID="Label3" runat="server" style="font-size: medium"></asp:Label>
                        <br style="font-size: medium" />
                        <asp:Label ID="Label4" runat="server" style="font-size: medium" Visible="False"></asp:Label>
                    </td>
                    <td style="font-size: medium">
                        <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: small">
                            <asp:ListItem>Empleado</asp:ListItem>
                            <asp:ListItem>Impuesto</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 281px">
                        <asp:Button ID="btsubir" runat="server" OnClick="btsubir_Click" style="font-size: small" Text="Subir" />
                        <asp:Button ID="btcargar" runat="server" OnClick="btcargar_Click1" style="font-size: small" Text="Cargar" />
                    </td>
                    <td style="width: 135px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 281px">&nbsp;</td>
                    <td style="width: 135px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" style="font-size: small">
            </asp:GridView>
        </p>
        <p class="text-center">
            Reportes Informales</p>
        <p style="height: 274px">
            <table>
                <tr>
                    <td style="height: 31px; width: 124px;">
                        <asp:Button ID="brreporte1" runat="server" OnClick="brreporte1_Click" style="font-size: medium" Text="Reporte1" />
                    </td>
                    <td style="height: 31px; width: 116px;">
                        <asp:Button ID="btreporte" runat="server" style="font-size: medium" Text="Reporte2" OnClick="btreporte_Click" />
                    </td>
                    <td style="height: 31px">
                        <asp:Button ID="btreporte2" runat="server" OnClick="btreporte2_Click" style="font-size: medium" Text="Reporte3" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="brreporte4" runat="server" style="font-size: medium" Text="Reporte 4" OnClick="brreporte4_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">&nbsp;</td>
                    <td style="width: 116px">&nbsp;</td>
                    <td>
                        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reportes Formales</p>
                        <p>
                            &nbsp;</p>
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: medium" Text="Reporte1" />
                    </td>
                    <td style="width: 116px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-size: medium" Text="Reporte2" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-size: medium" Text="Reporte3" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-size: medium" Text="Reporte4" />
                    </td>
                </tr>
            </table>
        </p>
        <p style="height: 15px">&nbsp;</p>
    </div>

</asp:Content>
