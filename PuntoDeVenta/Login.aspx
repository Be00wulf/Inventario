<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PuntoDeVenta.PuntoDeVenta.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="info">
        <main>
            <section class="content-section" aria-labelledby="logTitle">
                <h1 id="logTitle">INICIAR SESIÓN</h1>

                <table class="custom-table">
                    <tr>
                        <td>
                            <h6 class="textoResaltado">Sitio de
                            <strong class="textoAzul"> administradores</strong>
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
                            <asp:Button ID="ButtonIngresar" class="btn-primary" runat="server" Text="Ingresar" OnClick="ButtonIngresar_Click" />
                        </td>
                    </tr>
                </table>
            </section>
        </main>
    </div>


</asp:Content>
