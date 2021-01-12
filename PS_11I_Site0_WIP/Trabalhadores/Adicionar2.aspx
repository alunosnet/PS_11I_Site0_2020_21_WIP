<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicionar2.aspx.cs" Inherits="PS_11I_Site0_WIP.Trabalhadores.Adicionar2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../public/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView Width="100%" DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlTrabalhadores">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    vencimento:
                    <asp:TextBox Text='<%# Bind("vencimento") %>' runat="server" ID="vencimentoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    codigo_postal:
                    <asp:TextBox Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                    contacto:
                    <asp:TextBox Text='<%# Bind("contacto") %>' runat="server" ID="contactoTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox CssClass="form-control" Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    vencimento:
                    <asp:TextBox Text='<%# Bind("vencimento") %>' runat="server" ID="vencimentoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    codigo_postal:
                    <asp:TextBox MaxLength="8" Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                    contacto:
                    <asp:TextBox Text='<%# Bind("contacto") %>' runat="server" ID="contactoTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    vencimento:
                    <asp:Label Text='<%# Bind("vencimento") %>' runat="server" ID="vencimentoLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    codigo_postal:
                    <asp:Label Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalLabel" /><br />
                    contacto:
                    <asp:Label Text='<%# Bind("contacto") %>' runat="server" ID="contactoLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlTrabalhadores" 
                ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
                InsertCommand="INSERT INTO Trabalhadores(nome, data_nascimento, vencimento, morada, codigo_postal, contacto) VALUES (@nome, @data_nascimento, @vencimento, @morada, @codigo_postal, @contacto)" 
                SelectCommand="SELECT * FROM [Trabalhadores]">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="vencimento" DbType="Currency"></asp:Parameter>
                    <asp:Parameter Name="morada"></asp:Parameter>
                    <asp:Parameter Name="codigo_postal"></asp:Parameter>
                    <asp:Parameter Name="contacto"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script src="../public/jquery-3.5.1.slim.min.js"></script>
    <script src="../public/bootstrap.bundle.min.js"></script>
</body>
</html>
