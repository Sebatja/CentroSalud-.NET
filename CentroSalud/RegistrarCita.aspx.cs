using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class RegistrarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//Preguntar si es la primeza vez que carga la pagina
            {
                ClsEntidadSaludDAO  entidadsaludDAO= new ClsEntidadSaludDAO();

                ddlEntidad.DataSource = entidadsaludDAO.ConsultarTodos();
                ddlEntidad.DataValueField = "id_persona";
                ddlEntidad.DataTextField = "sitio_web";
                ddlEntidad.DataBind();

              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsEspecialidadDAO especialidadDao = new ClsEspecialidadDAO();
            ddlespecialista.DataSource = especialidadDao.ConsultarEspecialistaEntesalud(int.Parse(ddlEntidad.SelectedValue.ToString()));
            ddlespecialista.DataValueField = "id_persona";
            ddlespecialista.DataTextField = "id_persona";
            ddlespecialista.DataBind();
        }
        private void Registrar()
        {
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Se ha registrado correctamente una cita')</script>");
        }
        protected void BtnCita_Click(object sender, EventArgs e)
        {
            Registrar();
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Se ha registrado correctamente una cita')</script>");
            ClsCitaDAO citaDao = new ClsCitaDAO();
            persona personaDTO = new persona();
            cita citaDtO = new cita();
            citaDtO.id_especialista = int.Parse(ddlespecialista.SelectedValue.ToString());
            citaDtO.fecha_cita = TextFecha_Dia.Text;
            citaDtO.hora_cita = TimeSpan.Parse(TextFecha_Hora.Text);
            citaDao.RegistrarCita(citaDtO);
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Se ha registrado correctamente una cita')</script>");
        }

        

    }
}