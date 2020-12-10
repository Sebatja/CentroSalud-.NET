using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class MiscitasEspecialista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultarEspecialistas();
        }
        private void ConsultarEspecialistas()
        {
            ClsCitaDAO citaDAO = new ClsCitaDAO();
            //2312314
            //     gvMiscitas.DataSource = citaDAO.MisCitasEspecialista(Session["idPersona"].ToString());
            int pepe = 2312314;
            gvMiscitas.DataSource = citaDAO.MisCitasEspecialista(pepe.ToString());
            gvMiscitas.DataBind();//Monstrar Datos
        }

        protected void gvMiscitas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Asignar")
            {

            }
        }
    }
}