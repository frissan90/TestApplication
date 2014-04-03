﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;

namespace PhoneToys
{
    public partial class Varor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                VarukorgRepeater.DataSource = Session["varukorg"];
                VarukorgRepeater.DataBind();
            }

            double totalPris = 0;

            List<Varukorgen> varor = (List<Varukorgen>)Session["varukorg"];

            for (int i = 0; i < varor.Count; i++)
            {
                totalPris += varor[i].Pris;
            }

            //totalPrisLB.Text = totalPris.ToString();

            VarukorgRepeater.ItemCommand += new RepeaterCommandEventHandler(this.VarukorgRepeater_ItemCommand);
        }

        protected void VarukorgRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int index = e.Item.ItemIndex;

                List<Varukorgen> v = (List<Varukorgen>)Session["varukorg"];
                v.RemoveAt(index);

                Session["varukorg"] = v;

                Response.Redirect("Varor");
            }
        }
    }
}