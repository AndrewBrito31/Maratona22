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
using System.Net;
using System.Net.Mail;


namespace siteASPMaratona
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_regUtilizador_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Maratona22ConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@utilizador", tb_utilizador.Text);
            myCommand.Parameters.AddWithValue("@email", tb_email.Text);
            myCommand.Parameters.AddWithValue("@password", EncryptString(tb_password.Text));

            SqlParameter validarUser = new SqlParameter();
            validarUser.ParameterName = "@retorno_user";
            validarUser.Direction = ParameterDirection.Output; //devolve dados
            validarUser.SqlDbType = SqlDbType.Int;
            myCommand.Parameters.Add(validarUser);

            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.CommandText = "inserir_utilizador";

            myCommand.Connection = myConn;

            myConn.Open();
            myCommand.ExecuteNonQuery(); //é um insert na bd mas não devolve dados

            int replyStoredProcedure = Convert.ToInt32(myCommand.Parameters["@retorno_user"].Value);

            myConn.Close(); //fecha aplicação para não consumir dados

            if (replyStoredProcedure == 1)
            {
                lbl_registado.Text= "Obrigado pelo seu registo. O Administrador de sistemas vai ainda validar a sua conta. Aguarde instruções por e-mail.";

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("andreasp.net@gmail.com");
                mail.To.Add("andreasp.net@gmail.com");
                mail.Subject = $" Admin Sistema Maratona22 / Por favor ative novo utilizador";

                mail.IsBodyHtml = true;
                mail.Body = $"Caro administrador de Sistema, o utilizador {tb_utilizador.Text} registou-se na sua página e é necessário que ative a conta para lhe dar acesso! Clique aqui <a href='https://localhost:44352/ativacaoadmin.aspx?utilizador={EncryptString(tb_utilizador.Text)}'>aqui</a> para ativar a conta do utilizador {tb_utilizador.Text}. Após ativação, por favor confirme para o endereço de e-mail indicado pelo utilizador: {tb_email.Text}. Obrigado";

                SmtpClient servidor = new SmtpClient();
                servidor.Host = "smtp.gmail.com";
                servidor.Port = 587;
                servidor.Credentials = new NetworkCredential("andreasp.net@gmail.com", "Citeforma2021");

                servidor.EnableSsl = true;

                servidor.Send(mail);


            }

            else
                lbl_mensagem.Text = "Esse utilizador já existe!";
        }

        public static string EncryptString(string Message)
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

            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);

            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the encrypted string as a base64 encoded string

            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}