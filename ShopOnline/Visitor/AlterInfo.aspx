<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/UserCenter.master" AutoEventWireup="true" CodeFile="AlterInfo.aspx.cs" Inherits="Visitor_AlterInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" height="350px">
<tr>
<td class="style1">用户名：</td>
<td>
    <asp:TextBox ID="tbusername" runat="server"  Width="100%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="tbusername" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style1">密码：</td>
<td>
    <asp:TextBox ID="tbpwd" runat="server" Width="100%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="tbpwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style1">昵称：</td>
<td>
    <asp:TextBox ID="tbnikename" runat="server" Width="100%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="tbnikename" ErrorMessage="昵称不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style1">邮箱：</td>
<td>
    <asp:TextBox ID="tbemail" runat="server" Width="100%"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ValidationExpression="^[a-zA-Z0-9]{1,}@[a-zA-Z0-9]{1,}\.(com|net|org|edu|mil|cn|cc)$" 
        ControlToValidate="tbemail" ErrorMessage="邮箱格式错误"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td class="style1">性别：</td>
<td>
    <asp:TextBox ID="tbsex" runat="server" Width="100%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="tbsex" ErrorMessage="性别不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style1">&nbsp;</td>
<td>
    <asp:Button ID="btnconfirm" runat="server" Text="确认修改" 
        onclick="btnconfirm_Click" />
    </td>
</tr>

</table>
</asp:Content>

