using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace siteASPMaratona
{
    public partial class adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_word_Click(object sender, EventArgs e)
        {
            Response.Clear();//limpa memória/sessão, evita dados inconsistentes caso existam multiplos users ao mesmo tempo na sessão
            Response.AddHeader("Content-Disposition", "attachement; filename=listaatletas.doc");
            Response.ContentType = "application/vnd.ms.word";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write($"{GridView1}");
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void btn_excel_Click(object sender, EventArgs e)
        {
            Response.Clear();//limpa memória/sessão, evita dados inconsistentes caso existam multiplos users ao mesmo tempo na sessão
            Response.AddHeader("Content-Disposition", "attachement; filename=listaatletas.xls");
            Response.ContentType = "application/vnd.ms.excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write($"{GridView1}");
            Response.Write(sw.ToString());
            Response.End();
        }
    }
}