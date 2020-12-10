using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsCitaDAO citaDAO = new ClsCitaDAO();
            //2312314
            //     gvMiscitas.DataSource = citaDAO.MisCitasEspecialista(Session["idPersona"].ToString());
            int pepe = 2312314;
            GridView1.DataSource = citaDAO.MisCitasEspecialista(pepe.ToString());
            GridView1.DataBind();//Monstrar Datos
        }
    }
}