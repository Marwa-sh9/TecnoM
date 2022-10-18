using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using _12_12sun.Dal;


namespace _12_12sun
{
    public partial class view : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    string conn = "Data Source=DESKTOP-56BJG2B;Initial Catalog=Tecno;Integrated Security=True";
            //    SqlConnection sqlconnection = new SqlConnection(conn);
            //    SqlCommand sqlcommand = new SqlCommand("SELECT * FROM Users", sqlconnection);
            //    sqlconnection.Open();
            //    GridView1.DataSource = sqlcommand.ExecuteReader();
            //    GridView1.DataBind();
            //    sqlconnection.Close();
            //}
            if (!IsPostBack)
            {
                // DataAccessLayer dataAccessLayer = new DataAccessLayer();
                int adminId = Convert.ToInt32(Application["adId"]);
                var students = dataAccessLayer.SelectData($"select Users.id , Users.UserEmail , Users.UserPassword, Users.UserName , Users.UserBirthDate ," +
                                                          $" Depts.[DeptName] from Users , Depts where Users.deptID = Depts.ID And deptID <>  {adminId}");

                GridView1.DataSource = students;
                GridView1.DataBind();
            }
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/add_std.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Manage")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];
                var studentId = Convert.ToInt32(row.Cells[1].Text);
                Response.Redirect($"Edit_Student.aspx?id={studentId}");
            }
        }
    }
}