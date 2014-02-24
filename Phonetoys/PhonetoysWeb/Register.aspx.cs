using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhonetoysWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            countryDD.Items.Add("Select Country");
            countryDD.Items.Add("Sverige");
            countryDD.Items.Add("Norge");
            countryDD.Items.Add("Danmark");
            countryDD.Items.Add("Suomi");
        }
    }
}