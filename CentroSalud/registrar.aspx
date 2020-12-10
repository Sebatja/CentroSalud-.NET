<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="CentroSalud.registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="css/Estilos_del_Sistema_PP.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/11c72a119e.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="js/Alertas.js"></script>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="row justify-content-center mt-4 mb-4">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">Formulario de registro</div>

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
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon5"><i class="fas fa-user-tag"></i></span>
                                    <asp:DropDownList ID="TipoDeRol" runat="server" aria-describedby="basic-addon5" CssClass="form-control">
                                        <asp:ListItem Value="0" Selected="True">Rol del usuario</asp:ListItem>
                                        <asp:ListItem Value="1">Paciente</asp:ListItem>
                                        <asp:ListItem Value="2">Entidad</asp:ListItem>
                                        <asp:ListItem Value="3">Generador de contenido</asp:ListItem>
                                        <asp:ListItem Value="4">Especialista</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-5">
                    <div id="entidadSalud" class="card oculto">
                        <div class="card-header">Datos de la entidad</div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-1"><i class="fas fa-hashtag"></i></span>
                                    <asp:TextBox ID="TextNIT" aria-describedby="entidad-1" placeholder="NIT" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-2"><i class="fas fa-hospital-symbol"></i></span>
                                    <asp:TextBox ID="TextRazonSocial" aria-describedby="entidad-2" placeholder="Razón social" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-3"><i class="fas fa-user-tie"></i></span>
                                    <asp:TextBox ID="TextRepresentante" aria-describedby="entidad-3" placeholder="Representante" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-4"><i class="fas fa-phone"></i></span>
                                    <asp:TextBox ID="TextTelefono" aria-describedby="entidad-4" placeholder="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-5"><i class="fas fa-columns"></i></span>
                                    <asp:TextBox ID="TextStitioWeb" aria-describedby="entidad-5" placeholder="Sitio web" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-6"><i class="fas fa-hospital-user"></i></span>
                                    <asp:TextBox ID="TextCapacidadPacientes" aria-describedby="entidad-6" placeholder="Capacidad de pacientes" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>

                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="entidad-7"><i class="fas fa-map-marked-alt"></i></span>
                                    <asp:DropDownList ID="ddlCuidad" aria-describedby="entidad-7" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </li>
                        </ul>
                        <div class="">
                        <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                        </div>
                    </div>

                    <div id="GeneradorContenido" class="card oculto">
                        <div class="card-header">Generador de contenido</div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="gc-1"><i class="fas fa-hospital"></i></span>
                                    <asp:DropDownList ID="ddlEntidadSalud" aria-describedby="gc-1" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </li>
                        </ul>
                        <div class="">
                            <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button2" runat="server" Text="Registrar" OnClick="Button1_Click" />
                        </div>
                    </div>

                    <div id="Especialista" class="card">
                        <div class="card-header">Datos del especialista</div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <div class="alert alert-warning mt-1" role="alert">
                                    Recuerde que podrá asociarlo luego a una entidad
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-1"><i class="fas fa-hospital"></i></span>
                                    <asp:DropDownList ID="ddlCuidadEspecialista" OnSelectedIndexChanged="ddlCuidadEspecialista_SelectedIndexChanged" aria-describedby="espe-1" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </li>
                        </ul>
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
                </div>



            </div>
        </form>
    </div>


    <script>

        window.addEventListener('load', function () {
            var selectRol = document.getElementById('TipoDeRol');
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
</body>
</html>
