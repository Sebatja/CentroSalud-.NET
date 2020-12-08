using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClsCuidadDAO cuidadDAO = new ClsCuidadDAO();

            ddlCuidad.DataSource = cuidadDAO.ConsultarTodos();
            ddlCuidad.DataValueField = "id_ciudad";
            ddlCuidad.DataTextField = "ciudad1";
            ddlCuidad.DataBind();

            ClsCuidadDAO cuidadDAOE = new ClsCuidadDAO();

            ddlCuidadEspecialista.DataSource = cuidadDAOE.ConsultarTodos();
            ddlCuidadEspecialista.DataValueField = "id_ciudad";
            ddlCuidadEspecialista.DataTextField = "ciudad1";
            ddlCuidadEspecialista.DataBind();

            ClsEntidadSaludDAO entidadsaludDaoE = new ClsEntidadSaludDAO();
            ddlEnitdadEspecialista.DataSource = entidadsaludDaoE.ConsultarTodos();
            ddlEnitdadEspecialista.DataValueField = "id_persona";
            ddlEnitdadEspecialista.DataTextField = "sitio_web";
            ddlEnitdadEspecialista.DataBind();


            ClsEntidadSaludDAO entidadsaludDao = new ClsEntidadSaludDAO();
            ddlEntidadSalud.DataSource = entidadsaludDao.ConsultarTodos();
            ddlEntidadSalud.DataValueField = "id_persona";
            ddlEntidadSalud.DataTextField = "sitio_web";
            ddlEntidadSalud.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (int.Parse(TipoDeRol.SelectedValue.ToString()) == 0 || int.Parse(TipoDeRol.SelectedValue.ToString()) == 4)
            {
                persona personaDTO = new persona();
                PersonaCls personaDAO = new PersonaCls();
                int Identificicador = int.Parse(TextCedula.Text);
                personaDTO.apellido = TextApellido.Text;
                personaDTO.nombre = TextNombre.Text;
                personaDTO.correo = TextCorreo.Text;
                personaDTO.celular = TextCelular.Text;
                personaDTO.cedula = Identificicador;
                personaDTO.password = TextPassword.Text;
                personaDTO.id_rol = 4; // Rol entidad de salud
                personaDAO.RegistrarPersona(personaDTO);

                TextCelular.Text = "";
                TextApellido.Text = "";
                TextNombre.Text = "";
                TextCedula.Text = "";
                TextPassword.Text = "";
                TextCorreo.Text = "";
            }
            if (int.Parse(TipoDeRol.SelectedValue.ToString()) == 2)
            {
                persona personaDTO = new persona();
                PersonaCls personaDAO = new PersonaCls();
                int Identificicador = int.Parse(TextCedula.Text);
                personaDTO.apellido = TextApellido.Text;
                personaDTO.nombre = TextNombre.Text;
                personaDTO.correo = TextCorreo.Text;
                personaDTO.celular = TextCelular.Text;
                personaDTO.cedula = Identificicador;
                personaDTO.password = TextPassword.Text;
                personaDTO.id_rol = 2; // Rol entidad de salud
                personaDAO.RegistrarPersona(personaDTO);
                ente_salud EntesaludDto = new ente_salud();
                ClsEntidadSaludDAO entidadSaludDAO = new ClsEntidadSaludDAO();
                EntesaludDto.id_persona = Identificicador;
                EntesaludDto.nit = int.Parse(TextNIT.Text);
                EntesaludDto.razon_social = TextRazonSocial.Text;
                EntesaludDto.representante = TextRepresentante.Text;
                EntesaludDto.telefono = TextTelefono.Text;
                EntesaludDto.sitio_web = TextSitioWeb.Text;
                EntesaludDto.id_cuidad = int.Parse(ddlCuidad.SelectedValue.ToString());
                EntesaludDto.capacidad_pacientes = int.Parse(TextCapacidadPacientes.Text);
                entidadSaludDAO.RegistrarEntidad(EntesaludDto);



            }
            if (int.Parse(TipoDeRol.SelectedValue.ToString()) == 3)
            {
                persona personaDTO = new persona();
                PersonaCls personaDAO = new PersonaCls();
                int Identificicador = int.Parse(TextCedula.Text);
                personaDTO.apellido = TextApellido.Text;
                personaDTO.nombre = TextNombre.Text;
                personaDTO.correo = TextCorreo.Text;
                personaDTO.celular = TextCelular.Text;
                personaDTO.cedula = Identificicador;
                personaDTO.password = TextPassword.Text;
                personaDTO.id_rol = 3; // Rol entidad de salud
                personaDAO.RegistrarPersona(personaDTO);


                generador_contenido generadorcontenidoDTO = new generador_contenido();
                ClsGeneradorContenido generadorContenidoDAO = new ClsGeneradorContenido();
                generadorcontenidoDTO.id_persona = Identificicador;
                generadorcontenidoDTO.id_ente_salud = int.Parse(ddlEntidadSalud.SelectedValue.ToString());
                generadorContenidoDAO.RegistrarGeneradorContenido(generadorcontenidoDTO);
            }
            if (int.Parse(TipoDeRol.SelectedValue.ToString()) == 5)
            {
                persona personaDTO = new persona();
                PersonaCls personaDAO = new PersonaCls();
                int Identificicador = int.Parse(TextCedula.Text);
                personaDTO.apellido = TextApellido.Text;
                personaDTO.nombre = TextNombre.Text;
                personaDTO.correo = TextCorreo.Text;
                personaDTO.celular = TextCelular.Text;
                personaDTO.cedula = Identificicador;
                personaDTO.password = TextPassword.Text;
                personaDTO.id_rol = 3; // Rol entidad de salud
                personaDAO.RegistrarPersona(personaDTO);

                especialista especialistaDTO = new especialista();
                ClsEspecialidadDAO especialidadDAo = new ClsEspecialidadDAO();
                especialistaDTO.id_persona = Identificicador;
                especialistaDTO.id_ciudad = int.Parse(ddlCuidadEspecialista.SelectedValue.ToString());
                especialistaDTO.id_ente_salud = int.Parse(ddlEnitdadEspecialista.SelectedValue.ToString());
                especialistaDTO.especialidad = TextEspecialidad.Text;
                especialistaDTO.numero_de_licencia_de_salud = TextNumeroLicencia.Text;
                especialistaDTO.fecha_de_expedicion = Convert.ToDateTime(TextFechaExpedicion.Text);
                especialidadDAo.RegistrarEspecialidad(especialistaDTO);

            }

            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Se ha registrado un nuevo usuario')</script>");

        }

        protected void ddlCuidadEspecialista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            // Boton para Verificar si el usuario existe en el sistema

            PersonaCls clspersona = new PersonaCls();
            persona person = new persona();
            person = clspersona.Login(int.Parse(TextCedula.Text), TextPassword.Text);
            if (person.cedula != 0)
            {
                Session["idPersona"] = person.cedula;
                Session["nombre"] = person.nombre;
                Session["apellido"] = person.apellido;
                Session["pepe"] = person.nombre;

                if (person.id_rol == 1)
                {
                    Session["uno"] = 1;
                    Response.Redirect("DashBoardAdmin.aspx", false);
                }
                if (person.id_rol == 2)
                {
                    Response.Redirect("DashBoardEnteSalud.aspx", false);

                }
                if (person.id_rol == 3)
                {
                    Response.Redirect("DashBoardPersonaComun.aspx", false);
                }

            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Datos incorrectos')</script>");
            }
        }

    }
}