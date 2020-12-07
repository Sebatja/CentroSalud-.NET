using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            persona personaDTO = new persona();
            PersonaCls personaDAO = new PersonaCls();
            personaDTO.apellido = TextApellido.Text;
            personaDTO.nombre = TextNombre.Text;
            personaDTO.correo = TextCorreo.Text;
            personaDTO.celular = TextCelular.Text;
            personaDTO.cedula = int.Parse(TextCedula.Text);
            personaDTO.password = TextPassword.Text;
            personaDTO.id_rol = 1;
            personaDAO.RegistrarPersona(personaDTO);

            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Se ha registrado un nuevo usuario')</script>");

        }
    }
}