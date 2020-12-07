using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            // Boton para Verificar si el usuario existe en el sistema

            PersonaCls clspersona = new PersonaCls();
            persona person = new persona();
            person = clspersona.Login(int.Parse(TextCedula.Text),TextPassword.Text);
            if (person.cedula != 0)
            {
                Session["idPersona"] = person.id_persona;
                Session["nombre"] = person.nombre;
                Session["apellido"] = person.apellido;
                if (person.id_rol == 1)
                {
                    Response.Redirect("DashBoardAdmin.aspx", false);
                }
                if (person.id_rol == 2)
                {
                    Response.Redirect("DashBoardPersonaComun.aspx", false);
                }
                if (person.id_rol == 3)
                {
                    Response.Redirect("DashBoardEnteSalud.aspx", false);
                }

            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Datos incorrectos')</script>");
            }
        }
    }
}