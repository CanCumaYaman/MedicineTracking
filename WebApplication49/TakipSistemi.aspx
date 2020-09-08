<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TakipSistemi.aspx.cs" Inherits="WebApplication49.TakipSistemi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .btn {
	background-color: white;
	border: 2px solid black;
	border-radius:8px;
	color: #09F;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 12pt;
	font-family:Verdana;
	margin: 0px 2px 4px 937px;
	transition:all 0.4s;	
	-webkit-transition:all 0.4s;
	-moz-transition:all 0.4s;
	-o-transition:all 0.4s;
}
.btn:hover{
	box-shadow: 0 4px 8px 0 red, 0 6px 20px 0 red;
	}
</style>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" Text="Yetkili Giriş" BorderStyle="Solid" Width="326px" Height="70px" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" OnClick="Button3_Click" style="margin-left: 935px" Text="Üretici Giriş" Width="330px" Height="70px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 938px" Text="Depo Giriş" OnClick="Button4_Click" Width="326px" Height="70px" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 937px" Text="Eczane Giriş" OnClick="Button5_Click" Width="326px" Height="70px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 930px; margin-right: 0px; margin-top: 0px;" Text="Tüketici Giriş" BorderStyle="Solid" Width="327px" Height="92px" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>
