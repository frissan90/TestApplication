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
    public partial class Betala2 : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropdownList1.Items.Add("VISA");
            DropdownList1.Items.Add("Mastercard");
            DropdownList1.Items.Add("American Express Card");


            int Ar = DateTime.Now.Year - 2000;

            for (int i = 0; i < 12; i++)
            {
                DropdownList2.Items.Add(Ar.ToString());
                Ar += 1;
            }



            for (int i = 01; i < 13; i++)
            {
                if (i < 10)
                {
                    string manad = "0" + i;
                    DropdownList3.Items.Add(manad);
                }
                else
                {
                    DropdownList3.Items.Add(i.ToString());
                }

                
            }

            if (!Page.IsPostBack)
            {
                BetalningsRepeater.DataSource = Session["varukorg"];
                BetalningsRepeater.DataBind();
            }
            BetalningsRepeater.ItemCommand += new RepeaterCommandEventHandler(this.BetalningsRepeater_ItemCommand);

            double totalPris = 0;

            foreach (Varukorgen i in (List<Varukorgen>)Session["varukorg"])
            {
                totalPris += i.Pris;
            }
            
            totPrisLBL.Text = "Totalpris: " + totalPris + " :-";
        }

        protected void BetalaBTN_Click(object sender, EventArgs e)
        {
            data.kopSagor(Session["username"].ToString(), (List<Varukorgen>)Session["varukorg"]);

            Response.Redirect("Betala2");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void avbrytbtn_Click(object sender, EventArgs e)
        {
            Session["varukorg"] = new List<Varukorgen>();
            Response.Redirect("SagorNY");
        }

        protected void BetalningsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}