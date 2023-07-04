<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="EmployeeCURD.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Logout Successful......!<br />
            <asp:HyperLink ID="HyperLogin" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
