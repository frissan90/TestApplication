using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NAudio.FileFormats.Mp3;
using NAudio.Utils;
using System.IO;
using NAudio.Wave;
using DataAccessLayer;
using Entities;
namespace PhoneToys
{
    public partial class LaddaUpp : System.Web.UI.Page
    {
        private Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void uploadBTN_Click(object sender, EventArgs e)
        {
            Saga sagan = new Saga();

            Mp3FileReader reader = new Mp3FileReader(minUpload.PostedFile.InputStream);
            TimeSpan span = reader.TotalTime;

            sagan.Langd = span.Minutes.ToString() + ":" + span.Seconds.ToString();
            sagan.Namn = Path.GetFileName(minUpload.PostedFile.FileName).Split('.').ElementAt(0);
            sagan.Beskrivning = BeskrivningTB.Text;
            sagan.Pris = Convert.ToInt32(PrisTB.Text);
            sagan.Redaktor = "Editor001";

            BinaryReader sagaReader = new BinaryReader(minUpload.PostedFile.InputStream);

            sagan.Data = sagaReader.ReadBytes((int)minUpload.PostedFile.InputStream.Length);

            BinaryReader bildReader = new BinaryReader(bildUpload.PostedFile.InputStream);

            sagan.bild = bildReader.ReadBytes((int)bildUpload.PostedFile.InputStream.Length);

            data.addSaga(sagan);
        }
    
    }
}