using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneToys
{
    public partial class AdminFinal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie kaka = Request.Cookies["ADMINKAKA"];
            if (kaka == null)
            {
                Response.Redirect("Loginny");
            }
        }

        protected void AdminLoggaUt_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Redirect("Loginny");
        }
    }
}