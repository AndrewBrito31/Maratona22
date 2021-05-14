using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace siteASPMaratona
{
    public partial class atleta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_nome_atleta.Text = $"Olá {Session["atleta"]}";
        }

        protected void lb_changepass_atletas_Click(object sender, EventArgs e)
        {
            Response.Redirect("atletaspasschange.aspx");
        }
    }
}