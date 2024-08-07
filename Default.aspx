<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoDeVenta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/StyleSitios.css" rel="stylesheet" type="text/css" />

    <div class="info">
        <main>
            <section class="content-section" aria-labelledby="aspnetTitle">
                <h1 id="aspnetTitle">ASP.NET</h1>
                <p >ASP.NET es un marco de desarrollo gratuito para construir sitios web y 
                    aplicaciones web geniales utilizando HTML, CSS y JavaScript.</p>
                <p><a href="http://www.asp.net" class="btn btn-primary ">Conoce más &raquo;</a></p>
            </section>

            <section class="content-section" aria-labelledby="inventorySystemTitle">
                <h2 id="inventorySystemTitle">Sistema de Inventario</h2>
                <p>Nuestro sistema de inventario está diseñado para simplificar la gestión de productos en cualquier negocio. Con una interfaz intuitiva y fácil de usar, podrás realizar las siguientes operaciones:</p>
                <ul class="alinJustify">
                    <li><strong>Editar Productos:</strong> Actualiza la información de los productos existentes para reflejar cambios en precios, descripciones, o cantidades en stock.</li>
                    <li><strong>Eliminar Productos:</strong> Borra productos del inventario que ya no son necesarios o que han sido descontinuados, manteniendo tu base de datos limpia y actualizada.</li>
                    <li><strong>Guardar Productos:</strong> Añade nuevos productos al inventario con detalles completos, incluyendo nombres, precios, y descripciones para mantener un registro preciso de todos los artículos.</li>
                    <li><strong>Buscar Productos:</strong> Utiliza la funcionalidad de búsqueda para encontrar rápidamente productos específicos en tu inventario, mejorando la eficiencia y la precisión en la gestión de stock.</li>
                </ul>
                <p>Este sistema está construido utilizando ASP.NET, proporcionando una plataforma robusta y segura para el manejo de inventarios, asegurando que puedas gestionar tus productos de manera eficaz y sin complicaciones.</p>
            </section>
        </main>
    </div>

</asp:Content>
