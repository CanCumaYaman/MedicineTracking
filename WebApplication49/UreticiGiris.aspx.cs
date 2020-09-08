using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class UreticiGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "select * from UreticiBilgileri where KullanıcıAd=@pku and KullanıcıSifre=@psifre";
            SqlCommand komut = new SqlCommand();
            SHA1 sha = new SHA1CryptoServiceProvider();

            string SifrelenecekVeri = TextBox2.Text;

            string SifrelenmisVeri = Convert.ToBase64String(sha.ComputeHash(Encoding.UTF8.GetBytes(SifrelenecekVeri)));

            komut.CommandText = sql;

            komut.Parameters.AddWithValue("@pku", TextBox1.Text);
            komut.Parameters.AddWithValue("@psifre", SifrelenmisVeri);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            komut.Connection = baglanti;

            baglanti.Open();

            adaptor.Fill(sonucDS);
            baglanti.Close();

            if (sonucDS.Tables[0].Rows.Count > 0)
                Response.Redirect("Uretici.aspx");
            else
                Response.Write("KULLANICI ADI VEYA ŞİFRE YANLIŞ");
        }
    }
}