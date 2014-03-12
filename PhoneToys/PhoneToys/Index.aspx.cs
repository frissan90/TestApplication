using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;

namespace PhoneToys
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Varukorgen> lstshop = new List<Varukorgen>();

            Varukorgen v = new Varukorgen();

            v.Saga = "wefw";
            v.Pris = 123;
            v.Antal = 12;
            lstshop.Add(v);

            Session["varukorg"] = lstshop;

            
        }
    }
}