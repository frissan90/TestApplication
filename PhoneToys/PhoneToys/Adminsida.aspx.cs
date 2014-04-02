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
    public partial class Adminsida : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("LoginNY");
            }
        }

        protected void registerEditorBTN_Click(object sender, EventArgs e)
        {

            Editor editor = new Editor();
            editor.Uname = UnameATB.Text;
            editor.Email = EmailATB.Text;
            editor.Password = PWTBA.Text;
            editor.Fname = FnameATB.Text;
            editor.Lname = LnameATB.Text;

            data.Register(editor);
            Session["Username"] = EmailATB.Text;


        }
    }
}