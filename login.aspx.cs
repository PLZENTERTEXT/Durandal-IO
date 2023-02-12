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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Check if a record exists with the same Username and Password
            string query = "select count(*) from UserTable where Username = '" + username.Text + "' and Password = '" + pwd.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            // If the record exists
            if (count > 0)
            {
                // Capture session login
                SqlCommand cmdType = new SqlCommand("select fname, usertype from UserTable where Username = '" + username.Text + "'", con);
                SqlDataReader dr = cmdType.ExecuteReader();
                // SqlDataReader - Provides a way of reading a forward-only stream of rows from a SQL Server database

                string type = "";
                string name = "";

                while (dr.Read())
                {
                    type = dr["usertype"].ToString().Trim();
                    name = dr["fname"].ToString().Trim();
                    // Trim() - Removes leading & trailing whitespace
                }

                Session["firstName"] = name;
                Session["userName"] = username.Text;

                // Session redirect
                if (type == "admin")
                    Response.Redirect("adminDashboard.aspx");
                else if (type == "member")
                    Response.Redirect("memberDashboard.aspx");
            }
            else // If the Username and Password doesn't match
            {
                errorMsg.Visible = true;
                errorMsg.ForeColor = System.Drawing.Color.Red;
                errorMsg.Text = "Username and Password mismatch!";
                return;
            }

            con.Close();
        }
    }
}