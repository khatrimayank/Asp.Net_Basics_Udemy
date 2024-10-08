using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calendar
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGet_Click(object sender, EventArgs e)
        {
            //LblResult.Text = CalMy.SelectedDate.ToShortDateString();
            LblResult.Text = CalMy.SelectedDate.ToLongDateString();
        }

        protected void BtnSet_Click(object sender, EventArgs e)
        {
            CalMy.SelectedDate = DateTime.Parse("6/4/2018");
            CalMy.VisibleDate = CalMy.SelectedDate;
        }

               

        protected void CalMy_SelectionChanged(object sender, EventArgs e)
        {
            LblCalendar.Text = CalMy.SelectedDate.ToShortDateString();
        }
    }
}