<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Especialistas-Citas.aspx.cs" Inherits="CentroSalud.Especialistas_Citas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cuidad"></asp:Label>
            <asp:DropDownList ID="ddlCuidad" runat="server"></asp:DropDownList>
             <asp:Label ID="Label2" runat="server" Text="Tipo de especialidad"></asp:Label>
            <asp:DropDownList ID="ddlEspecialidad" runat="server"></asp:DropDownList>
        </div>
        <asp:GridView ID="dvcitasEspe" runat="server" AutoGenerateColumns="False" OnRowCommand="dvcitasEspe_RowCommand" OnSelectedIndexChanged="dvcitasEspe_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="btnAsignar" runat="server" CommandName="Asignar" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cita" HeaderText="Cita" />
                <asp:BoundField DataField="hora" HeaderText="Hora" />
                <asp:BoundField DataField="Dia" HeaderText="Dia" />
            </Columns>
        </asp:GridView>
        <asp:TextBox ID="TextPruebecita" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Button" OnClick="btnBuscar_Click" />
        <br />

    </form>
</body>
</html>
