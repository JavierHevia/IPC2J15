<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte2.aspx.cs" Inherits="WebApplication1.Reporte2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.EmpleadoTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_Cod_Empleado" Type="Int32" />
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
                    <asp:Parameter Name="Estado" Type="String" />
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
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Original_Cod_Empleado" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </p>
        <p></p>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="font-size: small" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="883px">
            <LocalReport DisplayName="Reporte2" ReportEmbeddedResource="WebApplication1.Report2.rdlc" ReportPath="C:\Users\Sergio\Documents\GitHub\IPC2J15\FASE3\WebApplication1\WebApplication1\Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="DataSet1TableAdapters.Paquete1TableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="DataSet1TableAdapters.EmpleadoTableAdapter"></asp:ObjectDataSource>
        <p>&nbsp;</p>
    </div>

</asp:Content>
