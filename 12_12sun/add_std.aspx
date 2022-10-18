<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="add_std.aspx.cs" Inherits="_12_12sun.add_std"
    EnableViewState="true"%>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="315px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" type="date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="submet" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="csv" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Design/addstd/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Design/addstd/css/style.css" rel="stylesheet" />
    <title>Add Student</title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Email</label>
          <input type="email" class="form-control" id="email" placeholder="Email" runat="server"/>
<%--                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>

        </div>
        <div class="form-group col-md-6">
          <label for="inputPassword4">Password</label>
          <input type="password" class="form-control" id="pass" placeholder="Password" runat="server"/>
        </div>
      </div>
      <div class="form-group">
        <label for="inputAddress">User Name </label>
        <input type="text" class="form-control" id="Name" placeholder="User Name" runat="server"/>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputCity">Data</label>
          <input type="date" class="form-control" id="Birthdate" placeholder="mm,dd,yyyy" runat="server"/>
        </div>
        <div class="form-group col-md-6">
          <label for="inputState">study</label>
<%--        <asp:DropDownList ID="Drp1" runat="server"></asp:DropDownList>--%>
          <select id="Drp1" class="form-control" runat="server">

          </select>
        </div>
      </div>
      <br/>
      <br/>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn-primary btn-lg" OnClick="Button1_Click1" />
        <br />
        <br />
&nbsp;<asp:Button ID="Button3" runat="server" Text="upload csv" class="btn btn-secondary btn-lg" OnClick="upload_Click1" />
        &nbsp;
        <asp:Button ID="Button4" runat="server" Text="View"  class="btn btn-primary btn-lg" OnClick="View_Click1" />
        <br />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />

    </form>
</body>
</html>
