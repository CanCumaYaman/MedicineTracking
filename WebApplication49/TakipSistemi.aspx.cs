using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication49
{
    public partial class TakipSistemi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("YetkiliGiris.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IlacNerde.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UreticiGiris.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepoGiris.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("EczaneGiris.aspx");
        }
    }
}