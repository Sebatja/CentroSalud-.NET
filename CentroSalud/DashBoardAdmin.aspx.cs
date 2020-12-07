using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroSalud
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
          
            
            LabelUsuario.Text = "Perreo hp";
            TextUsuario.Text = "Perreo hp";

            TextTexto.Text = "hola mundo";
            LblBienvenido.Text = "bIENVENIDO XD" + Session["pepe"] ;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}