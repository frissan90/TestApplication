using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneToys
{
    public partial class RegisterEllerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["PTKAKA"] != null && HttpContext.Current.Request.Cookies["PTKAKA"].Value == "utloggad")
            {
                Response.Redirect("LoginNy");
            }
            if (HttpContext.Current.Request.Cookies["PTKAKA"] != null && HttpContext.Current.Request.Cookies["PTKAKA"].Value == "inloggad")
            {
                Response.Redirect("Spela");
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginNY");

        }
    }
}