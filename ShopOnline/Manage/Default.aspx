<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="HouTai_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="ReceiverName" HeaderText="ReceiverName" 
                SortExpression="ReceiverName" />
            <asp:BoundField DataField="ReceiverPhone" HeaderText="ReceiverPhone" 
                SortExpression="ReceiverPhone" />
            <asp:BoundField DataField="ReceiverAddress" HeaderText="ReceiverAddress" 
                SortExpression="ReceiverAddress" />
            <asp:BoundField DataField="IsSend" HeaderText="IsSend" 
                SortExpression="IsSend" />
            <asp:BoundField DataField="IsConfirm" HeaderText="IsConfirm" 
                SortExpression="IsConfirm" />
            <asp:BoundField DataField="IsPay" HeaderText="IsPay" SortExpression="IsPay" />
            <asp:BoundField DataField="IsEnd" HeaderText="IsEnd" SortExpression="IsEnd" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tb_Order]"></asp:SqlDataSource>
我是非母版页
</asp:Content>

