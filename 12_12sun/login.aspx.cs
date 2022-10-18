using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;
using System.Data.SqlClient;

namespace _12_12sun
{
    public partial class login : System.Web.UI.Page
    {
        DataAccessLayer DataAccessLayer;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer = new DataAccessLayer();

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            int adId = Convert.ToInt32(Application["adId"]);
            string email = eemail.Text;
            string password = pass.Text;
            //var user = DataAccessLayer.SelectData
            //    ($"select * from Users where UserEmail = '{email}' and UserPassword = '{password}'");


            var user = DataAccessLayer.SelectData2
                ($"select * from Users where UserEmail = @email and UserPassword = @password",
                new SqlParameter[]
                {
                    new SqlParameter("email", email),
                    new SqlParameter("password", password),
                });
            // asd' or 1 = 1 or '' = '
            if (user.Rows.Count == 0)
            {
                Response.Write("<script>alert('Information Error')</script>");
                return;
            }
            Session["id"] = user.Rows[0][0];
            Session["UserName"] = user.Rows[0][1];
            Session["deptID"] = user.Rows[0][5];
            var userDept = user.Rows[0][5];
            int userDeptId = Convert.ToInt32(userDept);
            if (userDeptId == adId)
            {
                Response.Redirect("~/Admin_panel.aspx");
                return;
            }
            Response.Redirect("~/Page_Student.aspx");

        }
    }
}