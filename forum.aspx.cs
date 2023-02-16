using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showPostComment_Click(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                postingComment.Visible = !postingComment.Visible;
            }
            else
            {
                promptToLogin.Visible = !promptToLogin.Visible;
            }
        }

        protected void post_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(commentTxt.Text))
            {
                string comment = commentTxt.Text;
                string name = (string)Session["userName"];
                string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                string query = "insert into comment(userName, postContent, date) values (@username, @postContent, @date)";
                SqlCommand cmd1 = new SqlCommand(query, con);
                cmd1.Parameters.AddWithValue("@username", name);
                cmd1.Parameters.AddWithValue("@postContent", comment);
                cmd1.Parameters.AddWithValue("@date", date);

                cmd1.ExecuteNonQuery();

                con.Close();
                Response.Redirect("forum.aspx");
            }
            else
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Please Type In Any Comment Before Submitting";
                return;
            }
        }

        protected void logIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}