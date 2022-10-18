using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _12_12sun.Dal;


namespace _12_12sun
{
    public partial class Page_Student : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {

            //int adminId = Convert.ToInt32(Application["adId"]);
            int? sessionId = Convert.ToInt32(Session["ID"]);
            if (sessionId == null || sessionId == 0)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }
            //if (!Page.IsPostBack)
            //{

            //    int swId = Convert.ToInt32(Application["swId"]);
            //    int nwId = Convert.ToInt32(Application["nwId"]);
            //    int coId = Convert.ToInt32(Application["coId"]);

            //int? sessionID = Convert.ToInt32(Session["ID"]);

            //if (sessionID == null || swId != sessionID || nwId != sessionID || coId != sessionID)
            //    {
            //        Response.Redirect("~/Login.aspx");
            //        return;
            //    }
            //}
        }
        public string Test2()
        {
            var users = dataAccessLayer.SelectData("Select * from Users");

            var posts = dataAccessLayer.SelectData("Select * from postes");
            for (int i = 0; i < posts.Rows.Count; i++)
            {
                int postId = Convert.ToInt32(posts.Rows[i][0]);
                Response.Write("<div class='row'> <div class='col-lg-8'>");
                Response.Write(" <h3 class='mt-4 text-red'>" + posts.Rows[i][3].ToString() + " </h3>");
                Response.Write(" <p>Posted on " + posts.Rows[i][2].ToString() + " </p>");
                Response.Write(" <p class='lead'>" + posts.Rows[i][1].ToString() + " </p>");
                Response.Write(" <hr>");
                Response.Write(" <div class='card my-4'> <h5 class='card-header'>Leave a Comment:</h5> <div class='card-body'>");
                Response.Write("  <div class='form-group'> <textarea class='form-control' rows='3'></textarea> </div>");
                Response.Write("  <button type='submit' runat='server' ID='B' OnServerClick='true' class='btn btn-primary'>Submit</button>"
                    
                    +"<button type='Delete' class='btn btn-primary'>Delete</button>" +
                    "  </form> </div> </div>");


                // var IdStdName= Convert.ToString(users.Rows[i][3]);
                var comments = dataAccessLayer.SelectData($"Select * from Comments where PostId = {postId}");

                //var StdCommentId = dataAccessLayer.SelectData($"select UserName from Users where stdName={IdStdName}");

                for (int j = 0; j < comments.Rows.Count; j++)
                {
                    Response.Write(" <div class='media mb-4'> <div class='media-body'>");
                    Response.Write(" <h5 class='mt-0'>" + users.Rows[i][3].ToString() + "</h5>");
                    Response.Write(comments.Rows[j][1].ToString());

                }
                Response.Write(" </div> </div> </div> </div>");
                //comments.Rows[j][4].ToString()
            }
            return "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}