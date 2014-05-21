using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using DataAccessLayer;
using Entities;
using System.Drawing;

namespace PhoneToys
{
    public partial class Connect : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["PTKAKA"] != null && HttpContext.Current.Request.Cookies["PTKAKA"].Value == "utloggad")
            {
                Response.Redirect("Loginny");
            }
        }

        protected void imgBtn_Click(object sender, ImageClickEventArgs e)
        {
            if (!data.checkBamse(TextBox1.Text))
            {
                BIDError.Visible = true;
                BIDError.CssClass = "error";
                BIDError.Text = "Denna Bamse finns inte";
                TextBox1.BorderColor = Color.Red;
                TextBox1.BorderWidth = 1;
            }
            else
            {
                Bamse bamse = data.getBamseInfo(TextBox1.Text);

                //string klient = "https://api.spark.io/v1/devices/48ff6c065067555035261587/Light?access_token=0db5f14f8deff81a1ac03b43508f15e7e8637af7";

                string klient = "https://api.spark.io/v1/devices/" + bamse.DeviceID + "/Koppla?access_token=" + bamse.Token;

                var restClient = new RestClient(klient);

                var request = new RestRequest(Method.POST);

                //var response = new RestResponse();

                //string test = response.Content;

                request.RequestFormat = DataFormat.Json;

                IRestResponse result = restClient.Execute(request);

                System.Web.HttpCookie BamseID = new System.Web.HttpCookie("BAMSE", TextBox1.Text);

                //BamseID.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(BamseID);

                Response.Redirect("RegistreringNY");
            }
        }
    }
}