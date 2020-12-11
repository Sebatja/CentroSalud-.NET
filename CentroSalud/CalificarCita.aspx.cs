using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class CalificarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConsultarEspecialistas();

            }
        }
        private void ConsultarEspecialistas()
        {
            ClsCitaDAO citaDao = new ClsCitaDAO();
            gdMisCitasParaCalificar.DataSource = citaDao.MisCitasPersona(Session["idPersona"].ToString());
            gdMisCitasParaCalificar.DataBind();//Monstrar Datos

            misCitas.DataSource = citaDao.MisCitasPersona(Session["idPersona"].ToString());
            misCitas.DataBind();
        }

        protected void gdMisCitasParaCalificar_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            TextCita.Text = gdMisCitasParaCalificar.Rows[rowIndex].Cells[1].Text;
           
        }

        protected void BtnCalificar_Click(object sender, EventArgs e)
        {
            ClsCitaDAO citaDao = new ClsCitaDAO();
            citaDao.CalificarCita(int.Parse(TextCita.Text),TextCalificacion.Text);
        }
    }
}