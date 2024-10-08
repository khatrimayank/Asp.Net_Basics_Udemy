using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringExample
{
    public partial class QueryStringRecipient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblinfo.Text = "Item: " + Request.QueryString["Item"];
            Lblinfo.Text += "<br />  Show Full Record: ";
            Lblinfo.Text += Request.QueryString["Mode"]; 
        }
    }
}