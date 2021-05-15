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
           if (Session["atleta"] == null)
           {
                Response.Redirect("loginatletas.aspx");
           }
            lbl_nome_atleta.Text = $"Olá {Session["atleta"]}";
        }

        protected void lb_changepass_atletas_Click(object sender, EventArgs e)
        {
            Response.Redirect("atletaspasschange.aspx");
        }

        protected void lb_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("loginatletas.aspx");
        }
    }
}