<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App.Master" CodeBehind="Login.aspx.cs" Inherits="CentroSalud.WebForm1" %>

<asp:Content ContentPlaceHolderID="lateral" runat="server">
    <form id="form1" class="d-flex" runat="server">
        <div class="input-group me-2">
            <span class="input-group-text" id="basic-addon1"><i class="far fa-id-card"></i></span>
            <asp:TextBox ID="TextCedula" runat="server" CssClass="form-control" placeholder="Cédula de ciudadania" aria-describedby="basic-addon1"></asp:TextBox>
        </div>
        <div class="input-group me-2">
            <span class="input-group-text" id="basic-addon2"><i class="fas fa-lock"></i></span>
            <asp:TextBox ID="TextPassword" runat="server" CssClass="form-control" type="password" placeholder="Contraseña" aria-describedby="basic-addon2"></asp:TextBox>
        </div>
        <asp:Button ID="LoginBtn" CssClass="btn btn-outline-success" runat="server" Text="Ingresar" OnClick="LoginBtn_Click"/>
    </form>
</asp:Content>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <iframe src="index.aspx" style="width:100%; height: 100vh;"></iframe>
</asp:Content>