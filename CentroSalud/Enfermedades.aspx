<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="Enfermedades.aspx.cs" Inherits="CentroSalud.Enfermedades" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-md-12 mb-4">
                    <div class="card">
                        <div class="card-header">
                            <asp:Label ID="Label1" runat="server" Text="Buscar Enfermedad"></asp:Label>
                        </div>
                        <div class="card-body">
                            <div class="input-group me-2">
                                <span class="input-group-text" id="basic-addon1"><i class="fas fa-disease"></i></span>
                                <asp:DropDownList ID="ddlEnfermedad" runat="server" CssClass="form-control"  aria-describedby="basic-addon1"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="mt-1">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-footer text-light" Text="Consultar recomendaciones" OnClick="Button1_Click" />
                        </div>

                    </div>
                </div>
                <div class="col-md-12 mt-4">
                    <div class="card mt-4">
                        <div class="card-header">Recomendaciones</div>
                        <div class="card-body">
                            <asp:GridView CssClass="table" ID="GvRecomendacion" runat="server" OnSelectedIndexChanged="GvRecomendacion_SelectedIndexChanged"></asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

