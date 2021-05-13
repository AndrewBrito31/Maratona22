using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace siteASPMaratona
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Xml_meteo.TransformSource = "meteoLisboa.xslt";

            XmlDocument ipma = new XmlDocument();
            ipma.Load("http://ipma.pt/resources.www/clientes/10150.marinha/wp_d0.xml");

            Xml_meteo.Document = ipma;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Maratona22ConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@nome_atleta", tb_nome_atleta.Text);
            myCommand.Parameters.AddWithValue("@email", tb_email_atleta.Text);
            myCommand.Parameters.AddWithValue("@password", EncryptString(tb_password.Text));

            SqlParameter validarUser = new SqlParameter();
            validarUser.ParameterName = "@retorno";
            validarUser.Direction = ParameterDirection.Output;
            validarUser.SqlDbType = SqlDbType.Int;
            myCommand.Parameters.Add(validarUser);

            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.CommandText = "inserir_atleta";

            myCommand.Connection = myConn;

            myConn.Open();
            myCommand.ExecuteNonQuery(); //é um insert na bd mas não devolve dados

            int replyStoredProcedure = Convert.ToInt32(myCommand.Parameters["@retorno"].Value);

            myConn.Close(); //fecha aplicação para não consumir dados

            if (replyStoredProcedure == 1)
                lbl_mensagem.Text = "Obrigado por se inscrever! Verifique o seu e-mail para mais detalhes";
            else
                lbl_mensagem.Text = "Já existe um atleta inscrito com o endereço de email que inseriu";
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

    }
}