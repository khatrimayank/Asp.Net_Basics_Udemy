using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamMemberBios
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //When the page is first requested the Welcome text is displayed
            //On subsequent postbacks, the Team Roster  text is displayed 
            //Note also the use of Request.QueryString
            //This is how this page receives data that is passed to it in the 
            //query string.This statement gets the value of the variable name
            //from the query string attached to the request URL

            if (!Page.IsPostBack)
            {
                //REMOVE THE COMMENTS BELOW WHEN EXECUTING THE LOGIN PASSWORD SCREEN
                //THIS IS A DEMONSTRATION OF SESSION VARIABLES (PRIVATE VARIABLES NOT PASSED BY THE QUERY STRING)

                //if (Session["pw"].ToString()=="cc")
                //{
                    LblWelcome.Text = "WELCOME " + Request.QueryString["ID"];
                    //LblName.Text = "Oh by the way your password is " + Session["pw"].ToString();
                //}
                //else
                //{
                //    Response.Redirect("Main.aspx");
                //}
                
            }
            else
            {
                LblWelcome.Text = "TEAM ROSTER";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                ImgPlayers.ImageUrl= "/images/jonas.png";
                LblName.Text = "Jonas Valanciunas";
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                ImgPlayers.ImageUrl = "/images/og.png";
                LblName.Text = "OG Anunoby";
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                ImgPlayers.ImageUrl = "/images/kyle.png";
                LblName.Text = "Kyle Lowry";
            }
            else if (DropDownList1.SelectedIndex==4)
            {
                ImgPlayers.ImageUrl = "/images/serge.png";
                LblName.Text = "Serge Ibaka";
            }
        }
    }
}