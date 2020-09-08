<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IlacKayıt.aspx.cs" Inherits="WebApplication49.IlacKayıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
    <style type="text/css">
        .btn {
            margin-left: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" Height="24px" placeholder="Yeni Üye Adı Giriniz" style="margin-left: 162px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Yeni Üye Şifre Belirleyiniz" AutoCompleteType="Disabled" Height="27px" style="margin-left: 162px" Width="156px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="152px" style="margin-left: 163px">
                <asp:ListItem>UreticiBilgileri</asp:ListItem>
                <asp:ListItem>DepoBilgileri</asp:ListItem>
                <asp:ListItem>EczaneBilgileri</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"  CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" OnClick="Button1_Click" style="margin-left: 199px" Text="Kayıt" Height="41px" Width="67px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" Text="Ana Sayfaya Dön" Height="36px" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>
