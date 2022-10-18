using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;


namespace _12_12sun
{
    public partial class Edit_Student : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            //DataAccessLayer dataAccessLayer = new DataAccessLayer();

            if (!IsPostBack)
            {
                int studentId = Convert.ToInt32(Request.QueryString.Get("id"));
                var student = dataAccessLayer.SelectData($"SELECT * FROM Users WHERE id = {studentId}");
                email.Value = student.Rows[0][1].ToString();
                pass.Value = student.Rows[0][2].ToString();
                Name.Value = student.Rows[0][3].ToString();
                Birthdate.Value = student.Rows[0][4].ToString();
            }

        }

        protected void Edit_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>window.confirm(The data of this student will be modified, Are you sure?)</script>");

            int studentId = Convert.ToInt32(Request.QueryString.Get("id"));
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"UPDATE Users SET UserEmail = '{email.Value}' ,UserPassword =  '{pass.Value}' ," +
                                           $" UserName = '{Name.Value}' , UserBirthDate = '{Birthdate.Value}' WHERE id = {studentId} ");
            dataAccessLayer.Close();

            Response.Write("<script>alert('Modified successfully')</script>");
            Response.Redirect("~/view.aspx");
        }

        protected void Delete_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>window.confirm('Are You Sure? ')</script>");

            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            int studentId = Convert.ToInt32(Request.QueryString.Get("id"));
            dataAccessLayer.Open();
            dataAccessLayer.SelectData($"DELETE FROM Users WHERE id = {studentId}");
            dataAccessLayer.Close();
            Response.Redirect("~/view.aspx");
        }
    }
}