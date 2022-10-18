using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _12_12sun
{
    public partial class Admin_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int adminId = Convert.ToInt32(Application["adId"]);
            int? sessionId = Convert.ToInt32(Session["ID"]);
            if (sessionId == null || sessionId == 0 || adminId != sessionId)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("add_std.aspx");

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("subjects.aspx");

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("update depts.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Postes.aspx");

        }

        protected void Bu_Click(object sender, EventArgs e)
        {
            int? sessionId = Convert.ToInt32(Session["ID"]);
            sessionId = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}