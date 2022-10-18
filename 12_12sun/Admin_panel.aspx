<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_panel.aspx.cs" Inherits="_12_12sun.Admin_panel" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcom
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="add_std" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="subjects" OnClick="Button2_Click" />

            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="depts" OnClick="Button3_Click" />

            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Button" />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Text="logout" />

        </div>
    </form>
</body>
</html>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="design/Admin panel/Css/bootstrap.css" rel="stylesheet" />
    <link href="design/Admin panel/Css/x.css" rel="stylesheet" />
    <title>Admin_Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">TCC</a>
       <%-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>--%>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
<%--            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>--%>
            <li class="nav-item">
              <a class="nav-link" href="Page_Student.aspx">Plog</a>
            </li>
          <li class="nav-item" aria-haspopup="true" aria-expanded="false">
             <%-- <a  class="nav-link dropdown-toggle"  ID="DropDownList1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              </a>--%>
             <%-- <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#Software">Software</a>
                <a class="dropdown-item" href="#Networks">Networks</a>
                <a class="dropdown-item" href="#computers">computers</a>
              </div>--%>
       <asp:DropDownList style="color:black"  class="nav-link" ID="DropDownList1" aria-labelledby="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false" runat="server"></asp:DropDownList>

            </li>
          </ul>
        </div>
      </nav>
          <div id="DIV">
     <h1>- - Welcome To Admin Panel - -</h1>
          <asp:Button ID="Bu" runat="server" Text="LogOut" class="btn btn-danger" OnClick="Bu_Click"  />
     <hr/>
  </div>
   <br/><br/><br/><br/>
      <div class="card text-center" id="add">
        <div class="card-header" style="background-color: rgb(152, 219, 192);">
          <img src="design/Admin panel/img/AddStudent.png" style="width: 23rem;height: 20rem; "/>
        </div>
        <div class="card-body">
          <h5 class="card-title">Add Student</h5>
          <p class="card-text">Adding a new student to the student records .</p>
            <asp:Button ID="Button1" runat="server" Text="ADD" class="btn btn-primary" OnClick="Button1_Click1" />
        </div>
        <div class="card-footer text-muted">
          Click on the button above
        </div>
      </div>
      <div class="card text-center" id="sub">
        <div class="card-header" style="background-color: rgb(158, 187, 241);">
          <img src="design/Admin panel/img/AddSubject.png" style="height: 20rem;"/>
        </div>
        <div class="card-body">
          <h5 class="card-title">Add Subject</h5>
          <p class="card-text">Adding a new artical to the existing articals .</p>
            <asp:Button ID="Button2" runat="server" Text="ADD" class="btn btn-primary" OnClick="Button2_Click1" />
        </div>
        <div class="card-footer text-muted">
          Click on the button above
        </div>
      </div>
      <div class="card text-center" id="sect">
        <div class="card-header" style="background-color: rgb(255, 192, 115);">
          <img src="design/Admin panel/img/AddSection.png" style="width: 23rem;height: 20rem; "/>
        </div>
        <div class="card-body">
          <h5 class="card-title">Add Section</h5>
          <p class="card-text">Adding a new section existing sections .</p>
            <asp:Button ID="Button3" runat="server" Text="ADD" class="btn btn-primary" OnClick="Button3_Click1" />
        </div>
        <div class="card-footer text-muted" >
          Click on the button above
        </div>
      </div>
      <div class="card text-center" id="post">
        <div class="card-header" style="background-color: rgb(235, 173, 173);">
          <img src="design/Admin panel/img/AddPost.png" style="width: 23rem;height: 20rem; "/>
        </div>
        <div class="card-body">
          <h5 class="card-title">Add Post</h5>
          <p class="card-text">Adding a new post to the existing posts .</p>
            <asp:Button ID="Button4" runat="server" Text="ADD" class="btn btn-primary" OnClick="Button4_Click" />
        </div>
        <div class="card-footer text-muted">
          Click on the button above
        </div>
       </div>
    </form>
</body>
</html>




