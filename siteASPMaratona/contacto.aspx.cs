using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace siteASPMaratona
{
    public partial class contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(tb_from.Text);
            mail.To.Add("andreasp.net@gmail.com");
            mail.Subject = $"Mensagem de {tb_from.Text} / Formulário Contacto Maratona22";

            mail.IsBodyHtml = true;
            mail.Body = tb_formulario.Text;

            SmtpClient servidor = new SmtpClient();
            servidor.Host = "smtp.gmail.com";
            servidor.Port = 587;
            servidor.Credentials = new NetworkCredential("andreasp.net@gmail.com", "Citeforma2021");

            servidor.EnableSsl = true;

            servidor.Send(mail);
            

            lbl_msgEnviada.Visible = true;
        }
    }
}