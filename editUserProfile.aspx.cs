using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class editUserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstName"] != null)
            {
                uname.Text = "Hi, " + Session["firstName"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from UserTable where username = '" + Session["userName"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                fname.Text = dt.Rows[0][1].ToString();
                lname.Text = dt.Rows[0][2].ToString();
                gender.SelectedItem.Text = dt.Rows[0][3].ToString().Trim();
                country.Text = dt.Rows[0][4].ToString();
                email.Text = dt.Rows[0][5].ToString();
                pwd.Text = dt.Rows[0][7].ToString();
                Image1.ImageUrl = dt.Rows[0][9].ToString();
                img.Text = dt.Rows[0][9].ToString();
            }
        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "F";
            li.Value = "F";
            gender.Items.Add(li);
        }

        // UPDATE RECORD
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // For file upload
            string folderPath = Server.MapPath("./ProfilePic/");

            // Check whether Directory (Folder) exists
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exists, create it
                Directory.CreateDirectory(folderPath);
            }

            string fileName = img.Text;

            if (fileName == "") // First time upload profile picture
            {
                // Save the file to the directory
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                // Display the picture in image control
                Image1.ImageUrl = "./ProfilePic/" + Path.GetFileName(FileUpload1.FileName);
            }
            else if (fileName != null) // Profile picture already uploaded, do not plan to upload any file
            {
                Image1.ImageUrl = img.Text;
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            // Update table
            string query = "update UserTable set fname = '" + fname.Text + "',lname = '" + lname.Text
                            + "',gender = '" + gender.Text + "',country = '" + country.Text
                            + "',email = '" + email.Text + "',password = '" + pwd.Text
                            + "',usertype = '" + usertype.Text + "',photo = '" + Image1.ImageUrl
                            + "' where username = '" + Session["userName"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("editUserProfile.aspx");
        }

        protected void SignOutButton_Command(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("login.aspx");
        }
    }
}