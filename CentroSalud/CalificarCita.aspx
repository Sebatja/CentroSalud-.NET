<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalificarCita.aspx.cs" Inherits="CentroSalud.CalificarCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gdMisCitasParaCalificar" runat="server" AutoGenerateColumns="False" OnRowCommand="gdMisCitasParaCalificar_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Accciones">
                        <ItemTemplate>
                            <asp:Button runat="server" CommandName="Calificar" ID="btnCalificar"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="cita" HeaderText="Cita" />
                    <asp:BoundField DataField="hora" HeaderText="Hora" />
                    <asp:BoundField DataField="Dia" HeaderText="Dia" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:TextBox ID="TextCita" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextCalificacion" runat="server" type="number"></asp:TextBox> 
        <br />

        <asp:Button ID="BtnCalificar" runat="server" Text="Button" OnClick="BtnCalificar_Click" />

    </form>
</body>
</html>
