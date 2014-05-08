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
using NAudio.Utils;
using NAudio.Wave;
using System.IO;

namespace PhoneToys
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Data data = new Data();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Editor"] == null)
            {
                Response.Redirect("Loginny");
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

                sagoRepeater.DataSource = Sagor;
                sagoRepeater.DataBind();
            }
            sagoRepeater.ItemCommand += new RepeaterCommandEventHandler(this.sagoRepeater_ItemCommand);

            if (Session["Sagonamn"] != null && Session["Sagopris"] != null && Session["SagoBes"] != null)
            {
                SagaNamnTB.Text = Session["Sagonamn"].ToString();
                SagaPrisTB.Text = Session["Sagopris"].ToString();
                SagaBeskrivningTB.Text = Session["SagoBes"].ToString();
                Session["Sagonamn"] = null;
                Session["Sagopris"] = null;
                Session["SagoBes"] = null;
            }
        }

        protected void sagoRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Saga saga = data.geteditSaga(((Label)e.Item.FindControl("Namn")).Text);
                Session["CurrentSaga"] = saga.Namn;
                Session["Sagonamn"] = saga.Namn;
                Session["Sagopris"] = saga.Pris;
                Session["SagoBes"] = saga.Beskrivning;

                Response.Redirect("RedaktorStart#openModal", false);
            }

            if (e.CommandName == "remove")
            {
                string sagan = ((Label)e.Item.FindControl("Namn")).Text;

                data.removeSaga(sagan);

                sagoRepeater.DataSource = data.getSaga();

                
            }
            sagoRepeater.DataBind();
        }

        protected void Spara_Click(object sender, EventArgs e)
        {
            Saga sagan = new Saga();
            sagan.Namn = SagaNamnTB.Text;
            sagan.Pris = Convert.ToInt32(SagaPrisTB.Text);
            sagan.Beskrivning = SagaBeskrivningTB.Text;
            string namn = Session["CurrentSaga"].ToString();
            Session["CurrentSaga"] = null;
            data.editSaga(namn, sagan);

            
            Session["SagaPris"] = null;
            Session["SagaBes"] = null;
            Response.Redirect("RedaktorStart");

        }

        protected void uploadBTN_Click(object sender, EventArgs e)
        {
            Saga sagan = new Saga();

            Mp3FileReader reader = new Mp3FileReader(minUpload.PostedFile.InputStream);
            TimeSpan span = reader.TotalTime;

            sagan.Langd = span.Minutes.ToString() + ":" + span.Seconds.ToString();
            sagan.Namn = Namn.Text;
            sagan.Beskrivning = BeskrivningTB.Text;
            sagan.Pris = Convert.ToInt32(PrisTB.Text);
            sagan.Redaktor = Session["Editor"].ToString();

            BinaryReader sagaReader = new BinaryReader(minUpload.PostedFile.InputStream);

            sagan.Data = sagaReader.ReadBytes((int)minUpload.PostedFile.InputStream.Length);

            BinaryReader bildReader = new BinaryReader(bildUpload.PostedFile.InputStream);

            sagan.bild = bildReader.ReadBytes((int)bildUpload.PostedFile.InputStream.Length);

            data.addSaga(sagan);

            Response.Redirect("RedaktorStart");
        }
    }
}