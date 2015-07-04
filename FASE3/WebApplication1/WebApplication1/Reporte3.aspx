<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"AutoEventWireup="true" CodeBehind="Reporte3.aspx.cs" Inherits="WebApplication1.Reporte3" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>Reporte 2 &quot;Sucursales&quot;</p>
        <p></p>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="font-size: small" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="935px">
            <LocalReport ReportEmbeddedResource="WebApplication1.Report3.rdlc" ReportPath="C:\Users\Sergio\Documents\GitHub\IPC2J15\FASE3\WebApplication1\WebApplication1\Report3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.SucursalTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_LugarSucursal" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LugarSucursal" Type="String" />
                <asp:Parameter Name="Pais" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Capacidad" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pais" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Capacidad" Type="Int32" />
                <asp:Parameter Name="Original_LugarSucursal" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <p>&nbsp;</p>
    </div>

</asp:Content>