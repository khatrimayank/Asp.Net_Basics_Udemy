using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conditionals
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnResult_Click(object sender, EventArgs e)
        {
            if (RdoPizza.Checked==true)
            {
                LblResult.Text = "You chose Pizza";
                ImgFood.ImageUrl = "images/pizza.png";
            }
            else if (RdoSalad.Checked==true)
            {
                LblResult.Text = "You chose Salad";
                ImgFood.ImageUrl = "images/salad.gif";
            }
            else if (RdoPeanutButter.Checked==true)
            {
                LblResult.Text = "You chose Peanut Butter";
                ImgFood.ImageUrl = "images/peanutbutter.png";
            }
        }
    }
}