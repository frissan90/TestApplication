using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace PhoneToys
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInBTN_Click(object sender, EventArgs e)
        {
            if (data.authenticateUser(UnameTB.Text, PWTB.Text))
            {
                Response.Redirect("Index.aspx");
            }
                
        }
    }
}