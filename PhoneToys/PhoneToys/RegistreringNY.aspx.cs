﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneToys
{
    public partial class RegistreringNY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Nextbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");

        }
    }
}