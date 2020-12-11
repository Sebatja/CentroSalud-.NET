<%@ Page Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Especialistas-Citas.aspx.cs" Inherits="CentroSalud.Especialistas_Citas" %>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-md-12 mb-4">
                            <div class="card">
                                <div class="card-header">Agendar cita</div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item mt-3">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="cita-1"><i class="fas fa-map-marked-alt"></i></span>
                                            <asp:DropDownList ID="ddlCuidad" aria-describedby="cita-1" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </li>
                                    <li class="list-group-item mt-3">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="cita-2"><i class="fas fa-user-md"></i></span>
                                            <asp:DropDownList ID="ddlEspecialidad" aria-describedby="cita-2" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </li>
                                </ul>
                                <div class="">
                                    <asp:Button ID="btnBuscar" runat="server" Text="Consultar disponibilidad" OnClick="btnBuscar_Click" CssClass="btn btn-footer text-light" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-4">

                            <div class="mt-4 card">
                                <div class="card-header">Citas disponibles</div>
                                <div class="card-body">
                                    <asp:GridView CssClass="table" ID="dvcitasEspe" runat="server" AutoGenerateColumns="False" OnRowCommand="dvcitasEspe_RowCommand" OnSelectedIndexChanged="dvcitasEspe_SelectedIndexChanged">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Acciones">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnAsignar" runat="server" Text="Asignar" CssClass="btn btn-info text-light" CommandName="Asignar" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cita" HeaderText="Cita" />
                                            <asp:BoundField DataField="hora" HeaderText="Hora" />
                                            <asp:BoundField DataField="Dia" HeaderText="Dia" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
