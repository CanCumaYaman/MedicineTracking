using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class Depo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "select * from Ilaclar";
            SqlCommand komut = new SqlCommand(sql, baglanti);

            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            DataSet ds = new DataSet();
            adaptor.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ifade = "";
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "insert into IlacKonum values(@pno,@pad,@pkonum,@ptarih) ";
            SqlCommand komut = new SqlCommand(sql, conn);
       

            if (ifade == TextBox1.Text)
            {
                Response.Write("TÜM ALANLARI DOLDURUNUZ");
            }
            else
            {

                komut.Parameters.AddWithValue("@pno",TextBox1.Text);
                komut.Parameters.AddWithValue("@pad", TextBox2.Text);
                komut.Parameters.AddWithValue("@pkonum", TextBox3.Text);
                komut.Parameters.AddWithValue("@ptarih", Calendar1.SelectedDate);
           
                conn.Open();
                SqlCommand komutEngelle = new SqlCommand("select * from IlacKonum where IlacSeriNo=@pno", conn);
                komutEngelle.Parameters.AddWithValue("@pno", TextBox1.Text);
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