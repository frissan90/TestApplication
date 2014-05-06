using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Entities;
using System.IO;

namespace PhoneToys
{
    public partial class RedigeraSagor2 : System.Web.UI.Page
    {
        Data data = new Data();

        protected void Page_Load(object sender, EventArgs sagoNamn)
        {
            if (Request.QueryString["Saga"] == null)
            {
                Response.Redirect("RedigeraSagor1");
            }

            Saga sagan = data.geteditSaga(Request.QueryString["Saga"]);
            
            editNamntbx.Text = sagan.Namn;
            editBeskrivningtbx.Text = sagan.Beskrivning;
            editPristbx.Text = sagan.Pris.ToString(); ;
            
        }
        protected void editBtn_Click(object sender, EventArgs saga2)
        {
            Saga saga = new Saga();

            saga.Namn = editNamntbx.Text;
            saga.Beskrivning = editBeskrivningtbx.Text;
            saga.Pris = Convert.ToInt32(editPristbx.Text);


            BinaryReader rdr = new BinaryReader(uploadimg.PostedFile.InputStream);
            saga.bild = rdr.ReadBytes((int)uploadimg.PostedFile.InputStream.Length);

            data.editSaga(Request.QueryString["Saga"], saga);

            //Response.Redirect("");

            
        }
    }
}