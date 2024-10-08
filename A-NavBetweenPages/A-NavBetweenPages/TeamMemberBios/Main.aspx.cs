using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamMemberBios
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Team.aspx");
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            string QueryString = "";
            QueryString = "?ID=" + TxtUserName.Text;

            //The question mark shows where the query string starts
            //ID is the name of the variable being passed
            //It is set to the Text property of the text box

            //The line below actually transfers the information to the 
            //Team page.

            Response.Redirect("Team.aspx" + QueryString);
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string QueryString = "";

            //This is how you use a Session Variable
            //These are variables not passed via Response.Redirect
            //They are private variables and will not show in the browser
            Session["pw"] = TxtPassword.Text;

            QueryString = "?ID=" + TxtLoginName.Text;
            Response.Redirect("Team.aspx" + QueryString);
        }
    }
}