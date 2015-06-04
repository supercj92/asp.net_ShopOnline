<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Goods.aspx.cs" Inherits="HouTai_Goods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
   
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" DataKeyNames="BookID" AllowPaging="True"  PageSize="4"
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" 
                    SortExpression="BookName" />
                <asp:BoundField DataField="BookIntroduce" HeaderText="BookIntroduce" 
                    SortExpression="BookIntroduce" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="IsPop" HeaderText="IsPop" SortExpression="IsPop" />
                <asp:BoundField DataField="IsDiscount" HeaderText="IsDiscount" 
                    SortExpression="IsDiscount" />
                <asp:BoundField DataField="Pic" HeaderText="Pic" SortExpression="Pic" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            DeleteCommand="DELETE FROM [tb_Book] WHERE [BookID] = @BookID" 
            InsertCommand="INSERT INTO [tb_Book] ([Class], [BookName], [BookIntroduce], [Author], [Price], [IsPop], [IsDiscount], [Pic]) VALUES (@Class, @BookName, @BookIntroduce, @Author, @Price, @IsPop, @IsDiscount, @Pic)" 
            SelectCommand="SELECT * FROM [tb_Book]" 
            UpdateCommand="UPDATE [tb_Book] SET [Class] = @Class, [BookName] = @BookName, [BookIntroduce] = @BookIntroduce, [Author] = @Author, [Price] = @Price, [IsPop] = @IsPop, [IsDiscount] = @IsDiscount, [Pic] = @Pic WHERE [BookID] = @BookID">
            <DeleteParameters>
                <asp:Parameter Name="BookID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="BookIntroduce" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="IsPop" Type="Int32" />
                <asp:Parameter Name="IsDiscount" Type="Int32" />
                <asp:Parameter Name="Pic" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="BookIntroduce" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="IsPop" Type="Int32" />
                <asp:Parameter Name="IsDiscount" Type="Int32" />
                <asp:Parameter Name="Pic" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
         <div class="
btn btn-primary btn-md"> 
        <asp:Button ID="Button1"  CssClass="btn btn-primary btn-md" 
            runat="server" Text="添加新商品" onclick="Button1_Click1" /></div>
 </asp:Content>