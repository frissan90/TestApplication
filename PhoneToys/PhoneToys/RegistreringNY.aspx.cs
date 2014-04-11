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
    public partial class RegistreringNY : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["BAMSE"] == null)
            {
                Response.Redirect("Registerellerlogin");
            }

            
        }


        protected void Nextbtn_Click(object sender, EventArgs e)
        {
            User user = new User();

            user.Uname = UnameTB.Text;
            user.Password = PWTB.Text;
            user.Email = EmailTB.Text;
            user.Bamse = Request.Cookies["BAMSE"].Value;

            data.Register(user);

            Session["username"] = UnameTB.Text;

            Session["varukorg"] = new List<Varukorgen>();

            HttpCookie kaka = new HttpCookie("PTKAKA", "inloggad");

            kaka.Expires = DateTime.Now.AddDays(30);

            Response.Cookies.Add(kaka);

            Response.Redirect("Hem");
        }
    }
}