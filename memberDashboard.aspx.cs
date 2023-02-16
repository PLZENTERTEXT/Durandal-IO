using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class memberDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // "firstName" in Session["firstName"] -> Session variable
            if (Session["firstName"] != null)
            {
                // Greeting message
                uname.Text = "Hi, " + Session["firstName"].ToString();
            }
            else // Go back to the login page
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void SignOut_Command(object sender, EventArgs e)
        {
            Session.Abandon();  // Close the current session
            Request.Cookies.Clear();
            Response.Redirect("login.aspx");
        }
    }
}