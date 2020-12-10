<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiscitasEspecialista.aspx.cs" Inherits="CentroSalud.MiscitasEspecialista" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Mis Citas</h1>
           <asp:GridView ID="gvMiscitas" runat="server" AutoGenerateColumns="False" OnRowCommand="gvMiscitas_RowCommand1" OnSelectedIndexChanged="gvMiscitas_SelectedIndexChanged">
               <Columns>
                   <asp:TemplateField HeaderText="Acciones">
                       <ItemTemplate>
                           <asp:Button ID="btnxd" runat="server"  CommandName="Finalizar" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="cita" HeaderText="Cita" />
                   <asp:BoundField DataField="hora" HeaderText="Hora" />
                   <asp:BoundField DataField="Dia" HeaderText="Dia" />
               </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
