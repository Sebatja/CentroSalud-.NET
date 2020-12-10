using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class Enfermedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsEnfermedadDAO enfermedadDAO = new ClsEnfermedadDAO();

            ddlEnfermedad.DataSource = enfermedadDAO.ConsultarTodos();
            ddlEnfermedad.DataValueField = "id_enfermedad";
            ddlEnfermedad.DataTextField = "nombre";
            ddlEnfermedad.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConsultarContactos();
        }
        private void ConsultarContactos()
        {
            ClsRecomendacion recomendacionDAO = new ClsRecomendacion();
            GvRecomendacion.DataSource = recomendacionDAO.ConsultarTodos(int.Parse(ddlEnfermedad.SelectedValue.ToString()));
            GvRecomendacion.DataBind();//Monstrar Datos
        }
    }
}