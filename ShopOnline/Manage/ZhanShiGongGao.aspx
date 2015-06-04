﻿<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ZhanShiGongGao.aspx.cs" Inherits="HouTai_ZhanShiGongGao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView runat="server" 
    AutoGenerateColumns="False" AllowPaging="true" PageSize="4"
        onrowdeleting="GridView1_RowDeleting1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1" ID="GridView1" 
        onrowdatabound="GridView1_RowDataBound" Width="100%" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="id" />
            <asp:BoundField DataField="Title" FooterText="标题" HeaderText="标题" />
            <asp:BoundField DataField="Substance" HeaderText="内容" />
            <asp:BoundField DataField="Time" DataFormatString="{0:d}" HeaderText="时间" />
            <asp:CommandField ShowSelectButton="True" HeaderText="编辑" SelectText="编辑" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <div>
    
    </div>
    <asp:Button ID="Button1" CssClass="
btn btn-primary btn-md" runat="server" onclick="Button1_Click" Text="添加新公告" />
  </asp:Content>
