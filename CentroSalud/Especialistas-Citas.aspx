<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Especialistas-Citas.aspx.cs" Inherits="CentroSalud.Especialistas_Citas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class="align-content-center">
            <h1>
                Selecciona la cuidad y el especialista que necesites
            </h1>
        </div>
        <br />
        <br />
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cuidad"></asp:Label>
            <asp:DropDownList ID="ddlCuidad" runat="server"></asp:DropDownList>
             <asp:Label ID="Label2" runat="server" Text="Tipo de especialidad"></asp:Label>
            <asp:DropDownList ID="ddlEspecialidad" runat="server"></asp:DropDownList>
              <asp:Button ID="Button1" runat="server" Text="Buscar cita" OnClick="btnBuscar_Click" />
        </div>
       
        <asp:GridView class="table" ID="dvcitasEspe" runat="server" AutoGenerateColumns="False" OnRowCommand="dvcitasEspe_RowCommand" OnSelectedIndexChanged="dvcitasEspe_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button class="btn btn-primary"  ID="btnAsignar" runat="server" CommandName="Asignar" Text="Aginarme a esta cita" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cita" HeaderText="Cita" />
                <asp:BoundField DataField="hora" HeaderText="Hora" />
                <asp:BoundField DataField="Dia" HeaderText="Dia" />
                <asp:BoundField DataField="especialidad" HeaderText="Nombre especialista" />
                <asp:BoundField DataField="entidad" HeaderText="Entidad" />
            </Columns>
        </asp:GridView>
        <br />

    </form>
</body>
</html>
