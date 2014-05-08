using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using DataAccessLayer;

namespace PhoneToys
{
    public partial class Hem : System.Web.UI.Page
    {

        private Data data = new Data();
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

            if (Session["varukorg"] == null)
            {
                Session["varukorg"] = new List<Varukorgen>();
            }

            Session["username"] = Kryptering.decryptUser(HttpContext.Current.Request.Cookies["Krypteradkaka"]);

            List<Saga> LatestSagor = data.getLatestSaga();

            List<Saga> PopularSaga = data.getTop5Sagor();
        }
    }
}