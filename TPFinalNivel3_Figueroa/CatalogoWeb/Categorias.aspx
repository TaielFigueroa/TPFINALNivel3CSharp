<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCatalogo.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="CatalogoWeb.Categorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-4 g-4">
        <div class="col">
            <div class="card" style="width: 18rem; height: 21rem">
                <img src="https://es.digitaltrends.com/wp-content/uploads/2020/12/still-image_console-family_2_back-to-back_consoles-controllers.jpg?p=1" class="card-img-top" style="object-fit: cover; height: 80%;" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Consolas</h5>
                    <asp:Button ID="btnConsolas" runat="server" Text="Ir" CssClass="btn btn-primary" OnClick="btnConsolas_Click" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem; height: 21rem">
                <img src="https://www.blogdelfotografo.com/wp-content/uploads/2023/11/xiaomi-redmi-note12.webp" class="card-img-top" style="object-fit: cover; height: 80%;" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Celulares</h5>
                    <asp:Button ID="btnCelulares" runat="server" Text="Ir" CssClass="btn btn-primary" OnClick="btnCelulares_Click" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem; height: 21rem">
                <img src="https://evacocina.es/wp-content/uploads/2021/09/Mejores-marcas-de-electrodomesticos-de-Evacocina.jpg" class="card-img-top" style="object-fit: cover; height: 80%;" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Electrodomésticos</h5>
                    <asp:Button ID="btnElectrodomesticos" runat="server" Text="Ir" CssClass="btn btn-primary" OnClick="btnElectrodomesticos_Click" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem; height: 21rem">
                <img src="https://http2.mlstatic.com/D_NQ_NP_988933-MLA74672977417_022024-O.webp" class="card-img-top" style="object-fit: cover; height: 80%;" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Zapatillas</h5>
                    <asp:Button ID="btnZapatillas" runat="server" Text="Ir" CssClass="btn btn-primary" OnClick="btnZapatillas_Click" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem; height: 21rem">
                <img src="https://i.pinimg.com/736x/4b/1d/e7/4b1de778859dd975350b4d423ea6a247.jpg" class="card-img-top" style="object-fit: cover; height: 80%;" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Televisores</h5>
                    <asp:Button ID="btnTelevisores" runat="server" Text="Ir" CssClass="btn btn-primary" OnClick="btnTelevisores_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
