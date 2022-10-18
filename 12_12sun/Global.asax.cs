using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using _12_12sun.Dal;


namespace _12_12sun
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            dataAccessLayer.Open();
            var depts = dataAccessLayer.SelectData("SELECT * FROM Depts");
            if (depts.Rows.Count == 0)
            {
                dataAccessLayer.ExecuteCommand("INSERT INTO Depts VALUES('Admin')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Depts VALUES('Software')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Depts VALUES('Network')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Depts VALUES('Computer')");
            }
            var Admin = dataAccessLayer.SelectData("SELECT * FROM Users");
            if (Admin.Rows.Count == 0)
            {
                var Dept = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName = 'Admin'");
                var dptRows = Dept.Rows[0][0];
                var AdminDeptId = Convert.ToInt32(dptRows);
                dataAccessLayer.ExecuteCommand
    ("INSERT INTO Users(UserEmail,UserPassword,UserName,UserBirthDate,deptID)" +
    " VALUES('MarwaAl3sh@tcc.com' , 'Marwa123' , 'Marwa' , '11/08/1999' , " + AdminDeptId + ")");

            }
            //Set Dept Id In Application Obecjt
            var adId = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName = 'Admin'");
            var adIdIdRows = adId.Rows[0][0];
            Application["adId"] = adIdIdRows;
            var swId = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName = 'Software'");
            var swIdRows = swId.Rows[0][0];
            Application["swId"] = swIdRows;
            var nwId = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName = 'Network'");
            var nwIdRows = nwId.Rows[0][0];
            Application["nwId"] = nwIdRows;
            var coId = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName = 'Computer'");
            var coIdRows = coId.Rows[0][0];
            Application["coId"] = coIdRows;





            //to add years for depts
            var Years = dataAccessLayer.SelectData("SELECT * FROM Years");
            if (Years.Rows.Count == 0)
            {
                dataAccessLayer.ExecuteCommand("INSERT INTO Years VALUES('First_Year')");
                dataAccessLayer.ExecuteCommand("INSERT INTO Years VALUES('Second_Year')");
            }

            var adsub = dataAccessLayer.SelectData("SELECT * FROM Subjects");
            if (adsub.Rows.Count == 0)
            {
                var swsub = dataAccessLayer.SelectData("SELECT ID FROM Depts WHERE DeptName ='Software' ");
                var swsubrows = swsub.Rows[0][0];
                var addsub = Convert.ToInt32(swsubrows);
                dataAccessLayer.ExecuteCommand
("INSERT INTO Subjects VALUES('Internet technologies','ASP.NET','Alaa Al khawam'," + addsub + ")");
            }

            var y1 = dataAccessLayer.SelectData("SELECT ID FROM Years WHERE Years = 'First_Year'");
            var y1Rows = y1.Rows[0][0];
            Application["y1"] = y1Rows;
            var y2 = dataAccessLayer.SelectData("SELECT ID FROM Years WHERE Years = 'Second_Year'");
            var y2Rows = y2.Rows[0][0];
            Application["y2"] = y2Rows;
            dataAccessLayer.Close();





        }
    }
}