<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiscitasEspecialista.aspx.cs" Inherits="CentroSalud.MiscitasEspecialista" %>
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
        <div>
            <h1>Mis Citas</h1>
           <asp:GridView ID="gvMiscitas" class="table" runat="server" AutoGenerateColumns="False" OnRowCommand="gvMiscitas_RowCommand1" OnSelectedIndexChanged="gvMiscitas_SelectedIndexChanged">
               <Columns>
                   <asp:TemplateField HeaderText="Acciones">
                       <ItemTemplate>
                           <asp:Button class="bt btn-primary" ID="btnxd" runat="server"  CommandName="Finalizar" Text="Finalizar Cita" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="cita" HeaderText="Cita" />
                   <asp:BoundField DataField="hora" HeaderText="Hora" />
                   <asp:BoundField DataField="Dia" HeaderText="Dia" />
                   <asp:BoundField DataField="persona_cita" HeaderText="Persona que solicita" />
              
               </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
