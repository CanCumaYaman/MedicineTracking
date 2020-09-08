using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class IlacKayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ifade = "";
            string sonuc;
            sonuc = DropDownList1.SelectedValue;
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "insert into "+sonuc+" values(@pad,@psifr)";
            SqlCommand komut = new SqlCommand(sql, conn);
            SHA1 sha = new SHA1CryptoServiceProvider();

            string SifrelenecekVeri = TextBox1.Text;

            string SifrelenmisVeri = Convert.ToBase64String(sha.ComputeHash(Encoding.UTF8.GetBytes(SifrelenecekVeri)));

            if (ifade == TextBox1.Text)
            {
                Response.Write("TÜM ALANLARI DOLDURUNUZ");
            }
            else
            {

                komut.Parameters.AddWithValue("@pad", TextBox4.Text);
                komut.Parameters.AddWithValue("@psifr", SifrelenmisVeri);



                conn.Open();
                SqlCommand komutEngelle = new SqlCommand("select * from " + sonuc + " where KullanıcıAd=@pad", conn);
                /*
                komutEngelle.Parameters.AddWithValue("@pad", TextBox1.Text);
                if (Convert.ToInt32(komutEngelle.ExecuteScalar()) > 0)
                {
                    Response.Write("BU  İLAÇ DAHA ÖNCE EKLENMİŞTİR");
                    return;
                }
                */
                komut.ExecuteNonQuery();
                conn.Close();
                Response.Write("Kişi VERİTABANINA EKLENDİ");
                TextBox1.Text = "";
                TextBox4.Text = "";



            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TakipSistemi.aspx");
        }
    }
}