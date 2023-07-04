<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Employe.aspx.cs" Inherits="EmployeeCURD.Update_Employe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            font-size: medium;
            text-align: left;
            width: 673px;
        }
        .auto-style4 {
            width: 910px;
        }
        .auto-style5 {
            font-size: medium;
            width: 910px;
            text-align: center;
        }
        .auto-style6 {
            font-size: medium;
            width: 673px;
            text-align: center;
        }
        .auto-style7 {
            font-size: medium;
            width: 897px;
        }
        .auto-style8 {
            font-size: medium;
            width: 897px;
            text-align: center;
        }
        .auto-style9 {
            width: 910px;
            text-align: center;
        }
        .auto-style10 {
            font-size: medium;
            width: 897px;
            text-align: center;
            height: 28px;
        }
        .auto-style11 {
            font-size: medium;
            width: 673px;
            text-align: center;
            height: 28px;
        }
        .auto-style12 {
            width: 910px;
            text-align: center;
            height: 28px;
        }
        .auto-style13 {
            font-size: medium;
            width: 673px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6"><strong>Update Employe Credencials</strong></td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label runat="server" Text="Enter Employe Id" ID="lblEmpId" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                        
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblname" runat="server" Text="Enter Name" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtname" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                        
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblMail" runat="server" Text="Enter Email" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtmail" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                       
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblMobile" runat="server" Text="Enter Mobile Number" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                        
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="LblUname" runat="server" Text="Create UserName" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtUname" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                        
                       
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblPwd" runat="server" Text="Enter Password" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtPwd" runat="server" CssClass="auto-style2"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style9">
                        
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblCpwd" runat="server" Text="Re-Enter Password" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                         <strong>
                         <asp:TextBox ID="txtCPwd" runat="server" CssClass="auto-style2"></asp:TextBox>
                         </strong>
                    <td class="auto-style9">
                        
                    </td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblDeg" runat="server" Text="Select Department" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:DropDownList ID="DropDepartment" runat="server" CssClass="auto-style2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">DataMangement</asp:ListItem>
                            <asp:ListItem Value="2">Development</asp:ListItem>
                            <asp:ListItem Value="3">Testing</asp:ListItem>
                            <asp:ListItem Value="4">Maintaince</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
                    <td class="auto-style4"><span class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style4"></span></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="lblDept" runat="server" Text="Select Designation" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:DropDownList ID="DropDesi" runat="server" CssClass="auto-style2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Developer</asp:ListItem>
                            <asp:ListItem>Tester</asp:ListItem>
                            <asp:ListItem>Data Analist</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
                    <td class="auto-style4"><span class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        </span></td>
                    <td class="auto-style3">
                        <strong>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnReg_Click" CssClass="auto-style2" />
                        </strong>
                    </td>
                    <td class="auto-style4"><span class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        </span></td>
                    <td class="auto-style6">
                        <strong>
                        <asp:Label ID="lblres" runat="server" Text="" CssClass="auto-style2"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
