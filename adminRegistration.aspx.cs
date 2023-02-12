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
    public partial class adminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Inside [] is the name of the database connection
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open(); // Open connection

                // Check if the username already exists with the "check" variable
                string query = "select count(*) from UserTable where username = '" + username.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                // ExecuteScalar() - Executes the query and returns 1st column of the 1st row in the result set returned by the query

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Username has been taken!";
                }
                else
                {
                    // Create record in a table called UserTable
                    string query1 = "insert into UserTable (fname, lname, gender, country, email, username," +
                                    " password, usertype) values (@firstName, @lastName, @gender, @country, " +
                                    "@email, @username, @password, @usertype) ";
                    // Except ID since its a primary key
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    // Set where does the @xxx values come from
                    cmd1.Parameters.AddWithValue("@firstName", fname.Text);
                    cmd1.Parameters.AddWithValue("@lastName", lname.Text);
                    cmd1.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@country", country.Text);
                    cmd1.Parameters.AddWithValue("@email", email.Text);
                    cmd1.Parameters.AddWithValue("@username", username.Text);
                    cmd1.Parameters.AddWithValue("@password", pwd.Text);
                    cmd1.Parameters.AddWithValue("@usertype", usertype.Text);

                    // Execute
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                con.Close(); // Close connection
            }
            catch (Exception ex) // If it fails, show error
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Regstration not successful! " + ex.ToString();
            }
        }
    }
}