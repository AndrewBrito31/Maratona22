using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace siteASPMaratona
{
    public partial class atleta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //if (Session["atleta"] == null)
           //{
           //     Response.Redirect("loginatletas.aspx");
           //}
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

        protected void btn_dorsal_Click(object sender, EventArgs e)
        {
            string caminho = ConfigurationSettings.AppSettings.Get("PathFicheiros");
            string caminhoPDFS = ConfigurationSettings.AppSettings.Get("PathFicheirosPDFS");

            string pdfTemplate = caminhoPDFS + "Template\\templateDorsal.pdf";

            string nomePDF = "dorsal"+tb_numDorsal.Text+".pdf";
            string newFile = caminhoPDFS + nomePDF;

            PdfReader pdfreader = new PdfReader(pdfTemplate);
            PdfStamper pdfstamper = new PdfStamper(pdfreader, new FileStream(newFile, FileMode.Create));

            AcroFields pdfFormFields = pdfstamper.AcroFields;

            pdfFormFields.SetField("num_dorsal", tb_numDorsal.Text);

            pdfstamper.Close();

            Response.Redirect(caminho + "PDFS/" + nomePDF);

        }
    }
}