<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCatalogo.Master" AutoEventWireup="true" CodeBehind="CategoriaSeleccionada.aspx.cs" Inherits="CatalogoWeb.CategoriaSeleccionada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
