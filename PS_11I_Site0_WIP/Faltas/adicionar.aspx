<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="PS_11I_Site0_WIP.Faltas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../public/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:FormView Width="100%" DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlFaltas">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    dia_falta:
                    <asp:TextBox Text='<%# Bind("dia_falta") %>' runat="server" ID="dia_faltaTextBox" /><br />
                    id_trabalhador:
                    <asp:TextBox Text='<%# Bind("id_trabalhador") %>' runat="server" ID="id_trabalhadorTextBox" /><br />
                    tipo:
                    <asp:TextBox Text='<%# Bind("tipo") %>' runat="server" ID="tipoTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    dia_falta:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("dia_falta") %>' runat="server" ID="dia_faltaTextBox" /><br />
                    id_trabalhador:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlTrabalhadores" DataTextField="nome" DataValueField="id" SelectedValue='<%# Bind("id_trabalhador") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlTrabalhadores" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [id], [nome] FROM [Trabalhadores] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />tipo:
                    <asp:TextBox Text='<%# Bind("tipo") %>' runat="server" ID="tipoTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    dia_falta:
                    <asp:Label Text='<%# Bind("dia_falta") %>' runat="server" ID="dia_faltaLabel" /><br />
                    id_trabalhador:
                    <asp:Label Text='<%# Bind("id_trabalhador") %>' runat="server" ID="id_trabalhadorLabel" /><br />
                    tipo:
                    <asp:Label Text='<%# Bind("tipo") %>' runat="server" ID="tipoLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlFaltas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO Faltas(dia_falta, id_trabalhador, tipo) VALUES (@dia_falta, @id_trabalhador, @tipo)" SelectCommand="SELECT * FROM [Faltas]">
                <InsertParameters>
                    <asp:Parameter Name="dia_falta" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="id_trabalhador"></asp:Parameter>
                    <asp:Parameter Name="tipo"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script src="../public/jquery-3.5.1.slim.min.js"></script>
    <script src="../public/bootstrap.bundle.min.js"></script>
</body>
</html>
