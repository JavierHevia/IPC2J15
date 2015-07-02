<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Director.aspx.cs" Inherits="WebApplication1.Director" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center" style="height: 56px">
            <asp:Label ID="Label1" runat="server" style="color: #FF3300" Text="¡Bienvenido Director!"></asp:Label>
        </p>
        <p style="height: 36px" class="text-center">
            Carga CSV de Empleados</p>
        <p style="height: 214px">
            <table style="width:100%; height: 93px;">
                <tr>
                    <td style="width: 248px">
                        <asp:FileUpload ID="fsubircsv" runat="server" style="font-size: small" ViewStateMode="Disabled" />
                    </td>
                    <td style="width: 208px">
                        <asp:Button ID="btsubircsv" runat="server" style="font-size: small" Text="Subir" OnClick="btsubircsv_Click" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-size: small" Text="Carga" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 248px">&nbsp;</td>
                    <td style="width: 208px">
                        <asp:Label ID="Label2" runat="server" style="font-size: medium"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 248px">&nbsp;</td>
                    <td style="width: 208px">
                        <asp:Label ID="Label3" runat="server" style="font-size: medium"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" style="font-size: small">
            </asp:GridView>
        </p>
        <p style="height: 31px" class="text-center">
            Ingreso de Nuevo Empleado</p>
        <p style="height: 425px">
            <table style="width:100%;">
                <tr>
                    <td style="width: 102px; height: 31px;">
                        <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="CodEmpleado"></asp:Label>
                    </td>
                    <td style="width: 377px; height: 31px;">
                        <asp:TextBox ID="txtcodigo" runat="server" Height="23px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td style="height: 31px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        <asp:Label ID="Label6" runat="server" style="font-size: medium" Text="Nombre"></asp:Label>
                    </td>
                    <td style="width: 377px">
                        <asp:TextBox ID="txtnombre" runat="server" Height="24px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        <asp:Label ID="Label7" runat="server" style="font-size: medium" Text="Sueldo"></asp:Label>
                    </td>
                    <td style="width: 377px">
                        <asp:TextBox ID="txtsueldo" runat="server" Height="27px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="width: 102px">
                        <asp:Label ID="Label8" runat="server" style="font-size: medium" Text="DPI"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdpi" runat="server" Height="27px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        <asp:Label ID="Label9" runat="server" style="font-size: medium" Text="Contraseña"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcontrasena" runat="server" Height="25px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        <asp:Label ID="Label10" runat="server" style="font-size: medium" Text="Puesto"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpuesto" runat="server" Height="26px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td style="height: 31px; width: 102px">
                        <asp:Label ID="Label11" runat="server" style="font-size: medium" Text="CodSucursal"></asp:Label>
                    </td>
                    <td style="height: 31px; width: 181px">
                        <asp:TextBox ID="txtsucursal" runat="server" Height="26px" style="font-size: small"></asp:TextBox>
                    </td>
                    <td style="height: 31px"></td>
                </tr>
                <tr>
                    <td style="width: 102px">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td>
                        <asp:Button ID="btguardar" runat="server" OnClick="Button3_Click1" style="font-size: small" Text="Guardar" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 102px">&nbsp;</td>
                    <td style="width: 181px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PFase2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Empleado], [NombreE], [ApellidoE], [Suledo], [DPI], [Contraseña], [Departamento], [Puesto], [NombreDep], [Cod_Sucursal] FROM [Empleado]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [ApellidoE], [Suledo], [DPI], [Contraseña], [Departamento], [Puesto], [NombreDep], [Cod_Sucursal]) VALUES (@Cod_Empleado, @NombreE, @ApellidoE, @Suledo, @DPI, @Contraseña, @Departamento, @Puesto, @NombreDep, @Cod_Sucursal)" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [ApellidoE] = @ApellidoE, [Suledo] = @Suledo, [DPI] = @DPI, [Contraseña] = @Contraseña, [Departamento] = @Departamento, [Puesto] = @Puesto, [NombreDep] = @NombreDep, [Cod_Sucursal] = @Cod_Sucursal WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Contraseña] = @original_Contraseña) OR ([Contraseña] IS NULL AND @original_Contraseña IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="Contraseña" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                    <asp:Parameter Name="original_Contraseña" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p class="text-center">Modificación de Empleados </p>
        <p>
            <table style="width: 102%; ">
                <tr>
                    <td style="height: 292px; width: 428px">
            <asp:GridView ID="dvmodificaremp" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="font-size: small" Width="142px" ViewStateMode="Disabled">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                    <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                    <asp:BoundField DataField="NombreDep" HeaderText="NombreDep" SortExpression="NombreDep" />
                    <asp:BoundField DataField="Cod_Sucursal" HeaderText="Cod_Sucursal" SortExpression="Cod_Sucursal" />
                    <asp:BoundField DataField="Suledo" HeaderText="Suledo" SortExpression="Suledo" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                    </td>
                    <td style="height: 292px"></td>
                    <td style="height: 292px"></td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 428px; height: 31px">
                        <asp:Label ID="Label4" runat="server" Text="Despedir Empleado"></asp:Label>
                    </td>
                    <td style="height: 31px"></td>
                    <td style="height: 31px"></td>
                </tr>
                <tr>
                    <td style="width: 428px">
                        <asp:DropDownList ID="dddespedir" runat="server" DataSourceID="SqlDataSource2" DataTextField="Cod_Empleado" DataValueField="Cod_Empleado" Height="51px" style="font-size: small" Width="221px">
                        </asp:DropDownList>
&nbsp;
                        <asp:Button ID="btdespedir" runat="server" OnClick="btdespedir_Click" style="font-size: medium" Text="Despedir" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [ApellidoE], [Departamento], [Puesto], [NombreDep], [Cod_Sucursal], [Telefono], [Suledo], [Domicilio], [DPI]) VALUES (@Cod_Empleado, @NombreE, @ApellidoE, @Departamento, @Puesto, @NombreDep, @Cod_Sucursal, @Telefono, @Suledo, @Domicilio, @DPI)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Empleado], [NombreE], [ApellidoE], [Departamento], [Puesto], [NombreDep], [Cod_Sucursal], [Telefono], [Suledo], [Domicilio], [DPI] FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [ApellidoE] = @ApellidoE, [Departamento] = @Departamento, [Puesto] = @Puesto, [NombreDep] = @NombreDep, [Cod_Sucursal] = @Cod_Sucursal, [Telefono] = @Telefono, [Suledo] = @Suledo, [Domicilio] = @Domicilio, [DPI] = @DPI WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([ApellidoE] = @original_ApellidoE) OR ([ApellidoE] IS NULL AND @original_ApellidoE IS NULL)) AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL)) AND (([Puesto] = @original_Puesto) OR ([Puesto] IS NULL AND @original_Puesto IS NULL)) AND (([NombreDep] = @original_NombreDep) OR ([NombreDep] IS NULL AND @original_NombreDep IS NULL)) AND (([Cod_Sucursal] = @original_Cod_Sucursal) OR ([Cod_Sucursal] IS NULL AND @original_Cod_Sucursal IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NombreE" Type="String" />
                    <asp:Parameter Name="ApellidoE" Type="String" />
                    <asp:Parameter Name="Departamento" Type="String" />
                    <asp:Parameter Name="Puesto" Type="String" />
                    <asp:Parameter Name="NombreDep" Type="String" />
                    <asp:Parameter Name="Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="Telefono" Type="Int32" />
                    <asp:Parameter Name="Suledo" Type="Double" />
                    <asp:Parameter Name="Domicilio" Type="String" />
                    <asp:Parameter Name="DPI" Type="Int32" />
                    <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                    <asp:Parameter Name="original_NombreE" Type="String" />
                    <asp:Parameter Name="original_ApellidoE" Type="String" />
                    <asp:Parameter Name="original_Departamento" Type="String" />
                    <asp:Parameter Name="original_Puesto" Type="String" />
                    <asp:Parameter Name="original_NombreDep" Type="String" />
                    <asp:Parameter Name="original_Cod_Sucursal" Type="Int32" />
                    <asp:Parameter Name="original_Telefono" Type="Int32" />
                    <asp:Parameter Name="original_Suledo" Type="Double" />
                    <asp:Parameter Name="original_Domicilio" Type="String" />
                    <asp:Parameter Name="original_DPI" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="text-center">
            Consulta de Equipo</p>
        <table style="width: 100%; height: 691px;">
            <tr>
                <td style="width: 442px; height: 477px">
            <asp:GridView ID="GridView3" runat="server" style="font-size: small" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="358px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="458px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                    <asp:BoundField DataField="NombreE" HeaderText="NombreE" SortExpression="NombreE" />
                    <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                    <asp:BoundField DataField="NombreDep" HeaderText="NombreDep" SortExpression="NombreDep" />
                    <asp:BoundField DataField="Cod_Sucursal" HeaderText="Cod_Sucursal" SortExpression="Cod_Sucursal" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                </td>
                <td style="width: 97px; height: 477px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="43px" style="font-size: small" Visible="False" Width="112px"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 477px"></td>
            </tr>
            <tr>
                <td style="width: 442px; height: 6px">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Cod_Empleado" DataSourceID="SqlDataSource3" GridLines="Horizontal" style="font-size: small" Width="423px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="Cod_Empleado" HeaderText="Cod_Empleado" ReadOnly="True" SortExpression="Cod_Empleado" />
                            <asp:BoundField DataField="NombreE" HeaderText="NombreE" SortExpression="NombreE" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Suledo" HeaderText="Suledo" SortExpression="Suledo" />
                            <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PFase2 %>" DeleteCommand="DELETE FROM [Empleado] WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL))" InsertCommand="INSERT INTO [Empleado] ([Cod_Empleado], [NombreE], [Telefono], [Suledo], [Domicilio], [DPI], [Correo]) VALUES (@Cod_Empleado, @NombreE, @Telefono, @Suledo, @Domicilio, @DPI, @Correo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cod_Empleado], [NombreE], [Telefono], [Suledo], [Domicilio], [DPI], [Correo] FROM [Empleado] WHERE ([Cod_Empleado] = @Cod_Empleado)" UpdateCommand="UPDATE [Empleado] SET [NombreE] = @NombreE, [Telefono] = @Telefono, [Suledo] = @Suledo, [Domicilio] = @Domicilio, [DPI] = @DPI, [Correo] = @Correo WHERE [Cod_Empleado] = @original_Cod_Empleado AND (([NombreE] = @original_NombreE) OR ([NombreE] IS NULL AND @original_NombreE IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL)) AND (([Suledo] = @original_Suledo) OR ([Suledo] IS NULL AND @original_Suledo IS NULL)) AND (([Domicilio] = @original_Domicilio) OR ([Domicilio] IS NULL AND @original_Domicilio IS NULL)) AND (([DPI] = @original_DPI) OR ([DPI] IS NULL AND @original_DPI IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_NombreE" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="Int32" />
                            <asp:Parameter Name="original_Suledo" Type="Double" />
                            <asp:Parameter Name="original_Domicilio" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="Int32" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="NombreE" Type="String" />
                            <asp:Parameter Name="Telefono" Type="Int32" />
                            <asp:Parameter Name="Suledo" Type="Double" />
                            <asp:Parameter Name="Domicilio" Type="String" />
                            <asp:Parameter Name="DPI" Type="Int32" />
                            <asp:Parameter Name="Correo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Cod_Empleado" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NombreE" Type="String" />
                            <asp:Parameter Name="Telefono" Type="Int32" />
                            <asp:Parameter Name="Suledo" Type="Double" />
                            <asp:Parameter Name="Domicilio" Type="String" />
                            <asp:Parameter Name="DPI" Type="Int32" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="original_Cod_Empleado" Type="Int32" />
                            <asp:Parameter Name="original_NombreE" Type="String" />
                            <asp:Parameter Name="original_Telefono" Type="Int32" />
                            <asp:Parameter Name="original_Suledo" Type="Double" />
                            <asp:Parameter Name="original_Domicilio" Type="String" />
                            <asp:Parameter Name="original_DPI" Type="Int32" />
                            <asp:Parameter Name="original_Correo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="height: 6px; width: 97px"></td>
                <td style="height: 6px"></td>
            </tr>
            <tr>
                <td style="width: 442px">&nbsp;</td>
                <td style="width: 97px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="text-center">
            Autorización de Pre-Carga</p>
        <p style="height: 211px">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </div>

</asp:Content>
