<%@ Page Language="C#"  MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="HouTai_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr><td>选择订单类型：<asp:DropDownList ID="DropDownList1" runat="server" 
            AutoPostBack="true" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>所有订单</asp:ListItem>
            <asp:ListItem>未发货</asp:ListItem>
            <asp:ListItem>已确认收货</asp:ListItem>
            <asp:ListItem>已完成订单</asp:ListItem>
        </asp:DropDownList>
        </td><td></td></tr>
    <tr><td> 
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Width="100%" 
            AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="ID" />
            <asp:BoundField DataField="ReceiverName" HeaderText="收货人姓名" />
            <asp:BoundField DataField="ReceiverPhone" HeaderText="收货人电话" />
            <asp:BoundField DataField="ReceiverAddress" HeaderText="收货人地址" />
            <asp:BoundField DataField="OrderDate" HeaderText="订单时间" />
          
            <asp:CommandField SelectText="删除" ShowSelectButton="True" />
          
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
        </asp:GridView></td></tr>
        <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Width="100%" 
                onselectedindexchanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="orderid" HeaderText="ID" />
                    <asp:BoundField DataField="ReceiverName" HeaderText="收货人姓名" />
                    <asp:BoundField DataField="ReceiverPhone" HeaderText="收货人电话" />
                    <asp:BoundField DataField="ReceiverAddress" HeaderText="收货人地址" />
                    <asp:BoundField DataField="OrderDate" HeaderText="订单时间" />
                    <asp:CommandField HeaderText="发货" SelectText="发货" ShowSelectButton="True" />
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
        
        
        </td>
        
        </tr>
    </table>
       
    
   </asp:Content>
