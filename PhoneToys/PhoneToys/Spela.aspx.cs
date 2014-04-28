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
using RestSharp;

namespace PhoneToys
{
    public partial class Spela : System.Web.UI.Page
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
                List<Saga> Sagor = data.getSagorByUser(Session["username"].ToString());

                for (int i = 0; i < Sagor.Count; i++)
                {
                    TypeConverter converter = TypeDescriptor.GetConverter(typeof(Bitmap));
                    Bitmap bild = (Bitmap)converter.ConvertFrom(Sagor[i].bild);
                    string imgString = Convert.ToBase64String(Sagor[i].bild);
                    Sagor[i].bilden = String.Format("data:image/Bmp;base64,{0}\"", imgString);
                }
                
                MinaSagorRepeater.DataSource = Sagor;
                MinaSagorRepeater.DataBind();
            } 
        }

        protected void MinaSagorRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Spela upp")
            {
                ((ImageButton)e.Item.FindControl("PlayBTN")).CommandName = "Pausa";

                ((ImageButton)e.Item.FindControl("PlayBTN")).ImageUrl = "~/Images/Pause.png";

                string sagonamn = ((LinkButton)e.Item.FindControl("LinkButton1")).Text;

                for (int i = 0; i < MinaSagorRepeater.Items.Count; i++)
                {
                    if (i != e.Item.ItemIndex)
                    {
                        ((ImageButton)MinaSagorRepeater.Items[i].FindControl("PlayBTN")).Enabled = false;
                    }
                }

                //Response.Redirect("Spela2?Saga=" + sagonamn);
            }

            if (e.CommandName == "Pausa")
            {
                ((ImageButton)e.Item.FindControl("PlayBTN")).CommandName = "Spela upp";
                ((ImageButton)e.Item.FindControl("PlayBTN")).ImageUrl = "~/Images/SpelaLiten.png";

                for (int i = 0; i < MinaSagorRepeater.Items.Count; i++)
                {
                        ((ImageButton)MinaSagorRepeater.Items[i].FindControl("PlayBTN")).Enabled = true;
                }
            }
        }

        //protected void spelaBTN_Click(object sender, EventArgs e)
        //{
        //    string klient = "https://api.spark.io/v1/devices/48ff6c065067555035261587/Koppla?access_token=0db5f14f8deff81a1ac03b43508f15e7e8637af7";

        //    var restClient = new RestClient(klient);

        //    var request = new RestRequest(Method.POST);

        //    //var response = new RestResponse();

        //    //string test = response.Content;

        //    request.RequestFormat = DataFormat.Json;

        //    IRestResponse result = restClient.Execute(request);
        //}
    }
}