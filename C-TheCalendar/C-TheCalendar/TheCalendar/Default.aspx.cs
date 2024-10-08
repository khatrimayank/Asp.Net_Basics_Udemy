using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheCalendar
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            LblResult.Text = "You selected these dates: <br />";
            foreach (DateTime dt in Calendar1.SelectedDates)
            {
                LblResult.Text += dt.ToLongDateString() + "<br />";
            }
            LblResult.Text += "Time: " + LstTimes.Text;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            //The DayRender event fires each time the calendar creates a table cell for the calendar table.
            //The event has an argument of type DayRenderEventArgs.
            //The argument has two properties, one property to represent the date for the cell, and one to represent the TableCell control.

            //This event can be created by accessing the Events Tab Properties (the lightening bolt) and double clicking on the DayRender Event
            
            //Restrict Dates
            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;//notice as you mouse over weekend dates
                                           //you can't click on them  
            }
            //Check for March 15 in any year and format it
            if (e.Day.Date.Day==15 && e.Day.Date.Month==3)
            {
                e.Cell.BackColor = System.Drawing.Color.Yellow;
                //Add some static text to the cell
                Label Lbl = new Label();            //create a Label control instance
                Lbl.Text = "<br /> My Birthday!";   //Update the Text property
                e.Cell.Controls.Add(Lbl);           //Add the control to the webpage
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //This lets you schedule a meeting in two steps
            //First you choose the appropriate day. 
            //Then you choose one of the available times on that day

            LstTimes.Items.Clear();

            switch (Calendar1.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Monday:
                    //Apply special Monday Schedule
                    LstTimes.Items.Add("10:00");
                    LstTimes.Items.Add("10:30");
                    LstTimes.Items.Add("11:00");
                    break;
                default:
                    LstTimes.Items.Add("10:00");
                    LstTimes.Items.Add("10:30");
                    LstTimes.Items.Add("11:00");
                    LstTimes.Items.Add("11:30");
                    LstTimes.Items.Add("12:00");
                    LstTimes.Items.Add("12:30");
                    break;

            }
        }
    }
}