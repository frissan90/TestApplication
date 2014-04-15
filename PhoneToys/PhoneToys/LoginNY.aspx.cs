using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;

namespace PhoneToys
{
    public partial class LoginNY : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            data.getSagorByUser("member001");
        }

        protected void LoginBtn_Click(object sender, ImageClickEventArgs e)
        {
            if(data.authenticateUser(userTB.Text, passwordTB.Text))
            {
                Session["username"] = userTB.Text;

                Session["varukorg"] = new List<Varukorgen>();

                HttpCookie PhoneToysCookie = new HttpCookie("PTKAKA", "inloggad");

                PhoneToysCookie.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(PhoneToysCookie);

                HttpCookie user = new HttpCookie("KrypteradKaka", userTB.Text);

                user = Kryptering.encryptUser(user);

                Response.Cookies.Add(user);

                Response.Redirect("Hem");
            }

            if(data.authenticateEditor(userTB.Text, passwordTB.Text))
            {
                HttpCookie cheeseCake = new HttpCookie("EDITORKAKA", "inloggad");
                cheeseCake.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cheeseCake);
                Session["Editor"] = userTB.Text;
                Response.Redirect("RedaktorStart");
            }

            if (data.authenticateAdmin(userTB.Text, passwordTB.Text))
            {
                HttpCookie chocolateChipCookie = new HttpCookie("ADMINKAKA", "inloggad");
                chocolateChipCookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(chocolateChipCookie);
                Session["Admin"] = userTB.Text;
                Response.Redirect("Adminsida");
            }
        }
    }
}