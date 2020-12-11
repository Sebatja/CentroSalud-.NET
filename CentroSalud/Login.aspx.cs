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
                Session["idPersona"] = person.cedula;
                Session["nombre"] = person.nombre + " (" + person.apellido + ")";
                Session["apellido"] = person.apellido;
                Session["pepe"] = person.nombre;

                if (person.id_rol == 1)
                {
                    Session["uno"] = 1;
                    Response.Redirect("DashBoardAdmin.aspx", false);
                }
                else if (person.id_rol == 3)
                {
                    Response.Redirect("DashBoardEnteSalud.aspx", false);
                 
                }
                else if (person.id_rol == 2)
                {
                    Response.Redirect("DashBoardPersonaComun.aspx", false);
                }                
                else if(person.id_rol == 4)
                {
                    Response.Redirect("DashBoardEspecialista.aspx", false);
                }

            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaPopUp('Datos incorrectos','La información suministrada no concuerda con nuestros registros, por favor valide la información e intente nuevamente.','error');</script>");
            }
        }
    }
}