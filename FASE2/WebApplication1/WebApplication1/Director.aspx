<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Director.aspx.cs" Inherits="WebApplication1.Director" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center" style="height: 56px">
            <asp:Label ID="Label1" runat="server" style="color: #FF3300" Text="¡Bienvenido Director!"></asp:Label>
        </p>
        <p style="height: 148px">
            <table align="center" style="width: 72%; height: 136px;">
                <tr>
                    <td class="text-center" style="width: 181px">
                        <asp:Button ID="btnuevoemple" runat="server" OnClick="btnuevoemple_Click" style="font-size: small" Text="Nuevos Empleados" Width="144px" />
                    </td>
                    <td class="text-center" style="width: 142px">
                        <asp:Button ID="btconsultarequi" runat="server" style="font-size: small" Text="Consultar Equipo" Width="134px" />
                    </td>
                    <td class="text-center">
                        <asp:Button ID="modificarempleado" runat="server" OnClick="modificarempleado_Click" style="font-size: small" Text="Modificar Empleados" Width="141px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 181px" class="text-center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: small" Text="Cargar Datos" />
                    </td>
                    <td style="width: 142px">
                        <asp:Button ID="despedir" runat="server" style="font-size: small" Text="Despedir Empleado" Width="141px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 181px">&nbsp;</td>
                    <td style="width: 142px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 56px">
            <table style="width:100%;">
                <tr>
                    <td style="width: 248px">
                        <asp:FileUpload ID="fsubircsv" runat="server" style="font-size: small" ViewStateMode="Disabled" Visible="False" />
                    </td>
                    <td style="width: 208px">
                        <asp:Button ID="btsubircsv" runat="server" style="font-size: small" Text="Subir" Visible="False" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 248px">&nbsp;</td>
                    <td style="width: 208px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 248px">&nbsp;</td>
                    <td style="width: 208px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="height: 418px">
            <asp:DetailsView ID="fvnuevoempleado" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="16px" style="font-size: small" Visible="False" Width="145px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                    <asp:BoundField DataField="NombreE" HeaderText="NombreE" SortExpression="NombreE" />
                    <asp:BoundField DataField="ApellidoE" HeaderText="ApellidoE" SortExpression="ApellidoE" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Suledo" HeaderText="Suledo" SortExpression="Suledo" />
                    <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                    <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                    <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [ApellidoE], [Telefono], [Suledo], [Domicilio], [DPI], [Correo], [Departamento], [Contraseña], [Puesto], [Cod_Departamento]) VALUES (@Cod_Empleado, @NombreE, @ApellidoE, @Telefono, @Suledo, @Domicilio, @DPI, @Correo, @Departamento, @Contraseña, @Puesto, @Cod_Departamento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [ApellidoE] = @ApellidoE, [Telefono] = @Telefono, [Suledo] = @Suledo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [Departamento] = @Departamento, [Contraseña] = @Contraseña, [Puesto] = @Puesto, [Cod_Departamento] = @Cod_Departamento WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 274px">&nbsp;</p>
        <p style="height: 351px">
            <asp:GridView ID="dvmodificaremp" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="font-size: small" Visible="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                    <asp:BoundField DataField="NombreE" HeaderText="NombreE" SortExpression="NombreE" />
                    <asp:BoundField DataField="Suledo" HeaderText="Suledo" SortExpression="Suledo" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                    <asp:BoundField DataField="Cod_Departamento" HeaderText="Cod_Departamento" SortExpression="Cod_Departamento" />
                    <asp:BoundField DataField="Cod_Sucursal" HeaderText="Cod_Sucursal" SortExpression="Cod_Sucursal" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [ApellidoE], [Telefono], [Suledo], [Domicilio], [DPI], [Correo], [Departamento], [Contraseña], [Puesto], [Cod_Departamento], [Cod_Sucursal]) VALUES (@Cod_Empleado, @NombreE, @ApellidoE, @Telefono, @Suledo, @Domicilio, @DPI, @Correo, @Departamento, @Contraseña, @Puesto, @Cod_Departamento, @Cod_Sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [ApellidoE] = @ApellidoE, [Telefono] = @Telefono, [Suledo] = @Suledo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [Departamento] = @Departamento, [Contraseña] = @Contraseña, [Puesto] = @Puesto, [Cod_Departamento] = @Cod_Departamento, [Cod_Sucursal] = @Cod_Sucursal WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([Cod_Departamento] = @original_Cod_Departamento) OR ([Cod_Departamento] IS NULL AND @original_Cod_Departamento IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_Cod_Departamento" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 362px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" style="font-size: small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                    <asp:BoundField DataField="NombreE" HeaderText="NombreE" SortExpression="NombreE" />
                    <asp:BoundField DataField="ApellidoE" HeaderText="ApellidoE" SortExpression="ApellidoE" />
                    <asp:BoundField DataField="Suledo" HeaderText="Suledo" SortExpression="Suledo" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    <asp:BoundField DataField="Cod_Sucursal" HeaderText="Cod_Sucursal" SortExpression="Cod_Sucursal" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [ApellidoE], [Telefono], [Suledo], [Domicilio], [DPI], [Correo], [Departamento], [Contraseña], [Puesto], [NombreDep], [Cod_Sucursal]) VALUES (@Cod_Empleado, @NombreE, @ApellidoE, @Telefono, @Suledo, @Domicilio, @DPI, @Correo, @Departamento, @Contraseña, @Puesto, @NombreDep, @Cod_Sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [ApellidoE] = @ApellidoE, [Telefono] = @Telefono, [Suledo] = @Suledo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo, [Departamento] = @Departamento, [Contraseña] = @Contraseña, [Puesto] = @Puesto, [NombreDep] = @NombreDep, [Cod_Sucursal] = @Cod_Sucursal WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>

</asp:Content>
