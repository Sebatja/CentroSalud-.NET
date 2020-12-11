<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App.Master" CodeBehind="DashboardPersonaComun.aspx.cs" Inherits="CentroSalud.DashboardPersonaComun" %>

<asp:Content ContentPlaceHolderID="lateral" runat="server">

        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link active" target="patient" aria-current="page" href="Especialistas-Citas.aspx"><i class="fas fa-calendar-alt"></i> Agendar cita</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" target="patient" aria-current="page" href="CalificarCita.aspx"><i class="fas fa-notes-medical"></i> Calificar cita</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#"><i class="fas fa-power-off"></i> Cerrar sesión</a>
            </li>
        </ul>
        <asp:Label CssClass="text-light" runat="server" ID="LblBienvenido"></asp:Label>
    
    
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <iframe src="Especialistas-Citas.aspx" name="patient" style="width:100%; height: 50rem;"></iframe>
</asp:Content>


