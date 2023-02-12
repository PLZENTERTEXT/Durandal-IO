

using System;
using System.Web.UI.WebControls;
using static DURANDAL_IO.HoF;

namespace DURANDAL_IO
{
    public partial class HoF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not being posted back to the server (first time the page is being loaded)
            if (!Page.IsPostBack)
            {
                ResultPanel.Visible = false;
            }

            // Doesn't work?
            ResultPanel.Visible = false;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Calculate the score
            int score = 0;
            if (Option1.Checked)
                score++;
            if (Option8.Checked)
                score++;
            if (Option10.Checked)
                score++;
            if (Option15.Checked)
                score++;
            if (Option20.Checked)
                score++;

            ResultPanel.Visible = true;
            result.Text = "Your score is: " + score.ToString() + " / 5";
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            // Clear using:
            // To Unselect First Item
            // RadioButtonList1.Items[0].Selected = false;

            // To unselect all Items
            // RadioButtonList1.ClearSelection();

            // OR Do one by one?
        }
    }
}