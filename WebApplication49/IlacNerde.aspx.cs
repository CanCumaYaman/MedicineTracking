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
    public partial class IlacNerde : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

      

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            string ifade = row.Cells[2].Text;
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "select * from IlacDetay where IlacAd=@pid";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pid", ifade);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            DataSet ds2 = new DataSet();
            adaptor.Fill(ds2);
            GridView2.DataSource = ds2;
            GridView2.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2A57EEU;Initial Catalog=IlacTakipSistemi;Integrated Security=True");
            string sql = "select * from IlacKonum where IlacSeriNo=@pid";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pid", TextBox1.Text);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            DataSet ds = new DataSet();
            adaptor.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
            TextBox1.Text = "";
        }
    }
}