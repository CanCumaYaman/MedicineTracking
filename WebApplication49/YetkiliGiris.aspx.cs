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
    public partial class YetkiliGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "select * from YetkiliBilgileri where KullanıcıAd=@pku and Sifre=@psifre";
            SqlCommand komut = new SqlCommand();
            
            komut.CommandText = sql;

            komut.Parameters.AddWithValue("@pku", TextBox1.Text);
            komut.Parameters.AddWithValue("@psifre", TextBox2.Text);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            komut.Connection = baglanti;

            baglanti.Open();

            adaptor.Fill(sonucDS);
            baglanti.Close();

            if (sonucDS.Tables[0].Rows.Count > 0)
                Response.Redirect("IlacKayıt.aspx");
            else
                Response.Write("KULLANICI ADI VEYA ŞİFRE YANLIŞ");
        }
    }
}