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
    public partial class pageOne : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            var depts = dataAccessLayer.SelectData("Select * from Depts where DeptName <> 'Admin'");
            DropDownList1.DataSource = depts;
            DropDownList1.DataTextField = "DeptName";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();



            //Get DeptId From Application
            int DeptSWId = Convert.ToInt32(Application["swId"]);
            int DeptNWId = Convert.ToInt32(Application["nwId"]);
            int DeptCoId = Convert.ToInt32(Application["coId"]);
            dataAccessLayer = new DataAccessLayer();

            //Get SW Into Grid
            var sw = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptSWId}");
            sw.Columns.RemoveAt(0);
            sw.Columns.RemoveAt(3);
           Gridsw.DataSource = sw;
            Gridsw.DataBind();
            //Get NW Into Grid
            var nw = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptNWId}");
            nw.Columns.RemoveAt(0);
            nw.Columns.RemoveAt(3);
            Gridnw.DataSource = nw;
            Gridnw.DataBind();
            //Get CO Into Grid
            var co = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptCoId}");
            co.Columns.RemoveAt(0);
            co.Columns.RemoveAt(3);
            Gridcu.DataSource = co;
            Gridcu.DataBind();






            //string conn = ConfigurationManager.ConnectionStrings["Tecno1"].ConnectionString;
            ////  SqlConnection sqlConnection = new SqlConnection(con);
            ////  string conn = "Data Source=DESKTOP-56BJG2B;Initial Catalog=TCC;Integrated Security=True;";
            //SqlConnection sqlconnection = new SqlConnection(conn);
            //SqlCommand sqlcommand = new SqlCommand("SELECT * FROM Depts", sqlconnection);
            //sqlconnection.Open();
            //DropDownList1.DataSource = sqlcommand.ExecuteReader();
            //DropDownList1.DataTextField = "Name";
            //DropDownList1.DataValueField = "ID";
            //DropDownList1.DataBind();
            //sqlconnection.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                        Response.Redirect("~/login.aspx");


        }
    }
}