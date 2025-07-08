using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogoWeb
{
    public partial class Categorias : System.Web.UI.Page
    {
        public List<Categoria> categorias { get; set; }
        public int id { get; set; }

        CategoriaNegocio negocio = new CategoriaNegocio();


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    categorias = negocio.listar();
                    Session.Add("listaCategorias", categorias);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnConsolas_Click(object sender, EventArgs e)
        {
            id = negocio.filtrarCategoria("Consolas");
            Response.Redirect("CategoriaSeleccionada.aspx?id=" + id, false);
        }

        protected void btnCelulares_Click(object sender, EventArgs e)
        {
            id = negocio.filtrarCategoria("Celulares");
            Response.Redirect("CategoriaSeleccionada.aspx?id=" + id, false);
        }

        protected void btnElectrodomesticos_Click(object sender, EventArgs e)
        {
            id = negocio.filtrarCategoria("Electrodomesticos");
            Response.Redirect("CategoriaSeleccionada.aspx?id=" + id, false);
        }

        protected void btnZapatillas_Click(object sender, EventArgs e)
        {
            id = negocio.filtrarCategoria("Zapatillas");
            Response.Redirect("CategoriaSeleccionada.aspx?id=" + id, false);
        }

        protected void btnTelevisores_Click(object sender, EventArgs e)
        {
            id = negocio.filtrarCategoria("Televisores");
            Response.Redirect("CategoriaSeleccionada.aspx?id=" + id, false);
        }

    }
}