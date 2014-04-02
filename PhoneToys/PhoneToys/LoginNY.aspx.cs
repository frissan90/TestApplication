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

        }

        protected void LoginBtn_Click(object sender, ImageClickEventArgs e)
        {
            if(data.authenticateUser(userTB.Text, passwordTB.Text))
            {
                Session["username"] = userTB.Text;

                Session["varukorg"] = new List<Varukorgen>();

                Response.Redirect("Hem");
            }

            if(data.authenticateEditor(userTB.Text, passwordTB.Text))
            {
                Session["Editor"] = userTB.Text;
                Response.Redirect("LaddaUpp");
            }

            if (data.authenticateAdmin(userTB.Text, passwordTB.Text))
            {
                Session["Admin"] = userTB.Text;
                Response.Redirect("Adminsida");
            }
        }
    }
}