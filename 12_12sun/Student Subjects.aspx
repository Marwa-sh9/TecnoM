<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Subjects.aspx.cs" Inherits="_12_12sun.Student_Subjects" %>

<!DOCTYPE html>

<html lang="en">
<head >
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Sub Student</title>
    <link href="Design/Add post/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Design/Add post/css/blog-post.css" rel="stylesheet" />

</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">TCC</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link" href="Default.aspx">Home
            </a>
          </li>
          <li  class="nav-item active">
            <a class="nav-link" href="Student Subjects.aspx">View Subject</a>
                            <span class="sr-only">(current)</span>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Page_Student.aspx">Blog</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <form id="form1" runat="server">
        <div>
              <div style="padding-top:100px">
    <center >

        <asp:GridView ID="GridView1" runat="server" CellPadding="3" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="71px" Width="371px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                        
        <br />
    </center>
    </div>
        </div>
    </form>
</body>
</html>
