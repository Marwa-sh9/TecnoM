using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using _12_12sun.Dal;

namespace _12_12sun
{
    public partial class add_std : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            var depts = dataAccessLayer.SelectData("Select * from Depts ");
            Drp1.DataSource = depts;
            Drp1.DataTextField = "DeptName";
            Drp1.DataValueField = "ID";
            Drp1.DataBind();
            }
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string Email = email.Value;
            string Password = pass.Value;
            string UserName = Name.Value;
            string birthdate = Birthdate.Value;
            int DeptId = Convert.ToInt32(Drp1.Value);
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"INSERT INTO Users VALUES('{Email}' , '{Password}' , '{UserName}' , '{birthdate}' , {DeptId})");
            dataAccessLayer.Close();
            email.Value = pass.Value = Name.Value = Birthdate.Value = "";
            Response.Write("<script>alert('Added successfully')</script>");


        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            string Email = email.Value;
            string Password = pass.Value;
            string UserName = Name.Value;
            string birthdate = Birthdate.Value;
            int DeptId = Convert.ToInt32(Drp1.Value);
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"delete from Users VALUES" +
                $"('{Email}' , '{Password}' , '{UserName}' , '{birthdate}' , {DeptId})");
            dataAccessLayer.Close();

            email.Value = pass.Value = Name.Value = Birthdate.Value = "";
            Response.Write("<script>alert('Deleted successfully')</script>");


        }

        protected void upload_Click1(object sender, EventArgs e)
        {
            //Upload and save the file.
            string csvPath = Server.MapPath("Excel file/Book1.csv") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(csvPath);
            DataTable dt = new DataTable();


            dt.Columns.AddRange(new DataColumn[6] {
                new DataColumn("ID", typeof(int)),
                new DataColumn("UserEmail", typeof(string)),
                new DataColumn("UserPassword",typeof(string)),
                 new DataColumn("UserName",typeof(string)),
                new DataColumn("UserBirthDate",typeof(DateTime)),
                new DataColumn("deptID",typeof(int)),

                //deptID

                });
            string csvData = File.ReadAllText(csvPath);
            int rowIndex = 0;
            foreach (string row in csvData.Split('\n'))
            {
                if (rowIndex++ == 0)
                    continue;

                if (!string.IsNullOrEmpty(row))
                {
                    dt.Rows.Add();
                    int i = 0;
                    foreach (string cell in row.Split(','))
                    {
                        if (i == 4)
                            dt.Rows[dt.Rows.Count - 1][i] = DateTime.Parse(cell);
                        else
                            dt.Rows[dt.Rows.Count - 1][i] = cell;
                        i++;
                    }
                }
            }

            string consString = ConfigurationManager.ConnectionStrings["Tecno1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(consString))
            {
                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                {
                    //Set the database table name.
                    sqlBulkCopy.DestinationTableName = "dbo.Users";
                    con.Open();
                    sqlBulkCopy.WriteToServer(dt);
                    con.Close();
                }
            }




        }

        protected void View_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/view.aspx");
        }
    }
}