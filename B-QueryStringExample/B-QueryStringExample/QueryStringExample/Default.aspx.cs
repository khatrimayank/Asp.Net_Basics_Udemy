using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net; //added so you can work with cookies

namespace QueryStringExample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DropDownChoices.Items.Add("Sofa");
                DropDownChoices.Items.Add("Drapes");
                DropDownChoices.Items.Add("Carpet");
                DropDownChoices.Items.Add("Lamp");
                DropDownChoices.Items.Add("Jacuzzi");
            }

            
        }

        protected void BtnView_Click(object sender, EventArgs e)
        {
            if (DropDownChoices.SelectedIndex==-1)
            {
                LblError.Text = "You must select an item";
            }
            else
            {
                string url = "QueryStringRecipient.aspx?";
                url += "Item=" + DropDownChoices.SelectedItem.Text + "&";
                url += "Mode=" + ChkDetails.Checked.ToString();
                Response.Redirect(url);
            }
        }

        
    }
}