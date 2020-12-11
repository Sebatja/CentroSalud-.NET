<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="MiscitasEspecialista.aspx.cs" Inherits="CentroSalud.MiscitasEspecialista" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form id="form1" runat="server">
                    <div class="card">
                        <div class="card-header">
                            Mis citas
                        </div>
                        <div class="card-body">
                            <asp:GridView CssClass="table" ID="gvMiscitas" runat="server" AutoGenerateColumns="False" OnRowCommand="gvMiscitas_RowCommand1" OnSelectedIndexChanged="gvMiscitas_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="Acciones">
                                        <ItemTemplate>
                                            <asp:Button ID="btnxd" Text="Finalizar" CssClass="btn btn-info text-light" runat="server" CommandName="Finalizar" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="cita" HeaderText="Cita" />
                                    <asp:BoundField DataField="hora" HeaderText="Hora" />
                                    <asp:BoundField DataField="Dia" HeaderText="Dia" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>
