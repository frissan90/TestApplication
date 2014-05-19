﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using DataAccessLayer;

namespace PhoneToys
{
    public partial class RegistreringNY : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["BAMSE"] == null)
            {
                Response.Redirect("Registerellerlogin");
            }
        }


        protected void Nextbtn_Click(object sender, EventArgs e)
        {
            if (UnameTB.Text == String.Empty)
            {
                UnameError.Visible = true;
                UnameError.CssClass = "error";
                UnameError.Text = "Skriv in något";
            }
            else if (data.checkUser(UnameTB.Text))
            {
                UnameError.Visible = true;
                UnameError.CssClass = "error";
                UnameError.Text = "Användarnamnet finns redan";
            }
            else
            {
                UnameError.Visible = false;
                UnameError.CssClass = "";
            }

            if (PWTB.Text == "")
            {
                PWError.Visible = true;
                PWError.CssClass = "error";
                PWError.Text = "Skriv in något";
            }
            else if (CPWTB.Text == "")
            {
                PWError.Visible = false;
                PWError.CssClass = "";
                CPWError.Visible = true;
                CPWError.CssClass = "error";
                CPWError.Text = "Skriv något";
            }
            else if (!PWTB.Text.Equals(CPWTB.Text))
            {
                CPWError.Visible = true;
                CPWError.CssClass = "error";
                CPWError.Text = "Lösenorden är inte lika";
            }
            else
            {
                User user = new User();

                user.Uname = UnameTB.Text;
                user.Password = PWTB.Text;
                user.Bamse = Request.Cookies["BAMSE"].Value;

                data.Register(user);

                Session["username"] = UnameTB.Text;

                Session["varukorg"] = new List<Varukorgen>();

                HttpCookie kaka = new HttpCookie("PTKAKA", "inloggad");

                kaka.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(kaka);

                HttpCookie kryptCookie = new HttpCookie("Krypteradkaka", UnameTB.Text);

                kryptCookie = Kryptering.encryptUser(kryptCookie);

                kryptCookie.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(kryptCookie);

                data.gratisSagor(UnameTB.Text);

                Response.Redirect("Spela");
            }
        }
    }
}