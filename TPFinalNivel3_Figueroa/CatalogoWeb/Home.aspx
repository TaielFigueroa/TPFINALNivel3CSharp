<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCatalogo.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CatalogoWeb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" style="margin: 0; padding: 0; box-sizing: border-box">
                <img src="https://www.blog.doto.com.mx/wp-content/uploads/2024/07/pirincipal.png" class="d-block w-100" style="width: 300px; height: 650px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.quepasaweb.com.ar/wp-content/uploads/2024/08/WhatsApp-Image-2024-08-08-at-15.18.03.jpeg" class="d-block w-100" style="width: 300px; height: 650px" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.clarin.com/2023/11/09/6uIznnXEW_720x0__1.jpg" class="d-block w-100" style="width: 300px; height: 650px" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <hr />
    <div>
        <h2 style="font-style:italic; color: white">Todos los productos</h2>
    </div>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        <asp:Repeater ID="rptArticulos" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="..." style="width: 270px; height: 270px">
                        <div class="card-body">
                            <h4 class="card-title">$ <%#Eval("Precio") %></h4>
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <h6><%#Eval("Marca.Descripcion") %></h6>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetalleArticulo.aspx?Id=<%#Eval("Id") %>" class="btn btn-primary">Comprar</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
