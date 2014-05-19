using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;
using System.Net;
using System.Net.Mail;

namespace PhoneToys
{
    public partial class LoginNY : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(HttpContext.Current.Request.Cookies["PTKAKA"] == null)
            //{
            //    Response.Redirect("Registerellerlogin");
            //}

            if (HttpContext.Current.Request.Cookies["PTKAKA"] != null && HttpContext.Current.Request.Cookies["PTKAKA"].Value == "inloggad")
            {
                Response.Redirect("Spela");
            }
        }

        protected void LoginBtn_Click(object sender, ImageClickEventArgs e)
        {
            if(data.authenticateUser(userTB.Text, passwordTB.Text))
            {
                Session["username"] = userTB.Text;

                Session["varukorg"] = new List<Varukorgen>();

                HttpCookie PhoneToysCookie = new HttpCookie("PTKAKA", "inloggad");

                PhoneToysCookie.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(PhoneToysCookie);

                HttpCookie user = new HttpCookie("Krypteradkaka", userTB.Text);

                user = Kryptering.encryptUser(user);

                user.Expires = DateTime.Now.AddYears(1);

                Response.Cookies.Add(user);

                Response.Redirect("Spela");
            }

            if(data.authenticateEditor(userTB.Text, passwordTB.Text))
            {
                Session["Editor"] = userTB.Text;
                Response.Redirect("RedaktorStart");
            }

            if (data.authenticateAdmin(userTB.Text, passwordTB.Text))
            {
                Session["Admin"] = userTB.Text;
                Response.Redirect("Adminsida");
            }
        }

        protected void FBTN_Click(object sender, EventArgs e)
        {
            string PW = data.getPwByUname(FAnameTB.Text);
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("noreply@phonetoys.se");
            mail.Subject = "Ditt lösenord";
            mail.To.Add(FEmailTB.Text);
            mail.Body = "Hej " + FAnameTB.Text +  "!<br /> Ditt lösenord är: " + "<b>" + PW + "</b>";
            mail.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("phonetoyspwrecovery@gmail.com", "PhonetoysBamseFinal");
            client.Send(mail);
        }
    }
}