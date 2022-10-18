using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;

namespace _12_12sun
{
    public partial class Depts_uptade : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer;

        protected void Page_Load(object sender, EventArgs e)
        {
            dataAccessLayer = new DataAccessLayer();
            var depts = dataAccessLayer.SelectData("Select * from Depts");
            DropDownList1.DataSource = depts;
            DropDownList1.DataTextField = "DeptName";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string NameDept = TextBox1.Text;
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"INSERT INTO Depts VALUES('{NameDept}'");
            dataAccessLayer.Close();
            TextBox1.Text = "";

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string NameDept = TextBox1.Text;
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"INSERT INTO Depts VALUES('{NameDept}'");
            dataAccessLayer.Close();
            TextBox1.Text = "";
        }
    }
}