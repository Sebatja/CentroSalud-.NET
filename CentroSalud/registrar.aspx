<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="CentroSalud.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <title>Registrar</title>
</head>
<body>
    <style>
        .entidadSalud{
            display:none;
        }
         .generadorContenido{
            display:none;
        }
        .generadorContenidoVer{
                  display:none;
        }
        .especialista{
                 display:none;
        }
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
              <asp:Label ID="Label12" runat="server" Text="Tipo de Rol"></asp:Label>
            <asp:DropDownList ID="TipoDeRol" runat="server" onchange="ddlselect();">
                   <asp:ListItem Value="0">Paciente</asp:ListItem>
                  <asp:ListItem Value="1">Entidad</asp:ListItem>
                  <asp:ListItem Value="2">Generador de contenido</asp:ListItem>
                  <asp:ListItem Value="3">Especialista</asp:ListItem>
            </asp:DropDownList>
            <div>
                
               
            <div ID="entidadSalud">
             <asp:Label ID="Label7" runat="server" Text="NIT" ></asp:Label>
            <asp:TextBox ID="TextNIT" runat="server"></asp:TextBox>
                <br />
                  <asp:Label ID="Label8" runat="server" Text="Razon Social" ></asp:Label>
            <asp:TextBox ID="TextRazonSocial" runat="server"></asp:TextBox>
                     <br />
                 <asp:Label ID="Label14" runat="server" Text="Representante" ></asp:Label>
            <asp:TextBox ID="TextRepresentante" runat="server"></asp:TextBox>
                     <br />
                        <asp:Label ID="Label9" runat="server" Text="Telefono" ></asp:Label>
            <asp:TextBox ID="TextTelefono" runat="server"></asp:TextBox>
                    <br />
                 <asp:Label ID="Label10" runat="server" Text="sitio Web" ></asp:Label>
            <asp:TextBox ID="TextSitioWeb" runat="server"></asp:TextBox>
                    <br />
                 <asp:Label ID="Label11" runat="server" Text="capacidad pacientes" ></asp:Label>
            <asp:TextBox ID="TextCapacidadPacientes" runat="server"></asp:TextBox>
                    <br />
                          <asp:Label ID="Label13" runat="server" Text="Cuidad" ></asp:Label>
                  <asp:DropDownList ID="ddlCuidad" runat="server"></asp:DropDownList>
            </div>

              <div ID="GeneradorContenido">
                   <br />
                     <asp:Label ID="Label15" runat="server" Text="Entidad de salud" ></asp:Label>
                  <asp:DropDownList ID="ddlEntidadSalud" runat="server"></asp:DropDownList>
                  <br />
                </div>
                   <div ID="Especialista">
                   <br />
                         <asp:Label ID="Label19" runat="server" Text="Cuidad" ></asp:Label>
                  <asp:DropDownList ID="ddlCuidadEspecialista" runat="server" OnSelectedIndexChanged="ddlCuidadEspecialista_SelectedIndexChanged"></asp:DropDownList>
                         <br />
                        <br />
                       <div class="alert alert-warning" role="alert">
 Recuerde que este especialista podra asociarlo a una entidad o no
</div>
                     <asp:Label ID="Label20" runat="server" Text="Entidad de salud" ></asp:Label>
                       
                  <asp:DropDownList ID="ddlEnitdadEspecialista" runat="server"></asp:DropDownList>
                       <br />

                       <asp:Label ID="Label17" runat="server" Text="Especialidad" ></asp:Label>
                     
            <asp:TextBox ID="TextEspecialidad" runat="server"></asp:TextBox>
                       <br />
                       <br />
                            <asp:Label ID="Label18" runat="server" Text="Numero de licencia de salud" ></asp:Label>
            <asp:TextBox ID="TextNumeroLicencia" runat="server" ></asp:TextBox>
                           <br />
                     <asp:Label ID="Label16" runat="server" Text="Fecha de expedicion" ></asp:Label>
            <asp:TextBox ID="TextFechaExpedicion" required runat="server" type="date"></asp:TextBox>
                 
                </div>
            
            </div>
         
            
                             <br />
            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
   
  <script>
      var generadorContenido = document.getElementById("GeneradorContenido");
      var especialista = document.getElementById("Especialista");
      var pp = document.getElementById("TipoDeRol").value;
      if (pp == 0) {
          entidadSalud.classList.add('entidadSalud');
          generadorContenido.classList.add('generadorContenido');
          especialista.classList.add('especialista');
      }
      function ddlselect() {
          var rol = document.getElementById("TipoDeRol").value;
          var entidadSalud = document.getElementById("entidadSalud");
          var generadorContenido = document.getElementById("GeneradorContenido");
          var especialista = document.getElementById("Especialista");
          entidadSalud.classList.add('entidadSalud');
          generadorContenido.classList.add('generadorContenido');
          especialista.classList.add('especialista');
  
          if (rol == 1) {
              entidadSalud.classList.remove('entidadSalud');
          }
          if (rol == 2) {
              generadorContenido.classList.remove("generadorContenido");
          }
          if (rol == 3) {
              especialista.classList.remove('especialista');
          }
          else {
          }
      }
  </script>
</html>

