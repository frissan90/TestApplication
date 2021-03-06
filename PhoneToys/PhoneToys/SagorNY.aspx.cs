﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;
using System.ComponentModel;
using System.Drawing;

namespace PhoneToys
{
    public partial class SagorNY : System.Web.UI.Page
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

            if (Session["varukorg"] == null)
            {
                Session["varukorg"] = new List<Varukorgen>();
            }

            Session["username"] = Kryptering.decryptUser(HttpContext.Current.Request.Cookies["KrypteradKaka"]);

            if (!Page.IsPostBack)
            {
                
                List<Saga> Sagor = data.getSaga();

                for (int i = 0; i < Sagor.Count; i++)
                {
                    TypeConverter converter = TypeDescriptor.GetConverter(typeof(Bitmap));
                    Bitmap bild = (Bitmap)converter.ConvertFrom(Sagor[i].bild);
                    string imgString = Convert.ToBase64String(Sagor[i].bild);
                    Sagor[i].bilden = String.Format("data:image/Bmp;base64,{0}\"", imgString);
                }

                SagorLoad.DataSource = Sagor;
                SagorLoad.DataBind();
                
                // Gör knappen Disabled efter man köp
                for (int i = 0; i < Sagor.Count; i++)
                {
                    for (int sagoobjekt = 0; sagoobjekt < ((List<Varukorgen>)Session["varukorg"]).Count; sagoobjekt++)
                    {
                        if(Sagor[i].Namn == ((List<Varukorgen>)Session["varukorg"])[sagoobjekt].Saga)
                        {
                            ((Button)SagorLoad.Items[i].FindControl("Button1")).Enabled = false;
                            ((Button)SagorLoad.Items[i].FindControl("Button1")).Text = "Lagd i Varukorgen";
                            ((Button)SagorLoad.Items[i].FindControl("Button1")).BackColor = Color.Tomato;
                        }
                    }
                }

                List<string> UserSagor = data.getSagaNamnByUser(Session["username"].ToString());

                for (int i = 0; i < UserSagor.Count; i++)
                {
                    for (int saga = 0; saga < Sagor.Count; saga++)
                    {
                        if (UserSagor[i] == Sagor[saga].Namn)
                        {
                            ((Button)SagorLoad.Items[saga].FindControl("Button1")).Enabled = false;
                            ((Button)SagorLoad.Items[saga].FindControl("Button1")).Text = "Redan köpt";
                            ((Button)SagorLoad.Items[saga].FindControl("Button1")).BackColor = Color.Tomato;
                        }
                    }
                }
                
            }
 
            //SagorLoad.ItemCommand += new EventHandler<ListViewCommandEventArgs>(this.SagorLoad_ItemCommand);
            
        }

        protected void SagorLoad_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            List<Varukorgen> varor = (List<Varukorgen>)Session["varukorg"];
            int index = e.Item.DataItemIndex;
            
            string sagoNamn = ((Label)SagorLoad.Items[index].FindControl("text")).Text;

            int pris = Convert.ToInt32((((Label)SagorLoad.Items[index].FindControl("pris")).Text).Split(' ').ElementAt(0));

            Varukorgen varan = new Varukorgen();

            varan.Pris = pris;
            varan.Saga = sagoNamn;

            varor.Add(varan);

            Session["varukorg"] = varor;

            ((Button)SagorLoad.Items[index].FindControl("Button1")).Enabled = false;
            ((Button)SagorLoad.Items[index].FindControl("Button1")).Text = "Lagd i varukorg";
            ((Button)SagorLoad.Items[index].FindControl("Button1")).BackColor = Color.Tomato;

        }

        protected void BetalaBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Betala2");
        }
    }
}