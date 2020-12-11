<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCita.aspx.cs" Inherits="CentroSalud.RegistrarCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Buscar entidades"></asp:Label>
            <asp:DropDownList ID="ddlEntidad" runat="server"></asp:DropDownList>
                <br />
          

            <
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />

            <asp:DropDownList ID="ddlespecialista" runat="server"></asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextFecha_Dia" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextFecha_Hora" type="time" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="BtnCita" runat="server" Text="Registrar Cita" OnClick="BtnCita_Click" />
       
        </div>
    </form>
</body>
</html>
