using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using DataAccessLayer;
using Entities;

namespace PhoneToys
{
    public partial class Connect : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtn_Click(object sender, ImageClickEventArgs e)
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

            Response.Redirect("RegistreringNY");
        }
    }
}