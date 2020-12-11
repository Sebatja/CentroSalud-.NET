<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="index.aspx.cs" Inherits="CentroSalud.index" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container">
        <div class="row justify-content-center mt-4 mb-4">
            <div class="col-md-7">
                <iframe src="Enfermedades.aspx" style="width:100%; height:50rem;"></iframe>
            </div>
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">Formulario de registro</div>

                    <form id="form1" runat="server">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon6"><i class="far fa-id-card"></i></span>
                                    <asp:TextBox ID="TextCedula" required="true" runat="server" CssClass="form-control" placeholder="Cédula de ciudadania" aria-describedby="basic-addon6"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                    <asp:TextBox ID="TextNombre" required="true" CssClass="form-control" placeholder="Nombre" runat="server" aria-describedby="basic-addon1"></asp:TextBox>
                                    <asp:TextBox ID="TextApellido" required="true" CssClass="form-control" placeholder="Apellido" runat="server" aria-describedby="basic-addon1"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon2"><i class="fas fa-at"></i></span>
                                    <asp:TextBox ID="TextCorreo" required="true" runat="server" CssClass="form-control" placeholder="Correo electrónico" aria-describedby="basic-addon2"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon3"><i class="fas fa-mobile-alt"></i></span>
                                    <asp:TextBox ID="TextCelular" required="true" runat="server" CssClass="form-control" placeholder="Celular" aria-describedby="basic-addon3"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon4"><i class="fas fa-lock"></i></span>
                                    <asp:TextBox ID="TextPassword" required="true" type="password" runat="server" CssClass="form-control" placeholder="Contraseña" aria-describedby="basic-addon4"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon5"><i class="fas fa-user-tag"></i></span>
                                    <asp:DropDownList ID="TipoDeRol" runat="server" aria-describedby="basic-addon5" CssClass="form-control">
                                        <asp:ListItem Value="4" Selected="True">Paciente</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </li>
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

                                <br />

                                <asp:Label ID="Label17" runat="server" Text="Especialidad"></asp:Label>

                                <asp:TextBox ID="TextEspecialidad" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label18" runat="server" Text="Numero de licencia de salud"></asp:Label>
                                <asp:TextBox ID="TextNumeroLicencia" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label16" runat="server" Text="Fecha de expedicion"></asp:Label>
                                <asp:TextBox ID="TextFechaExpedicion" runat="server" type="date"></asp:TextBox>

                            </div>


                            <asp:Button CssClass="btn-info btn text-light btn-footer" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
