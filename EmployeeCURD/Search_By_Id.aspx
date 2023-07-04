<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_By_Id.aspx.cs" Inherits="EmployeeCURD.Search_By_Id" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 587px;
        }
        .auto-style4 {
            width: 587px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Search by Id</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4"><strong>Enter Employe Id</strong></td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridSearch" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
