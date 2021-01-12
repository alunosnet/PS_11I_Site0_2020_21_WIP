<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicionar.aspx.cs" Inherits="PS_11I_Site0_WIP.Trabalhadores.Adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Adicionar trabalhador</h2>
            <br />Nome:<asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
            <br />Data Nascimento:<asp:TextBox ID="tbData" runat="server"></asp:TextBox>
            <br />Vencimento:<asp:TextBox ID="tbVencimento" runat="server"></asp:TextBox>
            <br />Morada:<asp:TextBox ID="tbMorada" runat="server"></asp:TextBox>
            <br />Código postal:<asp:TextBox ID="tbCodPostal" runat="server"></asp:TextBox>
            <br />Contacto:<asp:TextBox ID="tbContacto" runat="server"></asp:TextBox>
            <br /><asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Adicionar" />
        </div>
    </form>
</body>
</html>
