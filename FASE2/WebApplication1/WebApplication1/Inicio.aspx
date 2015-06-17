<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Inicio" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2 class="text-center" style="color: #3366CC; background-color: #000066"><strong>Quetzal Express</strong></h2>
        <p style="height: 240px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/quetzal-logo.png" style="width: 752px; height: 220px; position: absolute; left: 45px; top: 187px" />
        </p>
        <p style="height: 195px">
            <asp:Image ID="Image2" runat="server" CssClass="navbar-right" Height="185px" ImageUrl="~/Imagenes/quetzal_1-300x200.jpg" Width="285px" />
        </p>
        <p style="height: 209px; color: #003399;" class="text-center">“Quetzal Express” es una empresa líder en servicios de POBOX y envíos, para que negocios internacionales como e-commerce, sean accesibles para los usuarios en Guatemala. “Quetzal Express” desea automatizar su proceso de logística, para que de ésta forma se realicen las operaciones de forma segura y eficiente, aprovechando al máximo el potencial de la tecnología vía web.</p>
    </div>

</asp:Content>
