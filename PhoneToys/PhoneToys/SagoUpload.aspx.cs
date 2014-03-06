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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            sagoGrid.DataSource = data.getSaga();
            sagoGrid.DataBind();
        }

        protected void UploadBTN_Click(object sender, EventArgs e)
        {
            Saga sagan = new Saga();

            sagan.Namn = Path.GetFileName(minUpload.PostedFile.FileName);
            sagan.Beskrivning = besTB.Text;
            sagan.Langd = LangdTB.Text;
            sagan.Pris = int.Parse(PrisTB.Text);

            BinaryReader sagaReader = new BinaryReader(minUpload.PostedFile.InputStream);

            sagan.Data = sagaReader.ReadBytes((int)minUpload.PostedFile.InputStream.Length);

            data.addSaga(sagan);
        }

        protected void sagoGrid_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}