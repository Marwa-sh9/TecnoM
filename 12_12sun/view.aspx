<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="_12_12sun.view" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="ADD new std" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="button1" text="Manage" CommandName="Manage" CommandArgument="<%# Container.DataItemIndex %>"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 133px;
        }
        .auto-style2 {
            font-weight: 700;
            font-style: italic;
            color: #FFFFFF;
            text-align: left;
            background-color: #336699;
            margin-left:150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-top:100px">
    <center >

        <asp:GridView ID="GridView1" runat="server" CellPadding="3" CssClass="auto-style1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" Height="71px" Width="371px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
               <Columns>
                <asp:Templatefield>
                <ItemTemplate>
                <asp:Button runat="server" ID="button1" Text="manage" CommandName="Manage" CommandArgument="<%# Container.DataItemIndex %>" />
                </ItemTemplate>
                </asp:Templatefield>                   
                    </Columns>
                    </asp:GridView>
                        
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add new student" CssClass="auto-style2" Height="32px" OnClick="Button1_Click1" />
    </center>
    </div>
    </form>
</body>
</html>
