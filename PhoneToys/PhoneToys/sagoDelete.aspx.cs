using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace PhoneToys
{
    public partial class sagoDelete : System.Web.UI.Page
    {
        private Data data = new Data();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Editor"] == null)
            {
                Response.Redirect("LoginNY");
            }
            if (!Page.IsPostBack)
            {
                sagoGrid.DataSource = data.getSaga();
                sagoGrid.DataBind();
            }
            sagoGrid.ItemCommand += new RepeaterCommandEventHandler(this.sagoGrid_ItemCommand);
        }

        protected void sagoGrid_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int index = e.Item.ItemIndex;

            if (e.CommandName == "remove")
            {
                Label Namn = (Label)e.Item.FindControl("namn") as Label;

                string sagan = Namn.Text;

                data.removeSaga(sagan);

                sagoGrid.DataSource = data.getSaga();

                sagoGrid.DataBind();
            }
        }
    }
}