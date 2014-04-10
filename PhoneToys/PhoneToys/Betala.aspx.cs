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
    public partial class Betala : System.Web.UI.Page
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

            DropdownList1.Items.Add("VISA");
            DropdownList1.Items.Add("Mastercard");

            DropdownList2.Items.Add("01");
            DropdownList2.Items.Add("02");
            DropdownList2.Items.Add("03");
            DropdownList2.Items.Add("04");
            DropdownList2.Items.Add("05");
            DropdownList2.Items.Add("06");
            DropdownList2.Items.Add("07");

            DropdownList3.Items.Add("01");
            DropdownList3.Items.Add("02");
            DropdownList3.Items.Add("03");
            DropdownList3.Items.Add("04");
        }

        protected void BetalaBTN_Click(object sender, EventArgs e)
        {
            data.kopSagor(Session["username"].ToString(), (List<Varukorgen>)Session["varukorg"]);
        }
    }
}