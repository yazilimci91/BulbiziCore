using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bulbizi
{
    public partial class KayitOl1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rdGirisYap.Checked)
            {
                PanelGirisYap.Visible = true;
                PanelUyeOl.Visible = false;
                lblBaslik.Text = "Giriş Yap";
            }
            else if (rdUyeOl.Checked)
            {
                PanelUyeOl.Visible = true;
                PanelGirisYap.Visible = false;
                lblBaslik.Text = "Üye Ol";
            }
        }
        protected void txtAdSoyad_TextChanged(object sender, EventArgs e)
        {
            spanAdSoyad.Visible = false;
        }

        protected void rdGirisYap_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}