using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class manageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                svfName.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

            // DATA BINDING START
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // First time loading the page
            if (!Page.IsPostBack)
            // IsPostBack - Tells whether or not the page is on its initial load or
            //              if a user has perform a button on your web page that has
            //              caused the page to post back to itself
            {
                // Admin can only manage members, not admin themselves
                SqlDataAdapter da = new SqlDataAdapter("select * from UserTable where usertype = '" + usertype.Text + "'", con);

                // Create a temporary virtual table since its a lot of records to load
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Only display usernames
                uname.DataSource = dt;
                uname.DataTextField = "username";
                DataBind();

                // NOTE: When the page first loads, it loads the items in uname list, but doesn't select it, hence there is NO autocomplete
            }
        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "F";
            li.Value = "F";
            gender.Items.Add(li);
        }

        // DISPLAY RECORD DYNAMICALLY WHEN A USER IS CHOSEN
        protected void uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from UserTable where username = '" + uname.Text + "'", con);

            // Temporary virtual table
            DataTable dt = new DataTable();
            da.Fill(dt);

            // [0][0] is "id" in the database
            // [0][6] is "username" in the database
            fname.Text = dt.Rows[0][1].ToString();
            lname.Text = dt.Rows[0][2].ToString();
            gender.SelectedItem.Text = dt.Rows[0][3].ToString().Trim();
            // Trim() - Needed because it is set as nchar(10) in database, so it would always have 9 trailing spaces
            country.Text = dt.Rows[0][4].ToString();
            email.Text = dt.Rows[0][5].ToString();
            pwd.Text = dt.Rows[0][7].ToString();
        }

        // SAVE UPDATED DETAILS
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "update userTable set fname = '" + fname.Text + "',lname = '" + lname.Text
                            + "',gender = '" + gender.Text + "',country = '" + country.Text
                            + "',email = '" + email.Text + "',password = '" + pwd.Text
                            + "',usertype = '" + usertype.Text + "' where username = '" + uname.Text
                            + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("manageUser.aspx");
        }

        // DELETE QUERY
        protected void RemoveButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "delete from UserTable where username = '" + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("manageUser.aspx");
        }
    }
}