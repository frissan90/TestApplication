using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

namespace PhoneToys
{
    public partial class Spelasaga2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void spelaBTN_Click(object sender, EventArgs e)
        {
            string klient = "https://api.spark.io/v1/devices/48ff6c065067555035261587/Koppla?access_token=0db5f14f8deff81a1ac03b43508f15e7e8637af7";

            var restClient = new RestClient(klient);

            var request = new RestRequest(Method.POST);

            //var response = new RestResponse();

            //string test = response.Content;

            request.RequestFormat = DataFormat.Json;
            
            IRestResponse result = restClient.Execute(request);
        }
    }
}