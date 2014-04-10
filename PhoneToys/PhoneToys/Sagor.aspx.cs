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
    public partial class Sagor : System.Web.UI.Page
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

            if (!Page.IsPostBack)
            {
                List<Saga> Sagor = data.getSaga();

                SagoView.DataSource = Sagor;
                SagoView.DataBind();
            }
            SagoView.ItemCommand += new EventHandler<ListViewCommandEventArgs>(this.SagoView_ItemCommand);
        }

        protected void SagoView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            List<Varukorgen> varor = (List<Varukorgen>)Session["varukorg"];
            int index = e.Item.DataItemIndex;

            string sagoNamn = ((Label)SagoView.Items[index].FindControl("text")).Text;

            int pris = Convert.ToInt32(((Label)SagoView.Items[index].FindControl("pris")).Text);

            Varukorgen varan = new Varukorgen();

            varan.Pris = pris;
            varan.Saga = sagoNamn;

            varor.Add(varan);

            Session["varukorg"] = varor;

            Response.Redirect("Sagor");
        }
    }
}