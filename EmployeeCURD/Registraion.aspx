<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registraion.aspx.cs" Inherits="EmployeeCURD.Registraion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 300px;
        }
        .auto-style3 {
            width: 430px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblWelcome" runat="server" Text="Welcome to registration"></asp:Label>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Enter Employe Id" ID="lblEmpId"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredEmpId" runat="server" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblname" runat="server" Text="Enter Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ForeColor="Red" ControlToValidate="txtname"  ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMail" runat="server" Text="Enter Email"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtmail" runat="server" ForeColor="Red" ErrorMessage="Gamil is not in proper formate"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="Requiredmail" runat="server" ControlToValidate="txtmail" ForeColor="Red" ErrorMessage="Requiredl"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMobile" runat="server" Text="Enter Mobile Number"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularMobile" runat="server" ValidationExpression="[0-9]{10}"  ForeColor="Red" ControlToValidate="txtmobile" ErrorMessage="Proper Format"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" ControlToValidate="txtmobile" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblUname" runat="server" Text="Create UserName"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="Requireduname" runat="server" ForeColor="Red" ControlToValidate="txtUname" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPwd" runat="server" Text="Enter Password"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ForeColor="Red" ControlToValidate="txtPwd" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblCpwd" runat="server" Text="Re-Enter Password"></asp:Label>
                    </td>
                    <td class="auto-style3">
                         <asp:TextBox ID="txtCPwd" runat="server"></asp:TextBox>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredCPwd" runat="server" ControlToValidate="txtCPwd" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCPwd" ControlToCompare="txtPwd" ForeColor="Red" ErrorMessage="Password not Mached"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblDeg" runat="server" Text="Select Department"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDepartment" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">DataMangement</asp:ListItem>
                            <asp:ListItem Value="2">Development</asp:ListItem>
                            <asp:ListItem Value="3">Testing</asp:ListItem>
                            <asp:ListItem Value="4">Maintaince</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblDept" runat="server" Text="Select Designation"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDesi" runat="server">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Developer</asp:ListItem>
                            <asp:ListItem>Tester</asp:ListItem>
                            <asp:ListItem>Data Analist</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnReg" runat="server" Text="Regiter" OnClick="btnReg_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblres" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
