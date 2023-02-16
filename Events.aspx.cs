using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void showPostComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("forum.aspx");
        }
    }
}