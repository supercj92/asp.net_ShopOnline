<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/MasterPage.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Manage_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%">
<tr>
<td width="100px">用户名：</td>
<td>
    <asp:TextBox ID="tbuid" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="tbuid" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>密码：</td>
<td>
    <asp:TextBox ID="tbpwd" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="tbpwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>真实姓名：</td>
<td>
    <asp:TextBox ID="tbrealname" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="tbrealname" ErrorMessage="真实姓名不能为空"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>邮箱：</td>
<td>
    <asp:TextBox ID="tbemail" runat="server" Width="80%"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="tbemail" ValidationExpression="^[a-zA-Z0-9]{1,}@[a-zA-Z0-9]{1,}\.(com|net|org|edu|mil|cn|cc)$" ErrorMessage="邮箱格式不合法"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td></td>
<td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加管理员" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
    </td>
</tr>
</table>
</asp:Content>

