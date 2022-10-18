<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Depts_update.aspx.cs" Inherits="_12_12sun.Depts_uptade" %>

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
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
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
                margin-top:128px;
              
            height: 210px;
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
            height: 79px;
        }
        .auto-style4 {
            background-image:url("design/depts/img3.png");
            background-repeat:no-repeat;
            background-position:center;
            background-size:cover;
        }
        .auto-style5 {
            font-weight: 700;
            font-style: italic;
        }
        .auto-style6 {
            font-weight: 700;
            font-style: italic;
        }
       
    </style>
</head>
<body class="auto-style4">
    <form id="form1" runat="server">
    <div class="auto-style3"> 
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="auto-style1" Width="221px" Height="24px"></asp:TextBox><br /><br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="20px" Width="77px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style5" Height="33px" Width="56px" OnClick="Button1_Click1" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Delet" CssClass="auto-style6" Height="33px" Width="65px" OnClick="Button2_Click1" />
    
    </div>
       
    </form>
</body>
</html>
