<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App.Master" CodeBehind="registrar.aspx.cs" Inherits="CentroSalud.registrar" %>

<%@ Register Src="~/Complementos/login.ascx" TagPrefix="uc1" TagName="login" %>


<asp:Content ContentPlaceHolderID="lateral" runat="server">
    <uc1:login runat="server" id="login" />
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <div class="row justify-content-center mt-4 mb-4">
        <div class="col-md-7">
            Proximamente...
        </div>
        <div class="col-md-5">
            <div class="card">
                <div class="card-header">Formulario de registro</div>

                <form id="form1" runat="server">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon6"><i class="far fa-id-card"></i></span>
                                <asp:TextBox ID="TextCedula" runat="server" CssClass="form-control" placeholder="Cédula de ciudadania" aria-describedby="basic-addon6"></asp:TextBox>
                            </div>
                        </li>
                        <li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                <asp:TextBox ID="TextNombre" CssClass="form-control" placeholder="Nombre" runat="server" aria-describedby="basic-addon1"></asp:TextBox>
                                <asp:TextBox ID="TextApellido" CssClass="form-control" placeholder="Apellido" runat="server" aria-describedby="basic-addon1"></asp:TextBox>
                            </div>
                        </li>
                        <li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon2"><i class="fas fa-at"></i></span>
                                <asp:TextBox ID="TextCorreo" runat="server" CssClass="form-control" placeholder="Correo electrónico" aria-describedby="basic-addon2"></asp:TextBox>
                            </div>
                        </li>
                        <li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon3"><i class="fas fa-mobile-alt"></i></span>
                                <asp:TextBox ID="TextCelular" runat="server" CssClass="form-control" placeholder="Celular" aria-describedby="basic-addon3"></asp:TextBox>
                            </div>
                        </li>
                        <li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon4"><i class="fas fa-lock"></i></span>
                                <asp:TextBox ID="TextPassword" type="password" runat="server" CssClass="form-control" placeholder="Contraseña" aria-describedby="basic-addon4"></asp:TextBox>
                            </div>
                        </li>
                        <!--<li class="list-group-item mt-3">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon5"><i class="fas fa-user"></i></span>
                                <asp:DropDownList ID="TipoDeRol" runat="server" aria-describedby="basic-addon5" CssClass="form-control">
                                    <asp:ListItem Value="" Selected="True">Rol del usuario</asp:ListItem>
                                    <asp:ListItem Value="1">Paciente</asp:ListItem>
                                    <asp:ListItem Value="2">Entidad</asp:ListItem>
                                    <asp:ListItem Value="3">Generador de contenido</asp:ListItem>
                                    <asp:ListItem Value="4">Especialista</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </li>-->
                    </ul>
                    <div>

                        <div id="entidadSalud" class="oculto">
                            <asp:Label ID="Label7" runat="server" Text="NIT"></asp:Label>
                            <asp:TextBox ID="TextNIT" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Razon Social"></asp:Label>
                            <asp:TextBox ID="TextRazonSocial" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label14" runat="server" Text="Representante"></asp:Label>
                            <asp:TextBox ID="TextRepresentante" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Telefono"></asp:Label>
                            <asp:TextBox ID="TextTelefono" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="sitio Web"></asp:Label>
                            <asp:TextBox ID="TextSitioWeb" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="capacidad pacientes"></asp:Label>
                            <asp:TextBox ID="TextCapacidadPacientes" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label13" runat="server" Text="Cuidad"></asp:Label>
                            <asp:DropDownList ID="ddlCuidad" runat="server"></asp:DropDownList>
                        </div>

                        <div id="GeneradorContenido" class="oculto">
                            <br />
                            <asp:Label ID="Label15" runat="server" Text="Entidad de salud"></asp:Label>
                            <asp:DropDownList ID="ddlEntidadSalud" runat="server"></asp:DropDownList>
                            <br />
                        </div>
                        <div id="Especialista" class="oculto">
                            <br />
                            <asp:Label ID="Label19" runat="server" Text="Cuidad"></asp:Label>
                            <asp:DropDownList ID="ddlCuidadEspecialista" runat="server" OnSelectedIndexChanged="ddlCuidadEspecialista_SelectedIndexChanged"></asp:DropDownList>
                            <br />
                            <br />
                            <div class="alert alert-warning" role="alert">
                                Recuerde que este especialista podra asociarlo a una entidad o no
                            </div>
                            <asp:Label ID="Label20" runat="server" Text="Entidad de salud"></asp:Label>

                            <asp:DropDownList ID="ddlEnitdadEspecialista" runat="server"></asp:DropDownList>
                            <br />

                            <asp:Label ID="Label17" runat="server" Text="Especialidad"></asp:Label>

                            <asp:TextBox ID="TextEspecialidad" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="Label18" runat="server" Text="Numero de licencia de salud"></asp:Label>
                            <asp:TextBox ID="TextNumeroLicencia" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label16" runat="server" Text="Fecha de expedicion"></asp:Label>
                            <asp:TextBox ID="TextFechaExpedicion" required="True" runat="server" type="date"></asp:TextBox>

                        </div>


                        <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ContentPlaceHolderID="script" runat="server">
    <script>

        window.addEventListener('load', function () {
            var selectRol = document.getElementById('content_TipoDeRol');
            selectRol.addEventListener('change', function () {
                alert(selectRol.value);
            });
        });


        /*var generadorContenido = document.getElementById("GeneradorContenido");
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
        }*/
    </script>
</asp:Content>
