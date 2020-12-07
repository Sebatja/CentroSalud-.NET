<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoardAdmin.aspx.cs" Inherits="CentroSalud.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelUsuario" runat="server" Text="hola" ></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="????"></asp:Label>
            <asp:TextBox ID="TextUsuario" runat="server"></asp:TextBox>



            <br />
            <asp:Label runat="server" ID="LblBienvenido" ></asp:Label>

            <asp:TextBox ID="TextTexto" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
