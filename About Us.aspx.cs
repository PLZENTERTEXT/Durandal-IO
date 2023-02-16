using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DURANDAL_IO
{
    public partial class About_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the latest feedback from the database
                string latestFeedback = GetLatestFeedback();
                TextBox1.Text = latestFeedback;
            }
        }

        private string GetLatestFeedback()
        {
            string feedback = string.Empty;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
            {
                con.Open();
                SqlCommand command = new SqlCommand("SELECT TOP 1 Feedback FROM Feedback ORDER BY Date DESC", con);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    feedback = reader.GetString(0);
                }
            }
            return feedback;
        }

        protected void Search_feedback_button_Click(object sender, EventArgs e)
        {
            FeedbackTextBox1.Style["display"] = "none";
            FeedBackTextBox2.Style["display"] = "flex";

        }

        protected void register_button_Click(object sender, EventArgs e)
        {
            // Show the register div
            FeedbackTextBox1.Style["display"] = "none";
            FeedbackTextBox3.Style["display"] = "flex";
        }
        protected void cancel_button_Click1(object sender, EventArgs e)
        {
            // Show the register div
            FeedbackTextBox1.Style["display"] = "flex";
            FeedBackTextBox2.Style["display"] = "none";
        }

        protected void cancel_button_Click2(object sender, EventArgs e)
        {
            // Show the register div
            FeedbackTextBox1.Style["display"] = "flex";
            FeedbackTextBox3.Style["display"] = "none";
        }

        protected void InsertFeedback1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
            {
                if (!AuthenticateUser(1, 3))
                {
                    con.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO Feedback (Email, password, Feedback, Date) VALUES (@Email,@Password, @Feedback, @Date)", con);
                    command.Parameters.AddWithValue("@Email", EmailTextBox2.Text);
                    command.Parameters.AddWithValue("@Password", PasswordTextBox2.Text);
                    command.Parameters.AddWithValue("@Feedback", Feedback.Text);
                    command.Parameters.AddWithValue("@Date", DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
                    command.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("About Us.aspx");
                }
                else
                {
                    TextBox1.Text = "Invalid user ID";
                    FeedbackTextBox3.Style["display"] = "none";
                    FeedbackTextBox1.Style["display"] = "flex";
                }
            }
        }

        private bool AuthenticateUser(int section, int page)
        {
            bool isAuthenticated = false;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
            {
                con.Open();
                if (section == 1)
                {
                    SqlCommand command = new SqlCommand("SELECT * FROM Feedback WHERE Email=@Email ", con);
                    if (page == 2)
                    {
                        command.Parameters.AddWithValue("@Email", EmailTextBox1.Text);
                    }
                    else if (page == 3)
                    {
                        command.Parameters.AddWithValue("@Email", EmailTextBox2.Text);
                    }

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        isAuthenticated = true;
                    }
                    con.Close();
                }
                else if (section == 2)
                {
                    SqlCommand command = new SqlCommand("SELECT * FROM Feedback WHERE password=@password ", con);
                    if (page == 2)
                    {
                        command.Parameters.AddWithValue("@password", PasswordTextBox1.Text);
                    }
                    else if (page == 3)
                    {
                        command.Parameters.AddWithValue("@password", PasswordTextBox2.Text);
                    }
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        isAuthenticated = true;
                    }
                    con.Close();
                }

            }
            return isAuthenticated;
        }



        private string GetFeedbackForUser()
        {
            string feedback = string.Empty;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
            {
                con.Open();
                SqlCommand command = new SqlCommand("SELECT Feedback FROM Feedback WHERE Email=@Email ORDER BY Date DESC", con);
                command.Parameters.AddWithValue("@Email", EmailTextBox1.Text);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    feedback = reader.GetString(0);
                }
                con.Close();
            }
            return feedback;
        }

        protected void search_button_Click(object sender, EventArgs e)
        {
            // Check if the user ID and password are correct
            bool isAuthenticatedId = AuthenticateUser(1, 2);
            bool isAuthenticatedPassword = AuthenticateUser(2, 2);
            if (isAuthenticatedId)
            {
                if (isAuthenticatedPassword)
                {
                    // Retrieve the feedback for the user from the database
                    string feedback = GetFeedbackForUser();
                    TextBox1.Text = feedback;

                    // Hide the search feedback div and show the feedback div
                    FeedBackTextBox2.Style["display"] = "none";
                    FeedbackTextBox1.Style["display"] = "flex";
                }
            }
            if (!isAuthenticatedId || !isAuthenticatedPassword)
            {
                // Display an error message
                TextBox1.Text = "Invalid user ID or password";
                FeedBackTextBox2.Style["display"] = "none";
                FeedbackTextBox1.Style["display"] = "flex";
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            bool valid = false;
            if (AuthenticateUser(1, 2))
            {
                if (AuthenticateUser(2, 2))
                {
                    valid = true;
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand command = new SqlCommand("DELETE FROM Feedback WHERE Email = @Email", con);
                        command.Parameters.AddWithValue("@Email", EmailTextBox1.Text);
                        command.ExecuteNonQuery();
                        con.Close();

                    }
                    TextBox1.Text = "Sucessfully Deleted";
                    FeedBackTextBox2.Style["display"] = "none";
                    FeedbackTextBox1.Style["display"] = "flex";
                }
            }
            if (!valid)
            {
                TextBox1.Text = "Invalid Username or Password";
                FeedBackTextBox2.Style["display"] = "none";
                FeedbackTextBox1.Style["display"] = "flex";
            }
            else
            {
                Response.Redirect("About Us.aspx.");
            }
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            bool valid = false;
            if (AuthenticateUser(1, 2))
            {
                if (AuthenticateUser(2, 2))
                {
                    valid = true;
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Feedback"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand command = new SqlCommand("UPDATE Feedback SET Feedback = @Feedback, Date=@Date WHERE Email = @Email", con);
                        command.Parameters.AddWithValue("@Email", EmailTextBox1.Text);
                        command.Parameters.AddWithValue("@Feedback", NewFeedback.Text);
                        command.Parameters.AddWithValue("@Date", DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
                        command.ExecuteNonQuery();
                        con.Close();

                    }
                }
            }
            if (!valid)
            {
                TextBox1.Text = "Invalid Username or Password";
                FeedBackTextBox2.Style["display"] = "none";
                FeedbackTextBox1.Style["display"] = "flex";
            }
            else
            {
                Response.Redirect("About Us.aspx");
            }
        }


    }
}

