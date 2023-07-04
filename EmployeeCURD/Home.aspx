<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeeCURD.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 275px;
            font-size: x-large;
        }
        .auto-style4 {
            width: 307px;
        }
        .auto-style5 {
            width: 281px;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            WelCome To Home Page
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td><strong>
                    <asp:HyperLink ID="Hyper_Logout" runat="server" CssClass="auto-style6" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:HyperLink ID="Hyper_Diaplay" runat="server" CssClass="auto-style6" NavigateUrl="~/Diplay_Employ.aspx">Display Employes</asp:HyperLink>
                    </strong></td>
                <td class="auto-style4"><strong>
                    <asp:HyperLink ID="Hyper_UpdateEmp" runat="server" CssClass="auto-style6" NavigateUrl="~/Update_Employe.aspx">Update Employ</asp:HyperLink>
                    </strong></td>
                <td class="auto-style5"><strong>
                    <asp:HyperLink ID="Hyper_Search" runat="server" CssClass="auto-style6" NavigateUrl="~/Search_By_Id.aspx">Employ Details</asp:HyperLink>
                    </strong></td>
                <td><strong>
                    <asp:HyperLink ID="Hyper_Delete" runat="server" CssClass="auto-style6" NavigateUrl="~/Delete_Employ.aspx">Delete Employe</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
