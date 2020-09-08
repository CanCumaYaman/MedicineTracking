<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YetkiliGiris.aspx.cs" Inherits="WebApplication49.YetkiliGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" placeholder="Kullanıcı Adınız" Height="30px" style="margin-left: 175px" Width="194px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Şifreniz" Height="30px" style="margin-left: 3px" Width="194px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" OnClick="Button1_Click" style="margin-left: 238px" Text="Giriş" Height="46px" Width="83px" />
        </div>
    </form>
</body>
</html>
