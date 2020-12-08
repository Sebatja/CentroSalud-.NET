<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="CentroSalud.Complementos.WebUserControl1" %>
<form id="form2" class="d-flex" runat="server">
    <div>
        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="LoginBtn" CssClass="btn btn-outline-success" runat="server" Text="Login" OnClick="LoginBtn_Click" />
    </div>
</form>
