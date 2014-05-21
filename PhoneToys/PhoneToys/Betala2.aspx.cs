using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using DataAccessLayer;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Drawing;

namespace PhoneToys
{
    public partial class Betala2 : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["varukorg"] == null)
            {
                List<Varukorgen> Varukorgen = new List<Varukorgen>();
            }
            
            DropdownList1.Items.Add("VISA");
            DropdownList1.Items.Add("Mastercard");
            


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

                Session["varukorg"] = new List<Varukorgen>();

                Response.Redirect("TackForDittKop");
            
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
            if (e.CommandName == "Remove")
            {
                string sagan = ((LinkButton)e.Item.FindControl("LinkButton1")).Text;

                List<Varukorgen> varor = (List<Varukorgen>)Session["varukorg"];

                for (int i = 0; i < varor.Count; i++)
                {
                    if (varor[i].Saga == sagan)
                    {
                        varor.RemoveAt(i);
                    }
                }
                Session["varukorg"] = varor;
            }

            double totalPris = 0;

            foreach (Varukorgen i in (List<Varukorgen>)Session["varukorg"])
            {
                totalPris += i.Pris;
            }

            totPrisLBL.Text = "Totalpris: " + totalPris + " :-";

            BetalningsRepeater.DataSource = Session["varukorg"];
            BetalningsRepeater.DataBind();
        }

        protected void godkännbtn_Click(object sender, EventArgs e)
        {

        }
    }
}