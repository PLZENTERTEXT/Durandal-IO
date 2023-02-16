using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class HoT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not being posted back to the server (first time the page is being loaded)
            if (!Page.IsPostBack)
            {
                ResultPanel.Visible = false;
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Calculate the score
            int score = 0;
            if (Option2.Checked)
                score++;
            if (Option7.Checked)
                score++;
            if (Option9.Checked)
                score++;
            if (Option16.Checked)
                score++;
            if (Option20.Checked)
                score++;

            ResultPanel.Visible = true;
            result.Text = "Your score is: " + score.ToString() + " / 5";
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            Option1.Checked = false;
            Option2.Checked = false;
            Option3.Checked = false;
            Option4.Checked = false;
            Option5.Checked = false;
            Option6.Checked = false;
            Option7.Checked = false;
            Option8.Checked = false;
            Option9.Checked = false;
            Option10.Checked = false;
            Option11.Checked = false;
            Option12.Checked = false;
            Option13.Checked = false;
            Option14.Checked = false;
            Option15.Checked = false;
            Option16.Checked = false;
            Option17.Checked = false;
            Option18.Checked = false;
            Option19.Checked = false;
            Option20.Checked = false;

            // Clear using:
            // To Unselect First Item
            // RadioButtonList1.Items[0].Selected = false;

            // To unselect all Items
            // RadioButtonList1.ClearSelection();

            // OR Do one by one?
        }
    }
}