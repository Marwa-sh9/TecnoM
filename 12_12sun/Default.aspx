<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_12_12sun.pageOne" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="Gridsw" runat="server">
            </asp:GridView>

            <br />
            <br />
            <asp:GridView ID="Gridnw" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:GridView ID="Gridcu" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click1" />

        </div>
    </form>
</body>
</html>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="design/defualt/w3/w3%20(1).css" rel="stylesheet" />
    <link href="design/defualt/font/font-awesome.min.css" rel="stylesheet" />
    <link href="design/defualt/font/font-awesome.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap-grid.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="design/defualt/Css/bootstrap.css" rel="stylesheet" />
    <link href="design/defualt/Css/style1.css" rel="stylesheet" />
    <script src="design/defualt/JS/bootstrap.bundle.js"></script>
    <script src="design/defualt/JS/bootstrap.bundle.min.js"></script>
    <script src="design/defualt/JS/bootstrap.min.js"></script>
    <script src="design/defualt/JS/bootstrap.js"></script>
    <script src="design/defualt/font5/all.js"></script>
    
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
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
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <div class="header">
        <div class="inner-header flex">
        <svg version="1.1" class="logo" baseProfile="tiny" id="Layer_1" xmlns=""
        xmlns:xlink="" x="0px" y="0px" viewBox="0 0 500 500" xml:space="preserve">
        <path fill="#FFFFFF" stroke="#000000" stroke-width="10" stroke-miterlimit="10" d="M57,283" />
        <g><path fill="#fff"
        d="M250.4,0.8C112.7,0.8,1,112.4,1,250.2c0,137.7,111.7,249.4,249.4,249.4c137.7,0,249.4-111.7,249.4-249.4
        C499.8,112.4,388.1,0.8,250.4,0.8z M383.8,326.3c-62,0-101.4-14.1-117.6-46.3c-17.1-34.1-2.3-75.4,13.2-104.1
        c-22.4,3-38.4,9.2-47.8,18.3c-11.2,10.9-13.6,26.7-16.3,45c-3.1,20.8-6.6,44.4-25.3,62.4c-19.8,19.1-51.6,26.9-100.2,24.6l1.8-39.7    c35.9,1.6,59.7-2.9,70.8-13.6c8.9-8.6,11.1-22.9,13.5-39.6c6.3-42,14.8-99.4,141.4-99.4h41L333,166c-12.6,16-45.4,68.2-31.2,96.2  c9.2,18.3,41.5,25.6,91.2,24.2l1.1,39.8C390.5,326.2,387.1,326.3,383.8,326.3z" />
        </g>
        </svg>
        <h1>Welcome</h1>
            <br />
        </div>
                        <asp:Button ID="Button1" runat="server" Font-Bold="true" border-radius="10%" BorderStyle="Solid"  text-align="center"  style="" Text="Login" OnClick="Button1_Click" Height="26px" Width="114px" />

        <div>
        <svg class="waves" xmlns="" xmlns:xlink=""
        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
        <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
        </defs>
        <g class="parallax">
        <use href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
        <use href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
        <use href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
        <use href="#gentle-wave" x="48" y="7" fill="#fff" />
        </g>
        </svg>
        </div>   
        </div>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <div class="w3-container w3-padding-64 w3-center" id="team">
            <h2>OUR TEAM</h2>
            <p>Meet the team - our office rats:</p>
            <div class="w3-row">
                <br/>
                  <div class="w3-quarter">
                    <img src="design/defualt/Image/wman.png" alt="Boss" style="width: 45%" class="w3-circle w3-hover-opacity" />
                    <h3>Marwa Al3sh</h3>
                    <p>BackEnd</p>
                </div>               
                <div class="w3-quarter">
                    <img src="design/defualt/Image/man.png" alt="Boss" style="width: 45%" class="w3-circle w3-hover-opacity" />
                    <h3>Alaa kastanteny</h3>
                    <p>Web Designer</p>
                </div>
                <div class="w3-quarter">
                    <img src="design/defualt/Image/wman.png" alt="Boss" style="width: 45%" class="w3-circle w3-hover-opacity" />
                    <h3>Boshra zkoor</h3>
                    <p>Support</p>
                </div>
                <div class="w3-quarter">
                    <img src="design/defualt/Image/man.png" alt="Boss" style="width: 45%" class="w3-circle w3-hover-opacity" />
                    <h3>Ayman Alaswoad</h3>
                    <p>Boss man</p>
                </div>
               <div class="w3-quarter">
                    <img src="design/defualt/Image/wman-man.png" alt="Boss" style="width: 45%"   class="w3-circle w3-hover-opacity" />
                    <h3>Baraah Aljarkas </h3>
                    <p>Leader</p>
                </div>
            </div>
        </div>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <section id="Softwaree">

            <div class="container">
                <div class="row">
                    <div class="col">
                        <h1 id="Software">Software</h1>
                        <br/>
                        <br/>
                        <img src="design/defualt/Image/IMG_20201211_202307_912.jpg" width="600px" />
                    </div>
                    <div class="col">
                        <br />
                        <asp:GridView ID="Gridsw" runat="server" CellPadding="3" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="71px" Width="371px">

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
                    </div>
                </div>
            </div>
        </section>
        <br/>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <section id="Computerss">

            <div class="container">
                <div class="row">

                    <div class="col">

                        <h1 id="Computers">Computers</h1>
                        <br/>
                        <br/>
                        <img src="design/defualt/Image/comp.jpg" width="600px" id="com" />
                    </div>
                                        <div class="col">
                                            <br />
                        <asp:GridView ID="Gridcu" runat="server" CellPadding="3" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="71px" Width="371px">
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
                    </div>
                </div>
            </div>
        </section>
        <br/>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <section id="Networkss">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h1 id="Networks">Networks</h1>
                        <br/>
                        <br/>
                        <img src="design/defualt/Image/network.jpg" width="600px" />
                    </div>
                    <div class="col">
                        <br />
                        <asp:GridView ID="Gridnw" runat="server" CellPadding="3" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="71px" Width="371px">
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
                    </div>
                </div>
            </div>
        </section>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <br/>
        <br/>
        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="design/defualt/Image/stud10.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title" id="card1">Definition of the institute</h5>
                    <p class="card-text">
                        The Computer Technical Institute was established in Damascus under the Republican Decree of 1988/1987 and it is affiliated with the Ministry of Higher Education and is subject to the supervision of the Supreme Council of 
                    Intermediate Institutes, after which the Institute became affiliated with Damascus. The university is under the supervision of the Directorate of Technical Institutes.
                    In the academic year 2007/2008, it became the name of the Technical Institute of Computer in Damascus (formerly the Intermediate Institute for Computer Engineering), expanding its specializations into three main departments: Software Engineering,
                   Computer Engineering and Network Engineering. The Computer Technical Institute is located in Damascus Governorate within the Electromechanical Engineering Group (HAMAC) on Airport Road..
                    </p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="design/defualt/Image/stud11.jpg" alt="Card image cap" id="Definition of the institute" />
                <div class="card-body">
                    <h5 class="card-title" id="card2">A word from the director of the institute</h5>
                    <p class="card-text">
                        The Computer Technical Institute in Damascus is considered one of the leading institutes in the field of informatics in our Syrian Arab country, and one of the 
                    technical educational institutions with a positive and bright face in the higher education sector.
                    Director of the Technical Institute of Computers in Damascus, Prof. Dr. Mohammed al-Hussein.
                    </p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="design/defualt/Image/stud9.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title" id="card3">College message</h5>
                    <p class="card-text">
                        The Faculty of Education at Damascus University is an academic academic institution that undertakes several educational, professional, cultural and research missions
                     that seek to provide its services according to quality standards..
                    </p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
            </div>
        </div>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
        <footer class="w3-container w3-padding-32 w3-theme-d1 w3-center" style="background-color:black" id="w3">
            <h4 id="follow">Follow Us</h4>
            <a class="w3-button w3-large w3-teal" href="http://damascusuniversity.edu.sy/ticc/" title="tcc"><i class="fa fa-facebook"></i></a>
            <a class="w3-button w3-large w3-teal" href="https://twitter.com/explore" title="Twitter"><i class="fa fa-twitter"></i></a>
            <a class="w3-button w3-large w3-teal" href="https://www.instagram.com/" title="Google +"><i class="fa fa-instagram"></i></a>
            <a class="w3-button w3-large w3-teal w3-hide-small" href="https://www.linkedin.com/login" title="Linkedin"><i class="fa fa-linkedin"></i></a>
            <p id="powerd">Powered by <a href="https://www.facebook.com/profile.php?id=100011669384683" target="_blank" id='alaa'>The designer Alaa kastanteny</a></p>
           

            <div style="position: relative; bottom: 100px; z-index: 1; left: 0px;" class="w3-tooltip w3-right">
                <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>
                <a class="w3-button w3-theme" href="#"><span class="w3-xlarge">
                    <i class="fa fa-chevron-circle-up"></i></span></a>
            </div>
        </footer>
        <!-- ------------------------------------------------------------------------------------------------------------------------------------- -->
   <%--     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="font/all.js"></script>
        <script src="font5/all.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>--%>

    </form>
</body>
</html>




