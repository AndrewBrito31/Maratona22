using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

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
    }
}