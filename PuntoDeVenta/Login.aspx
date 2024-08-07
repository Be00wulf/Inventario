<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PuntoDeVenta.PuntoDeVenta.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <%-- tabla titulo subtitulo texto --%>
    <table class="custom-table">
        <tr>
            <td>
                <h1 class="textoSimple">INICIAR 
                                <strong class="textoResaltado">SESION</strong>
                </h1>
            </td>
        </tr>

        <tr>
            <td>
                <h6 class="textoResaltado">Sitio de usuarios
                                <strong class="textoSimple">Ingresar datos</strong>
                </h6>
            </td>
        </tr>

        <tr>
            <td>
                <asp:TextBox ID="TextBoxUsuario" CssClass="estilotxtBox" placeholder="Usuario" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:TextBox ID="TextBoxContrasenia" CssClass="estilotxtBox" TextMode="Password" placeholder="Clave" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="ButtonIngresar" class="boton" runat="server" Text="Ingresar"  />
            </td>
        </tr>
    </table>
</asp:Content>
