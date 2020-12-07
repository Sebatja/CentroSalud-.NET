<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enfermedades.aspx.cs" Inherits="CentroSalud.Enfermedades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Buscar Enfermedad"></asp:Label>
            <asp:DropDownList ID="ddlEnfermedad" runat="server"></asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar Recomendacion" OnClick="Button1_Click" />
            
            
            <asp:GridView ID="GvRecomendacion" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
