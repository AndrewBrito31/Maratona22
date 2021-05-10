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

            myCommand.CommandText = "insert into atleta values (@nome_atleta, @email)";

            myCommand.Connection = myConn;

            myConn.Open();
            myCommand.ExecuteNonQuery(); //é um insert na bd mas não devolve dados
            myConn.Close(); //fecha aplicação para não consumir dados

        }
    }
}