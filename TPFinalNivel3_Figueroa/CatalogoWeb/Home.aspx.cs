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
    public partial class Home : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            listaArticulos = negocio.listar();
            Session.Add("listaArticulos", listaArticulos);
            try
            {
                if (!IsPostBack)
                {
                    rptArticulos.DataSource = Session["listaArticulos"];
                    rptArticulos.DataBind();
                }
            }
            catch (Exception)
            {
                Session.Add("error", "Error al cargar la pantalla, intente nuevamente.");
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}
