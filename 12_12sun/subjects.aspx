<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subjects.aspx.cs" 
    Inherits="_12_12sun.subjects"  EnableViewState="true" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Delete" />
        </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD section
    </title>
    <style type="text/css"> 
        #form1{ text-align:center;
                background-color:silver;
                margin-left:498px;
                margin-right:150px;
                margin-top:50px;
                margin-bottom:50px;
              
            height: 597px;
            padding-top:50px;
            padding-left:20px;
            padding-right:20px;
            border-radius:30px;
            width: 346px;
            border-style:groove;
        }
       
        .auto-style1 {
            font-weight:50px;
            border-radius:50px;
            font-size: medium;
        }
        .auto-style2 {}
        .auto-style3 {
            height: 568px;
            font-size: x-large;
            font-weight: 700;

        }
        .auto-style4 {
            background-image:url("design/Subject/img/imgs.png");
            background-repeat:no-repeat;
            background-position:center;
            background-size:cover;

        }
        .auto-style5 {
            font-weight: 700;
            font-style: italic;
            margin-top: 0px;
            background-color: #0099FF;
        }
        .auto-style6 {
            font-weight: 700;
            font-style: italic;
            background-color: #999966;
        }

       
        .auto-style9 {
            font-size: 30pt;
        }


       
    </style>
</head>
<body class="auto-style4">
    <form id="form1" runat="server">
    <div class="auto-style3"> 
        <span class="auto-style9">subject name:</span><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="auto-style1" Width="287px" Height="29px"></asp:TextBox>
        <br />
        <br />
        <span class="auto-style9">discription:</span><br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" Height="31px" Width="283px"></asp:TextBox>
        <br />
        <br />
        <span class="auto-style9">teacher name:</span><br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" Height="24px" Width="252px"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="20px" Width="77px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style5" Height="34px" Width="61px" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="auto-style6" Height="33px" Width="65px" OnClick="Button2_Click" />
    
    </div>
       
    </form>
</body>
</html>


