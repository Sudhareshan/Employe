<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeCURD.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 453px;
        }
        .auto-style3 {
            width: 408px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style4 {
            width: 453px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            width: 453px;
            text-align: left;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
            <h2><b>Welcome to Login Page</b></h2>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2></h2>
                </td>
                <td>
                    <h2><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registraion.aspx">Register</asp:HyperLink></h2>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2></h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>
                    <asp:Label ID="LblUsername" runat="server" Text="Enter UserName"></asp:Label>
                    </h2>
                </td>
                <td class="auto-style2">
                    <h2>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2></h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>
                    <asp:Label ID="lblpwd" runat="server" Text="Enter Password"></asp:Label>
                    </h2>
                </td>
                <td class="auto-style6">
                    <h2>
                    <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox></h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2></h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style2">
                    <h2>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="auto-style5" OnClick="btnLogin_Click" />
                    </h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2></h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2></h2>
                </td>
                <td class="auto-style4">
                    <h2>
                    <asp:Label ID="lblres" runat="server" Text=""></asp:Label>
                    </h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
