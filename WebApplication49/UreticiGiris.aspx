<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UreticiGiris.aspx.cs" Inherits="WebApplication49.UreticiGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
    *,
    *:before,
    *:after {
       box-sizing: border-box;
    }
    form {
      border: 1px solid #c6c7cc;
      border-radius: 5px;
      font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
      overflow: hidden;
      width: 264px;
    }
    fieldset {
      border: 0;
      margin: 0;
      padding: 0;
    }
    input {
      border-radius: 5px;
      font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
      margin: 26px 0 0 39px;
        }
    .bilgi {
      padding: 20px 20px 0 20px;
    }
    .bilgi label {
      color: #395870;
      display: block;
      font-weight: bold;
      margin-bottom: 20px;
            width: 227px;
            height: 142px;
        }
    .bilgi input {
      background: #fff;
      border: 1px solid #c6c7cc;
       box-shadow: inset 0 1px 1px rgba(0, 0, 0, .1);
      color: #636466;
      padding: 6px;
      margin-top: 6px;
      width: 100%;
    }
    .islem {
      background: #f0f0f2;
      border-top: 1px solid #c6c7cc;
      padding: 20px;
            height: 102px;
            width: 275px;
        }
    .islem .btn {
        border-style: none;
            border-color: inherit;
            border-width: 0;
            color: #fff;
            cursor: pointer;
            font-weight: bold;
            float: left;
            padding: 8px 16px;
            margin-left: 40px;
        }
    .islem label {
      color: #7c7c80;
      font-size: 12px;
      float: left;
      margin: 10px 0 0 20px;
    }
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
	margin: 0px 2px 4px 2px;
	transition:all 0.4s;	
	-webkit-transition:all 0.4s;
	-moz-transition:all 0.4s;
	-o-transition:all 0.4s;
}
.btn:hover{
	box-shadow: 0 4px 8px 0 red, 0 6px 20px 0 red;
	}

    
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 0px">
            <asp:TextBox ID="TextBox1" runat="server"  CssClass="inputWithIcon inputIconBg" AutoCompleteType="Disabled" placeholder="Kullanıcı Adınız" Height="43px" Width="127px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password" placeholder="Şifreniz" Height="41px" Width="125px"></asp:TextBox>
            <br />
            <br />
             <fieldset class="islem">
            <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" OnClick="Button1_Click" style="margin-left: 45px" Text="Giriş" />
                 </fieldset>
        </div>
    </form>
</body>
</html>
