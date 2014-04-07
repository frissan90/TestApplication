using System;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
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

                sagoRepeater.DataSource = Sagor;
                sagoRepeater.DataBind();
            }
            sagoRepeater.ItemCommand += new RepeaterCommandEventHandler(this.sagoRepeater_ItemCommand);
        }

        protected void sagoRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                string saga = ((Label)e.Item.FindControl("Namn")).Text;

                Response.Redirect("RedigeraSagor2?Saga=" + saga);
            }

            if (e.CommandName == "remove")
            {
                string sagan = ((Label)e.Item.FindControl("Namn")).Text;

                data.removeSaga(sagan);

                sagoRepeater.DataSource = data.getSaga();
            }
            sagoRepeater.DataBind();
        }
    }
}