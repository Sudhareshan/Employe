<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete_Employ.aspx.cs" Inherits="EmployeeCURD.Delete_Employ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Enter employee Id</td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
            <asp:Label ID="lblres" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
