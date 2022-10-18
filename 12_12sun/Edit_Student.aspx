<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Student.aspx.cs" Inherits="_12_12sun.Edit_Student" %>


            <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Design/addstd/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Design/addstd/css/style.css" rel="stylesheet" />
    <title>Add Student</title>
</head>
<body>
    <form id="form2" runat="server">
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Email</label>
          <input type="email"  class="form-control" id="email" placeholder="Email" runat="server"/>
<%--                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>

        </div>
        <div class="form-group col-md-6">
          <label for="inputPassword4">Password</label>
          <input type="password"  class="form-control" id="pass" placeholder="Password" runat="server"/>
        </div>
      </div>
      <div class="form-group">
        <label for="inputAddress">User Name </label>
        <input type="text"  class="form-control" id="Name" placeholder="User Name" runat="server"/>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputCity">Data</label>
          <input type="date"  class="form-control" id="Birthdate" placeholder="mm,dd,yyyy" runat="server"/>
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
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-primary btn-lg" OnClick="Edit_Click1" />
        <asp:Button ID="Button2" runat="server" Text="delete"  class="btn btn-secondary btn-lg" OnClick="Delete_Click1" />
        <br />
        
    </form>
</body>
</html>

   
