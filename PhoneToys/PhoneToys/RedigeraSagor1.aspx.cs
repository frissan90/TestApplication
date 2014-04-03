using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;
using System.Drawing;
using System.ComponentModel;

namespace PhoneToys
{

    public partial class RedigeraSagor1 : System.Web.UI.Page
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

                List<Saga> Sagor = data.getSaga();

                for (int i = 0; i < Sagor.Count; i++)
                {
                    TypeConverter converter = TypeDescriptor.GetConverter(typeof(Bitmap));
                    Bitmap bild = (Bitmap)converter.ConvertFrom(Sagor[i].bild);
                    string imgString = Convert.ToBase64String(Sagor[i].bild);
                    Sagor[i].bilden = String.Format("data:image/Bmp;base64,{0}\"", imgString);
                }

                SagorEditLoad.DataSource = Sagor;
                SagorEditLoad.DataBind();
            }
            SagorEditLoad.ItemCommand += new EventHandler<ListViewCommandEventArgs>(this.SagorEditLoad_ItemCommand);
        }

        protected void SagorEditLoad_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int index = e.Item.DataItemIndex;

            string sagoNamn = ((Label)SagorEditLoad.Items[index].FindControl("text")).Text;

            Response.Redirect("RedigeraSagor2?Saga=" + sagoNamn);
        }
    }
}