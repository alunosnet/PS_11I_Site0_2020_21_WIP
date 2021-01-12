<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="PS_11I_Site0_WIP.Trabalhadores.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../public/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Pesquisar trabalhador</h2>
            Nome:<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Pesquisar" />
            <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlTrabalhadores">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
                    <asp:BoundField DataField="vencimento" HeaderText="vencimento" SortExpression="vencimento"></asp:BoundField>
                    <asp:BoundField DataField="morada" HeaderText="morada" SortExpression="morada"></asp:BoundField>
                    <asp:BoundField DataField="codigo_postal" HeaderText="codigo_postal" SortExpression="codigo_postal"></asp:BoundField>
                    <asp:BoundField DataField="contacto" HeaderText="contacto" SortExpression="contacto"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlTrabalhadores" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Trabalhadores] WHERE ([nome] LIKE '%' + @nome + '%') ORDER BY [nome]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script src="../public/jquery-3.5.1.slim.min.js"></script>
    <script src="../public/bootstrap.bundle.min.js"></script>
</body>
</html>
