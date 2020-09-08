<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Depo.aspx.cs" Inherits="WebApplication49.Depo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" placeholder="İlaç Seri Numarasını Giriniz" style="margin-left: 9px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 55px" AutoCompleteType="Disabled" placeholder="İlaç Adını Giriniz"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 54px" AutoCompleteType="Disabled" placeholder="İlaç Konumunu Giriniz"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 102px" Text="EKLE" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="btn" Font-Italic="true" BackColor="Black" ForeColor="White" style="margin-left: 74px" Text="Ana Sayfaya Dön" OnClick="Button2_Click" />
        </div>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IlacSeriNo" HeaderText="IlacSeriNo" SortExpression="IlacSeriNo" />
                <asp:BoundField DataField="IlacAd" HeaderText="IlacAd" SortExpression="IlacAd" />
                <asp:BoundField DataField="IlacNerede" HeaderText="IlacNerede" SortExpression="IlacNerede" />
                <asp:BoundField DataField="IlacTarih" HeaderText="IlacTarih" SortExpression="IlacTarih" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IlacTakipSistemiConnectionString %>" SelectCommand="SELECT * FROM [IlacKonum]"></asp:SqlDataSource>
    </form>
</body>
</html>
