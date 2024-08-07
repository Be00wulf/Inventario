<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="PuntoDeVenta.PuntoDeVenta.Registros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

<div class="info">
    <main>
        <section class="content-section" aria-labelledby="datatTitle">
            <h1 id="dataTitle"></h1>

            <table class="custom-table">
                <tr>
                    <td>
                       <h1 class="textoResaltado">Datos 
                                           <strong class="textoResaltado">registrados</strong>
                       </h1>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>

            </table>
        </section>
    </main>
</div>
</asp:Content>
