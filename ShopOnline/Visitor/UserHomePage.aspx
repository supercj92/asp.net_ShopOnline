<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/UserCenter.master" AutoEventWireup="true" CodeFile="UserHomePage.aspx.cs" Inherits="Visitor_UserHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" 
            Height="300px" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="UserName" HeaderText="用户名" />
                <asp:BoundField DataField="NikeName" HeaderText="昵称" />
                <asp:BoundField DataField="email" HeaderText="邮箱" />
                <asp:BoundField DataField="sex" HeaderText="性别" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
    <p> <a href="AlterInfo.aspx">修改个人信息 </a> </p>
</asp:Content>

