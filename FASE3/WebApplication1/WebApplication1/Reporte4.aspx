﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte4.aspx.cs" Inherits="WebApplication1.Reporte4" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center">Reporte 4 Top5 de Categorias y total de ganacia</p>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="font-size: medium" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="886px">
            <LocalReport ReportEmbeddedResource="WebApplication1.Report4.rdlc" ReportPath="C:\Users\Sergio\Documents\GitHub\IPC2J15\FASE3\WebApplication1\WebApplication1\Report4.rdlc" DisplayName="Reporte4">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="WebApplication1.DataSet1TableAdapters.PaqueteTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Cod_Paquete" Type="Int32" />
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
                <asp:Parameter Name="FechaE" Type="DateTime" />
                <asp:Parameter Name="FechaS" Type="DateTime" />
                <asp:Parameter Name="EstadoDeRegistro" Type="Int32" />
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
                <asp:Parameter Name="FechaE" Type="DateTime" />
                <asp:Parameter Name="FechaS" Type="DateTime" />
                <asp:Parameter Name="EstadoDeRegistro" Type="Int32" />
                <asp:Parameter Name="Original_Cod_Paquete" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>

</asp:Content>