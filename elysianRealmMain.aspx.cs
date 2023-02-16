using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DURANDAL_IO
{
    public partial class elysianRealmMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showD1_Click(object sender, EventArgs e)
        {
            deliveranceCoreOne.Visible = false;
            deliveranceCoreTwo.Visible = false;
            deliveranceCommon.Visible = true;

        }

        protected void hideD1_Click(object sender, EventArgs e)
        {
            deliveranceCommon.Visible = false;
        }

        protected void hideD2_Click(object sender, EventArgs e)
        {
            deliveranceCoreOne.Visible = false;
        }

        protected void hideD3_Click(object sender, EventArgs e)
        {
            deliveranceCoreTwo.Visible = false;
        }

        protected void showD3_Click(object sender, EventArgs e)
        {
            deliveranceCoreTwo.Visible = true;
            deliveranceCoreOne.Visible = false;
            deliveranceCommon.Visible = false;
        }

        protected void showD2_Click(object sender, EventArgs e)
        {
            deliveranceCoreTwo.Visible = false;
            deliveranceCoreOne.Visible = true;
            deliveranceCommon.Visible = false;
        }

        protected void showHideKevin_Click(object sender, EventArgs e)
        {
            Kevin.Visible = !Kevin.Visible;
        }

        protected void showG1_Click(object sender, EventArgs e)
        {
            goldCoreOne.Visible = false;
            goldCoreTwo.Visible = false;
            goldCommon.Visible = true;
        }

        protected void showG3_Click(object sender, EventArgs e)
        {
            goldCoreTwo.Visible = true;
            goldCoreOne.Visible = false;
            goldCommon.Visible = false;
        }

        protected void showG2_Click(object sender, EventArgs e)
        {
            goldCoreTwo.Visible = false;
            goldCoreOne.Visible = true;
            goldCommon.Visible = false;
        }

        protected void showHideEden_Click(object sender, EventArgs e)
        {
            Eden.Visible = !Eden.Visible;
        }

        protected void hideG1_Click(object sender, EventArgs e)
        {
            goldCommon.Visible = false;
        }

        protected void hideG2_Click(object sender, EventArgs e)
        {
            goldCoreOne.Visible = false;
        }

        protected void hideG3_Click(object sender, EventArgs e)
        {
            goldCoreTwo.Visible = false;
        }

        protected void showB1_Click(object sender, EventArgs e)
        {
            bohdiCoreOne.Visible = false;
            bohdiCoreTwo.Visible = false;
            bohdiCommon.Visible = true;
        }

        protected void showB3_Click(object sender, EventArgs e)
        {
            bohdiCoreTwo.Visible = true;
            bohdiCoreOne.Visible = false;
            bohdiCommon.Visible = false;
        }

        protected void showB2_Click(object sender, EventArgs e)
        {
            bohdiCoreTwo.Visible = false;
            bohdiCoreOne.Visible = true;
            bohdiCommon.Visible = false;
        }

        protected void showHideSu_Click(object sender, EventArgs e)
        {
            Su.Visible = !Su.Visible;
        }

        protected void hideB1_Click(object sender, EventArgs e)
        {
            bohdiCommon.Visible = false;
        }

        protected void hideB2_Click(object sender, EventArgs e)
        {
            bohdiCoreOne.Visible = false;
        }

        protected void hideB3_Click(object sender, EventArgs e)
        {
            bohdiCoreTwo.Visible = false;
        }

        protected void showHideAponia_Click(object sender, EventArgs e)
        {
            Aponia.Visible = !Aponia.Visible;
        }
        protected void showA1_Click(object sender, EventArgs e)
        {
            disciplineCoreOne.Visible = false;
            disciplineCoreTwo.Visible = false;
            disciplineCommon.Visible = true;
        }
        protected void showA2_Click(object sender, EventArgs e)
        {
            disciplineCoreTwo.Visible = false;
            disciplineCoreOne.Visible = true;
            disciplineCommon.Visible = false;
        }

        protected void showA3_Click(object sender, EventArgs e)
        {
            disciplineCoreTwo.Visible = true;
            disciplineCoreOne.Visible = false;
            disciplineCommon.Visible = false;
        }
        protected void hideA1_Click(object sender, EventArgs e)
        {
            disciplineCommon.Visible = false;
        }

        protected void hideA2_Click(object sender, EventArgs e)
        {
            disciplineCoreOne.Visible = false;
        }

        protected void hideA3_Click(object sender, EventArgs e)
        {
            disciplineCoreTwo.Visible = false;
        }
        protected void showHideHua_Click(object sender, EventArgs e)
        {
            Hua.Visible = !Hua.Visible;
        }
        protected void showV1_Click(object sender, EventArgs e)
        {
            vicissitudeCoreOne.Visible = false;
            vicissitudeCoreTwo.Visible = false;
            vicissitudeCommon.Visible = true;
        }
        protected void showV2_Click(object sender, EventArgs e)
        {
            vicissitudeCoreTwo.Visible = false;
            vicissitudeCoreOne.Visible = true;
            vicissitudeCommon.Visible = false;
        }

        protected void showV3_Click(object sender, EventArgs e)
        {
            vicissitudeCoreTwo.Visible = true;
            vicissitudeCoreOne.Visible = false;
            vicissitudeCommon.Visible = false;
        }
        protected void hideV1_Click(object sender, EventArgs e)
        {
            vicissitudeCommon.Visible = false;
        }

        protected void hideV2_Click(object sender, EventArgs e)
        {
            vicissitudeCoreOne.Visible = false;
        }

        protected void hideV3_Click(object sender, EventArgs e)
        {
            vicissitudeCoreTwo.Visible = false;
        }

        protected void showPostComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("forum.aspx");
        }
    }
}