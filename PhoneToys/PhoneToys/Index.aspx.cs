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
            List<Varukorg> lstshop = new List<Varukorg>();

            Varukorg v = new Varukorg();
            v.Antal = 3;
            v.Pris = 232;
            v.Saga = "Sagan";

            lstshop.Add(v);
            lstshop.Add(v);
            lstshop.Add(v);
            lstshop.Add(v);

            Session["lst"] = lstshop;

            
        }
    }
}