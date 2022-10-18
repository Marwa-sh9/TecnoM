using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;

namespace _12_12sun
{
    public partial class subjects : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                var depts = dataAccessLayer.SelectData("Select * from Depts where DeptName <> 'Admin'");
                DropDownList1.DataSource = depts;
                DropDownList1.DataTextField = "DeptName";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataBind();



                var Years = dataAccessLayer.SelectData("Select * from Years");
                DropDownList2.DataSource = Years;
                DropDownList2.DataTextField = "years";
                //  DropDownList2.DataTextField = "Second_Year";
                DropDownList2.DataValueField = "ID";

                DropDownList2.DataBind();
            }


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string NameSub = TextBox1.Text;
            string Desc = TextBox2.Text;
            string NameTeacher = TextBox3.Text;
            int DeptId = Convert.ToInt32(DropDownList1.SelectedValue);
            int years = Convert.ToInt32(DropDownList2.SelectedValue);


            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"INSERT INTO Subjects VALUES('{NameSub}' , '{Desc}' , '{NameTeacher}'  , {DeptId} ,{years})");
            dataAccessLayer.Close();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}