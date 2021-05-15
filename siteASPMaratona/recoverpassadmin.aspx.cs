using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net;

namespace siteASPMaratona
{
    public partial class recoverpassadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_recuperar_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Maratona22ConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@email", tb_email.Text);

            SqlParameter recuperarEmail = new SqlParameter();
            recuperarEmail.ParameterName = "@retorno_pass";
            recuperarEmail.Direction = ParameterDirection.Output; //devolve dados
            recuperarEmail.SqlDbType = SqlDbType.VarChar;
            recuperarEmail.Size = 50;
            myCommand.Parameters.Add(recuperarEmail);

            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.CommandText = "recuperarPWuserAdmin";

            myCommand.Connection = myConn;

            myConn.Open();
            myCommand.ExecuteNonQuery(); //é um insert na bd mas não devolve dados

            string replyStoredProcedure = myCommand.Parameters["@retorno_pass"].Value.ToString();

            myConn.Close(); //fecha aplicação para não consumir dados

            if (replyStoredProcedure == "")
            {
                 lbl_msg.Text = "O endereço de email que indicou não consta dos nossos registos";
            }

            else
            {
                
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("andreasp.net@gmail.com");
                mail.To.Add(tb_email.Text);
                mail.Subject = $"Recuperaçção de Palavra Passe";

                mail.IsBodyHtml = true;
                mail.Body = $"A palavra passe associada ao endereço de email {tb_email.Text} é {DecryptString(replyStoredProcedure)}!";

                SmtpClient servidor = new SmtpClient();
                servidor.Host = "smtp.gmail.com";
                servidor.Port = 587;
                servidor.Credentials = new NetworkCredential("andreasp.net@gmail.com", "Citeforma2021");

                servidor.EnableSsl = true;

                servidor.Send(mail);

                lbl_msg.Text = "Enviada password associada para o email indicado";
            }
                
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        public static string DecryptString(string Message)
        {
            string Passphrase = "rosamota";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Setup the decoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]

            Message = Message.Replace("KKK", "+");
            Message = Message.Replace("JJJ", "/");
            Message = Message.Replace("III", "\\");


            byte[] DataToDecrypt = Convert.FromBase64String(Message);

            // Step 5. Attempt to decrypt the string
            try
            {
                ICryptoTransform Decryptor = TDESAlgorithm.CreateDecryptor();
                Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the decrypted string in UTF8 format
            return UTF8.GetString(Results);
        }


    }
}