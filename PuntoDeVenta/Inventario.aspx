<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="PuntoDeVenta.PuntoDeVenta.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="info">
        <main>
            <section class="content-section" aria-labelledby="inventTitle">
                <h1 id="inventTitle">Ingreso de productos</h1>

                <table class="custom-table">
                    <tr>
                        <td class="alinJustify">CODIGO: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxCodigo" runat="server" class="estilotxtBox" type="number" placeholder="Ej: 12AA"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2">PRODUCTO: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxProducto" runat="server" CssClass="estilotxtBox" placeholder="Ej: Radio"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2">PRECIO DE COMPRA: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxPcompra" runat="server" type="number" CssClass="estilotxtBox" placeholder="Ej: 555.22"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style5">PRECIO DE VENTA: </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBoxPventa" runat="server" type="number" CssClass="estilotxtBox" placeholder="Ej: 600.55"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2">EXISTENCIA: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBoxExistencia" type="number" runat="server" CssClass="estilotxtBox" placeholder="Ej: 12"></asp:TextBox>
                        </td>
                    </tr>
                </table>



                <table class="custom-table">
                    <tr class="alinCentro">
                        <td class="alinCentro">
                            <br />
                            <asp:Button ID="btnGUARDAR" CssClass="btn-primary" runat="server" Text="GUARDAR" OnClick="btnGUARDAR_Click"  />
                        </td>
                        <td class="alinCentro">
                            <br />
                            <asp:Button ID="btnEDITAR" CssClass="btn-primary" runat="server" Text="EDITAR"  Enabled="False" OnClick="btnEDITAR_Click" />
                        </td>
                        <td class="alinCentro">
                            <br />
                            <asp:Button ID="btnELIMINAR" CssClass="btn-primary" runat="server" Text="ELIMINAR"  Enabled="False" OnClick="btnELIMINAR_Click" />
                        </td>
                    </tr>
                </table>

                <table class="custom-table">
                    <tr>
                        <td class="alineaCentro">
                            <asp:Button ID="ButtonBuscar" runat="server" CssClass="btn-primary" Text="BUSCAR CODIGO" OnClick="ButtonBuscar_Click"  />
                            &nbsp;<asp:TextBox ID="TextBoxBuscar" type="number" runat="server" CssClass="estilotxtBox" placeholder="Ingresar CODIGO" ></asp:TextBox>

                        </td>
                    </tr>

                     <tr>
                         <td class="alinD">
                             &nbsp;<asp:Button ID="ButtonLimpiar" runat="server" CssClass="btn-primary " Text="LIMPIAR CAMPOS" OnClick="ButtonLimpiar_Click"   />
                             <br />
                             <br />
                             <asp:Button ID="ButtonReg" runat="server" CssClass="btn-primary " Text="VER REGISTROS" OnClick="ButtonReg_Click"   />
                             <br />
                             <br />
                             <asp:Button ID="ButtonINGnuevo" runat="server" CssClass="btn-primary " Text="INGRESAR NUEVO USUARIO" OnClick="ButtonINGnuevo_Click"/>
                             <br />
                             <br />
                             <asp:Button ID="ButtonINGnuevo0" runat="server" CssClass="btn-primary " Text="CERRAR SESION" OnClick="ButtonINGnuevo0_Click"/>
                         </td>
                     </tr>
                </table>

            </section>
        </main>
    </div>

</asp:Content>
