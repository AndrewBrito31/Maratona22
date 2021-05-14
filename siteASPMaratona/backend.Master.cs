using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace siteASPMaratona
{
    public partial class backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_id_utilizador.Text = $"Olá {Session["utilizador"]}";
        }

        protected void lb_changepass_Click(object sender, EventArgs e)
        {
            Response.Redirect("userpasschange.aspx");
        }
    }
}