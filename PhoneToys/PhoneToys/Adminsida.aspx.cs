using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;

namespace PhoneToys
{
    public partial class Adminsida : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Loginny");
            }
            if (!Page.IsPostBack)
            {
                RedaktorRepeater.DataSource = data.getEditors();
                RedaktorRepeater.DataBind();
            }
            RedaktorRepeater.ItemCommand += new RepeaterCommandEventHandler(this.RedaktorRepeater_ItemCommand);
        }

        protected void registerEditorBTN_Click(object sender, EventArgs e)
        {

            Editor editor = new Editor();
            editor.Uname = UnameATB.Text;
            editor.Email = EmailATB.Text;
            editor.Password = PWTBA.Text;
            editor.Fname = FnameATB.Text;
            editor.Lname = LnameATB.Text;

            data.Register(editor);
        }

        protected void RedaktorRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                string redaktor = ((LinkButton)e.Item.FindControl("LinkButton1")).Text;

                Editor editor = new Editor();

                editor.Uname = UnameATB.Text;
                editor.Fname = FnameATB.Text;
                editor.Lname = LnameATB.Text;
                editor.Email = EmailATB.Text;

                data.editEditor(redaktor, editor);

                RedaktorRepeater.DataSource = data.getEditors();
                RedaktorRepeater.DataBind();
            }

            if (e.CommandName == "remove")
            {
                string redaktor = ((LinkButton)e.Item.FindControl("LinkButton1")).Text;

                data.removeEditor(redaktor);

                RedaktorRepeater.DataSource = data.getEditors();
            }
            RedaktorRepeater.DataBind();
        }

        protected void Spara_Click(object sender, EventArgs e)
        {
            string edit = UnameTB.Text;
            Editor editor = new Editor();
            editor.Uname = UnameTB.Text;
            editor.Email = EmailTB.Text;
            editor.Fname = FnameTB.Text;
            editor.Lname = LnameTB.Text;

            data.editEditor(edit, editor);
        }
    }
}