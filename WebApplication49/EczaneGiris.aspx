<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EczaneGiris.aspx.cs" Inherits="WebApplication49.EczaneGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adınız" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 48px" Text="Giriş" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
