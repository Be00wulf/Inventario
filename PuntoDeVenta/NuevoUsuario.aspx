<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="PuntoDeVenta.PuntoDeVenta.NuevoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="info">
        <main>
            <section class="content-section" aria-labelledby="inventTitle">
                <h1 id="inventTitle">Ingreso de productos</h1>

                <table class="custom-table">
                    <tr>
                        <td>
                            <h1 class="textoAzul">¿No tienes una 
                         <strong class="textoResaltado">cuenta?</strong>
                            </h1>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <h6 class="textoResaltado">Sitio de registro 
                         <strong class="textoAzul">Crea una cuenta</strong>
                            </h6>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="TextBoxNuevoUsuario" CssClass="estilotxtBox" placeholder="Nombre de usuario"  runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="TextBoxNuevaContrasenia" CssClass="estilotxtBox" TextMode="Password" placeholder="Nueva clave" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="ButtonNuevoIngreso" class="btn-primary" runat="server" Text="Nuevo registro" OnClick="ButtonNuevoIngreso_Click" />
                            <br />
                            <asp:Label ID="lblMessage" class="textoAzul" runat="server" Text="Registro"></asp:Label>
                        </td>
                    </tr>
                </table>

            </section>
        </main>
    </div>
</asp:Content>
