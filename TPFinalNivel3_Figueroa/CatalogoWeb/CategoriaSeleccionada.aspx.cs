using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogoWeb
{
    public partial class CategoriaSeleccionada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["id"] != null)
                    {
                        int id = int.Parse(Request.QueryString["id"]);
                        filtroCategorias(id);
                        rptArticulos.DataSource = Session["listaFiltrada"];
                        rptArticulos.DataBind();
                    }
                    else
                        Response.Redirect("Categorias.aspx", false);
                }
            }
            catch (Exception)
            {
                Session.Add("error", "Hubo un problema al seleccionar la categoría.");
                Response.Redirect("Error.aspx", false);
            }
        }
        public void filtroCategorias(int id)
        {
            List<Articulo> lista = (List<Articulo>)Session["listaArticulos"];
            List<Articulo> listaFiltrada = lista.FindAll(x => x.Categoria.Id == id);
            Session.Add("listaFiltrada", listaFiltrada);
        }

    }
}