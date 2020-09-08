using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class Uretici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ifade = "";
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "insert Ilaclar values(@pseri,@pad,@pstok,@pürt,@pskt) insert into IlacDetay values(@pad,@petk,@pyan) ";
            string sql2 = "insert IlacDetay values(@pad,@petk,@pyan) ";
            SqlCommand komut = new SqlCommand(sql, conn);
            SqlCommand komut2 = new SqlCommand(sql2, conn);


            if (ifade == TextBox1.Text)
            {
                Response.Write("TÜM ALANLARI DOLDURUNUZ");
            }
            else
            {

                komut.Parameters.AddWithValue("@pseri", TextBox1.Text);
                komut.Parameters.AddWithValue("@pad", TextBox2.Text);
                komut.Parameters.AddWithValue("@pstok", Convert.ToInt32(TextBox3.Text));
                komut.Parameters.AddWithValue("@pürt", Calendar1.SelectedDate);
                komut.Parameters.AddWithValue("@pskt", Calendar2.SelectedDate);
                komut.Parameters.AddWithValue("@petk", TextBox7.Text);
                komut.Parameters.AddWithValue("@pyan", TextBox8.Text);
               
                conn.Open();
                SqlCommand komutEngelle = new SqlCommand("select * from Ilaclar where IlacAd=@pad", conn);
                komutEngelle.Parameters.AddWithValue("@pad", TextBox2.Text);
                if (Convert.ToInt32(komutEngelle.ExecuteScalar()) > 0)
                {
                    Response.Write("BU İLAÇ DAHA ÖNCE EKLENMİŞTİR");
                    return;
                }

                komut.ExecuteNonQuery();
      
                conn.Close();
                Response.Write("İLAÇ EKLENDİ");
               
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TakipSistemi.aspx");
        }
    }
}