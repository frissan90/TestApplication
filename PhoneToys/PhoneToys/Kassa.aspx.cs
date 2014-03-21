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
    public partial class Kassa : System.Web.UI.Page
    {

        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckOutBTN_Click(object sender, EventArgs e)
        {
            data.kopSagor(Session["Username"].ToString(), (List<Varukorgen>)Session["varukorg"]);
        }
    }
}