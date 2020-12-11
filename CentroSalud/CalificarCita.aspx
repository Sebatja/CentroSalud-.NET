<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalificarCita.aspx.cs" Inherits="CentroSalud.CalificarCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView class="table" ID="gdMisCitasParaCalificar" runat="server" AutoGenerateColumns="False" OnRowCommand="gdMisCitasParaCalificar_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Accciones">
                        <ItemTemplate>
                            <asp:Button class="btn btn-primary" runat="server"  CommandName="Calificar" ID="btnCalificar" Text="Calificar"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="cita" HeaderText="Cita" />
                    <asp:BoundField DataField="hora" HeaderText="Hora" />
                    <asp:BoundField DataField="Dia" HeaderText="Dia" />
                    <asp:BoundField DataField="boca" HeaderText="Especialidad" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:TextBox ID="TextCita" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextCalificacion" runat="server" type="number"></asp:TextBox> 
        <br />

        <asp:Button  class="btn btn-primary" ID="BtnCalificar" runat="server" Text="Button" OnClick="BtnCalificar_Click" />

    </form>
</body>
</html>
