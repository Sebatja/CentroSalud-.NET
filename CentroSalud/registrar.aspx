<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="CentroSalud.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <style>
        .entidadSalud{
            display:none;
        }
        .generadorContenidoVer{
                  display:none;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextNombre" runat="server"></asp:TextBox>
           <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TextApellido" runat="server"></asp:TextBox>
                       <br />
            <asp:Label ID="Label3" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="TextCorreo" runat="server"></asp:TextBox>
                  <br />
                 <asp:Label ID="Label4" runat="server" Text="Celular"></asp:Label>
            <asp:TextBox ID="TextCelular" runat="server"></asp:TextBox>
                    <br />
              <asp:Label ID="Label6" runat="server" Text="Cedula"></asp:Label>
            <asp:TextBox ID="TextCedula" runat="server"></asp:TextBox>
                             <br />
                    <br />
             <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
                             <br />
              <br />
            <asp:DropDownList ID="TipoDeRol" runat="server" onchange="ddlselect();">
                   <asp:ListItem Value="0">Seleccione</asp:ListItem>
                  <asp:ListItem Value="1">Entidad</asp:ListItem>
                  <asp:ListItem Value="2">Generador de contenido</asp:ListItem>
            </asp:DropDownList>
            <div ID="entidadSalud">
             <asp:Label ID="Label8" runat="server" Text="EPS" ></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </div>
            
                             <br />
            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
   
  <script>
     
      function ddlselect() {
          var rol = document.getElementById("TipoDeRol").value;
          var entidadSalud = document.getElementById("entidadSalud");
  
          if (rol == 1) {
              entidadSalud.classList.remove('entidadSalud');
          }
          else {
              entidadSalud.classList.add('entidadSalud');
          }
      }
  </script>
</html>

