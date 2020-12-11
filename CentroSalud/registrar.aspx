<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="registrar.aspx.cs" Inherits="CentroSalud.registrar" %>

<asp:Content ContentPlaceHolderID="content" runat="server">
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
                                    <asp:DropDownList ID="TipoDeRol" runat="server" aria-describedby="basic-addon5" CssClass="form-control" OnSelectedIndexChanged="TipoDeRol_SelectedIndexChanged">
                                        <asp:ListItem Value="0" Selected="True">Rol del usuario</asp:ListItem>
                                        <asp:ListItem Value="1">Paciente</asp:ListItem>
                                        <asp:ListItem Value="2">Entidad de salud</asp:ListItem>
                                        <asp:ListItem Value="3">Especialista</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </li>
                        </ul>
                        <div class="oculto" id="btn-paciente">
                            <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button4" runat="server" Text="Registrar" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-5 oculto" id="secondPart">
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
                                    <asp:TextBox ID="TextSitioWeb" aria-describedby="entidad-5" placeholder="Sitio web" runat="server" CssClass="form-control"></asp:TextBox>
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

                    <div id="Especialista" class="card oculto">
                        <div class="card-header">Datos del especialista</div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <div class="alert alert-warning mt-1" role="alert">
                                    Recuerde que podrá asociarlo luego a una entidad
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-1"><i class="fas fa-map-marked-alt"></i></span>
                                    <asp:DropDownList ID="ddlCuidadEspecialista" OnSelectedIndexChanged="ddlCuidadEspecialista_SelectedIndexChanged" aria-describedby="espe-1" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-2"><i class="fas fa-hospital"></i></span>
                                    <asp:DropDownList ID="ddlEnitdadEspecialista" OnSelectedIndexChanged="ddlCuidadEspecialista_SelectedIndexChanged" aria-describedby="espe-2" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-3"><i class="fas fa-user-md"></i></span>
                                    <asp:TextBox ID="TextEspecialidad" aria-describedby="espe-3" placeholder="Especialidad" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-4"><i class="fas fa-id-card-alt"></i></span>
                                    <asp:TextBox ID="TextNumeroLicencia" aria-describedby="espe-4" placeholder="Número de licencia de salud" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-5"><i class="fas fa-calendar-check"></i></span>
                                    <asp:TextBox type="date" ID="TextFechaExpedicion" aria-describedby="espe-5" placeholder="Fecha de expedición" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>
                        </ul>
                        <div class="">
                            <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button3" runat="server" Text="Registrar" OnClick="Button1_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="script" runat="server">

    <script>

        window.addEventListener('load', function () {
            var selectRol = document.getElementById('content_TipoDeRol');
            var second = document.getElementById('secondPart');
            var btn = document.getElementById('btn-paciente');
            var entidad = document.getElementById("entidadSalud");
            var especialista = document.getElementById("Especialista");
            selectRol.addEventListener('change', function () {
                if (selectRol.value != 0) {
                    if (selectRol.value == 1) {
                        btn.classList.remove('oculto');
                        second.classList.add('oculto');
                    } else {
                        btn.classList.add('oculto');
                        second.classList.remove('oculto');
                        if (selectRol.value == 2) {
                            entidad.classList.remove('oculto');
                            especialista.classList.add('oculto');
                        }  else if (selectRol.value == 3) {
                            entidad.classList.add('oculto');
                            especialista.classList.remove('oculto');
                        }
                    }
                } else {
                    btn.classList.add('oculto');
                    second.classList.add('oculto');
                }
            });
        });
    </script>
</asp:Content>
