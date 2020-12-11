using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class Especialistas_Citas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)//Preguntar si es la primeza vez que carga la pagina
            {
            ClsCuidadDAO cuidadDAO = new ClsCuidadDAO();

            ddlCuidad.DataSource = cuidadDAO.ConsultarTodos();
            ddlCuidad.DataValueField = "id_ciudad";
            ddlCuidad.DataTextField = "ciudad1";
            ddlCuidad.DataBind();

            ClsEspecialidadDAO EspecialidadDAO = new ClsEspecialidadDAO();
            ddlEspecialidad.DataSource = EspecialidadDAO.ConsultarEspecialistas();
            ddlEspecialidad.DataValueField = "especialidad";
            ddlEspecialidad.DataTextField = "especialidad";
            ddlEspecialidad.DataBind();

            }
        }
        private void ConsultarEspecialistas()
        {
            ClsEspecialidadDAO especialistaDAO = new ClsEspecialidadDAO();
           dvcitasEspe.DataSource = especialistaDAO.ConsultarFiltros(int.Parse(ddlCuidad.SelectedValue.ToString()),ddlEspecialidad.SelectedValue.ToString());
           dvcitasEspe.DataBind();//Monstrar Datos
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ConsultarEspecialistas();
        }

        protected void dgEspecialistas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName== "Asignar")
            {
              //   TextPrueba.Text = dgEspecialistas.Rows[rowIndex].Cells[0].Text;
            }
        }

        protected void TextPrueba_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Agendar")
            {
               //  TextPruebecita.Text = GridView1.Rows[rowIndex].Cells[0].Text;
            }
        }

        protected void dvcitasEspe_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Asignar")
            {
                ClsCitaDAO citaDao = new ClsCitaDAO();
                citaDao.AsignarCita(int.Parse(dvcitasEspe.Rows[rowIndex].Cells[1].Text),Session["idPersona"].ToString());
            }
        }

        protected void dvcitasEspe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}