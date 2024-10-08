using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoreControls
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblStatus.Text = "You chose " + DropDownList1.Text ;
        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            if (RdoMarketing.Checked==true)
            {
                LblOtherStatus.Text = " You chose Marketing ";
            }
            else
            {
                LblOtherStatus.Text = "You chose Accounting";
            }
              
            if (ChkApproval.Checked==true)
            {
                LblOtherStatus.Text += " Approval Required";
            }
            if (ChkApproval.Checked==false)
            {
                LblOtherStatus.Text += "  Approval NOT Required";
            }
        }
    }
}