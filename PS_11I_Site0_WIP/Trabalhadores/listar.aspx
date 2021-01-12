<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="PS_11I_Site0_WIP.Trabalhadores.listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlTrabalhadores">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento" DataFormatString="{0:dd-MM-yyyy}"></asp:BoundField>
                    <asp:BoundField DataField="vencimento" HeaderText="vencimento" SortExpression="vencimento"></asp:BoundField>
                    <asp:BoundField DataField="morada" HeaderText="morada" SortExpression="morada"></asp:BoundField>
                    <asp:BoundField DataField="codigo_postal" HeaderText="codigo_postal" SortExpression="codigo_postal"></asp:BoundField>
                    <asp:BoundField DataField="contacto" HeaderText="contacto" SortExpression="contacto"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlTrabalhadores" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Trabalhadores]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
