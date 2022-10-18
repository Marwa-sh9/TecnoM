<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_12_12sun.login" %>
<%--
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click1" />
        
    </form>
</body>
</html>--%>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="sign.WebForm1" %>--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
    <link href="design/login/css/bootstrap-icons.css" rel="stylesheet" />
    <link href="design/login/css/bootstrap.css" rel="stylesheet" />
    <link href="design/login/css/Text.css" rel="stylesheet" />
    <script src="design/login/JavaScript/bootstrap.bundle.js"></script>
    <title># LogIn #</title>
</head>
<body>
    <form id="form1" runat="server">     
<%--  <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
    <div class="container-fluid">
      <a name="m" class="navbar-brand" href="#" id="tcc">TCC</a>
        <div>
      <input class="navbar-toggler" type="text" placeholder="Search" aria-label="Search" id="search"/>
            </div>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarsExample01">
        <ul class="navbar-nav me-auto mb-2">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Definition Of The Institute</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Specialization</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01" id="a">
              <li><a class="dropdown-item" href="#">Software</a></li>
              <li><a class="dropdown-item" href="#">Computers</a></li>
              <li><a class="dropdown-item" href="#">Networks</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>--%>
 <h1> Enter your information to log in </h1>
<fieldset>
  <svg xmlns="http://www.w3.org/2000/svg" width="17%" height="15%" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
   <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm9.854-2.854a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
 </svg>
<hr/>
    <label>Email </label><br/>
     <asp:TextBox runat="server" ID="eemail" type="email"  placeholder="@e_mail.com"  class="c"  ></asp:TextBox>
       <label>Password</label><br/>
      <asp:TextBox runat="server" ID="pass" type="password"  placeholder="Password" class="c" ></asp:TextBox><br/><hr/>
     <asp:Button runat="server" Text="Login" type="button" id="bt" class="btn btn-primary" OnClick="bt_Click"/>
   <p class="mt-5 mb-3 text-muted" style="text-align: center;">&copy; 2017-2020<i/></p>      
</fieldset>
    <%--    <div id="footer">
 <footer class="bd-footer p-1 p-md-5 mt-5 bg-dark text-center text-sm-start">
  <div class="container">
    <ul class="bd-footer-links ps-0 mb-3">
      <li class="d-inline-block"><a href="https://github.com/twbs"><i class="bi bi-github o"></i></a></li>
      <li class="d-inline-block ms-3"><a href="https://facebook.com"><i class="bi bi-facebook o"></i></a></li>
      <li class="d-inline-block ms-3"><a href="https://instgram.com"><i class="bi bi-instagram o"></i></a></li>
    </ul>
  </div>
</footer>
 </div>--%>
  </form>
</body>
</html>
