using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneToys
{
    public partial class Hem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["PTKAKA"] != null && HttpContext.Current.Request.Cookies["PTKAKA"].Value == "utloggad")
            {
                Response.Redirect("Loginny");
            }

            if (HttpContext.Current.Request.Cookies["PTKAKA"] == null)
            {
                Response.Redirect("Registerellerlogin");
            }
        }
    }
}