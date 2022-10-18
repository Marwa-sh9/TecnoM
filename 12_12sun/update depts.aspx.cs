using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;


namespace _12_12sun
{
    public partial class update_depts : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string DeptAdd = TextBox1.Text;
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"insert into Depts values('{DeptAdd}')");
            dataAccessLayer.Close();
            TextBox1.Text= "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string DeptAdd = TextBox1.Text;
            dataAccessLayer.Open();
            dataAccessLayer.ExecuteCommand($"delete from Depts  where DeptName= '{DeptAdd}' ");
            dataAccessLayer.Close();
            TextBox1.Text = "";
        }
    }
}