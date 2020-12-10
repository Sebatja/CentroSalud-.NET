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
            if (!IsPostBack){
                ConsultarEspecialistas();
            }
         
        }
        private void ConsultarEspecialistas()
        {
            ClsCitaDAO citaDAO = new ClsCitaDAO();
            gvMiscitas.DataSource = citaDAO.MisCitasEspecialista(Session["idPersona"].ToString());
            gvMiscitas.DataBind();//Monstrar Datos
        }

      

        protected void gvMiscitas_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Finalizar")
            {
                ClsCitaDAO citaDao = new ClsCitaDAO();
                citaDao.FinalidadCita(int.Parse(gvMiscitas.Rows[rowIndex].Cells[1].Text));
            }
        }

        protected void gvMiscitas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}