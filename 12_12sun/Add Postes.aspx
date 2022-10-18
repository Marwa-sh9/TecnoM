<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Postes.aspx.cs" 
    Inherits="_12_12sun.Add_Postes"
       EnableViewState="true"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>TCC - Blog</title>
    <link href="Design/Add post/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Design/Add post/css/blog-post.css" rel="stylesheet" />

</head>

<body>
<%--  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">TCC</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link" href="#">Home
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Blog</a>
              <span class="sr-only">(current)</span>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>--%>
    <form runat="server">
  <div class="container">
<%--      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />--%>
      <div class='form-group'> <textarea class='form-control' runat="server" ID="textarea" rows='3'></textarea> </div>
      <asp:Button ID="Button1" runat="server" class='btn btn-primary' Text="Post" OnClick="Button1_Click" />
      
    <% this.test(); %>

  </div>

        </form>
    <script src="Design/Add post/vendor/jquery/jquery.min.js"></script>
    <script src="Design/Add post/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
