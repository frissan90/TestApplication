using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneToys
{
    public partial class PhoneToysFinal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            HttpCookie KryptKaka = new HttpCookie("Krypteradkaka");

            KryptKaka.Expires = DateTime.Now.AddDays(-1);

            Response.Cookies.Add(KryptKaka);

            HttpCookie kaka = new HttpCookie("PTKAKA", "utloggad");

            kaka.Expires = DateTime.Now.AddDays(30);

            Response.Cookies.Add(kaka);
            //HttpContext.Current.Request.Cookies["PTKAKA"].Value = "utloggad";
            //string g = HttpContext.Current.Request.Cookies["PTKAKA"].Value;
            Session.Clear();
            Response.Redirect("LoginNY");
        }
    }
}