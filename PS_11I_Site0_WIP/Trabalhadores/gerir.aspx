<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="PS_11I_Site0_WIP.Trabalhadores.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../public/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <asp:GridView OnRowDeleting="GridView1_RowDeleting" CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlTrabalhadores" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataFormatString="{0:dd-MM-yyyy}" DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
                    <asp:BoundField DataField="vencimento" HeaderText="vencimento" SortExpression="vencimento"></asp:BoundField>
                    <asp:BoundField DataField="morada" HeaderText="morada" SortExpression="morada"></asp:BoundField>
                    <asp:BoundField DataField="codigo_postal" HeaderText="codigo_postal" SortExpression="codigo_postal"></asp:BoundField>
                    <asp:BoundField DataField="contacto" HeaderText="contacto" SortExpression="contacto"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlTrabalhadores" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM Trabalhadores WHERE (id = @id)" SelectCommand="SELECT * FROM [Trabalhadores]" UpdateCommand="UPDATE Trabalhadores SET nome = @nome, data_nascimento = @data_nascimento, vencimento = @vencimento, morada = @morada, codigo_postal = @codigo_postal, contacto = @contacto WHERE (id = @id)">
                <DeleteParameters>
                    <asp:Parameter Name="id"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="vencimento" DbType="Currency"></asp:Parameter>
                    <asp:Parameter Name="morada"></asp:Parameter>
                    <asp:Parameter Name="codigo_postal"></asp:Parameter>
                    <asp:Parameter Name="contacto"></asp:Parameter>
                    <asp:Parameter Name="id"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script src="../public/jquery-3.5.1.slim.min.js"></script>
    <script src="../public/bootstrap.bundle.min.js"></script>
</body>
</html>
