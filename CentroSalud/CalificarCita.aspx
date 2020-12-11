<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="CalificarCita.aspx.cs" Inherits="CentroSalud.CalificarCita" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mt-4">
        <form id="form1" runat="server">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-header">
                            Calificar mis citas
                        </div>
                        <div class="card-body">
                            <div>
                                <asp:GridView CssClass="table" ID="gdMisCitasParaCalificar" runat="server" AutoGenerateColumns="False" OnRowCommand="gdMisCitasParaCalificar_RowCommand">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Acciones">
                                            <ItemTemplate>
                                                <asp:Button runat="server" Text="Calificar" CssClass="btn btn-info text-light" CommandName="Calificar" ID="btnCalificar" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="cita" HeaderText="Cita" />
                                        <asp:BoundField DataField="hora" HeaderText="Hora" />
                                        <asp:BoundField DataField="Dia" HeaderText="Dia" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-1"><i class="fas fa-calendar"></i></span>
                                    <asp:TextBox ID="TextCita" runat="server" placeholder="Id de la cita" aria-describedby="espe-1" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item mt-3">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="espe-2"><i class="fas fa-sort-numeric-up"></i></span>
                                    <asp:TextBox ID="TextCalificacion" type="number" placeholder="Calificación" runat="server" aria-describedby="espe-2" CssClass="form-control"></asp:TextBox>
                                </div>
                            </li>
                        </ul>
                        <div class="mt-2">
                            <asp:Button ID="BtnCalificar" CssClass="btn btn-footer text-light" runat="server" Text="Calificar" OnClick="BtnCalificar_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-header">
                            Mis citas
                        </div>
                        <div class="card-body">
                            <asp:GridView CssClass="table" ID="misCitas" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="cita" HeaderText="Cita" />
                                    <asp:BoundField DataField="hora" HeaderText="Hora" />
                                    <asp:BoundField DataField="Dia" HeaderText="Dia" />
                                    <asp:BoundField DataField="esp" HeaderText="Especialidad" />
                                    <asp:BoundField DataField="nomb" HeaderText="Entidad" />
                                    <asp:BoundField DataField="cal" HeaderText="Calificación" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
