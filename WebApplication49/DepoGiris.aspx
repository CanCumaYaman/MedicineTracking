<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepoGiris.aspx.cs" Inherits="WebApplication49.DepoGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" placeholder="Kullanıcı Adınız"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password" placeholder="Şifreniz"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" OnClick="Button1_Click" style="margin-left: 38px; height: 32px;" Text="Giriş" />
        </div>
    </form>
</body>
</html>
