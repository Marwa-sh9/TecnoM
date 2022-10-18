using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;

namespace _12_12sun
{
    public partial class Student_Subjects : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int DeptSWId = Convert.ToInt32(Application["swId"]);
                int DeptNWId = Convert.ToInt32(Application["nwId"]);
                int DeptCoId = Convert.ToInt32(Application["coId"]);
                // DataAccessLayer dataAccessLayer = new DataAccessLayer();
              //  int adminId = Convert.ToInt32(Application["adId"]);
                int? sessionId = Convert.ToInt32(Session["ID"]);
                if (sessionId==DeptSWId)
                {
                    var sw = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptSWId}");
                    GridView1.DataSource = sw;
                    GridView1.DataBind();
                }
                else if(sessionId==DeptNWId)
                {
                    var nw = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptNWId}");

                    GridView1.DataSource = nw;
                    GridView1.DataBind();
                }
                else
                {
                    var co = dataAccessLayer.SelectData($"select * from Subjects where IDdept = {DeptCoId}");

                    GridView1.DataSource = co;
                    GridView1.DataBind();
                }

             
            }
        }


    }
}