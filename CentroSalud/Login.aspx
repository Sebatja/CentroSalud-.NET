<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CentroSalud.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextCedula" runat="server"></asp:TextBox>
            <br/>
            <br/>
            <br/>
            <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>
             <br/>
            <br/>
            <br/>
            <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" Width="114px" />
        </div>
    </form>
</body>
</html>
