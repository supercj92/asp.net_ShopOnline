<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="HouTai_addBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table width="100%" >
    <tr><td class="style1">类别：</td> <td>
        <asp:DropDownList ID="DropDownList1" runat="server" >
        
        </asp:DropDownList>
        </td></tr>
     <tr><td class="style1">书名：</td> <td>
         <asp:TextBox ID="tbbookname" CssClass="form-control" runat="server"></asp:TextBox>
         </td></tr>
      <tr><td class="style1">作者：</td> <td>
          <asp:TextBox ID="tbauthor" CssClass="form-control" runat="server"></asp:TextBox>
          </td></tr>
       <tr><td class="style1">价格：</td> <td>
           <asp:TextBox ID="tbprice" CssClass="form-control" runat="server"></asp:TextBox>
           </td></tr>
        <tr><td class="style1">推荐：</td> <td>
            <asp:CheckBox ID="ispop" runat="server" />
            </td></tr>
         <tr><td class="style1">热卖：</td> <td>
             <asp:CheckBox ID="isdisc" runat="server" />
             </td></tr>
          <tr><td class="style1">图片：</td> <td>
              <asp:FileUpload ID="FileUpload1" runat="server" />
              </td></tr>
           <tr><td class="style1">简介：</td> <td>
               <asp:TextBox ID="tbsummary" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td></tr>
    <tr><td></td><td height="100px" >
    <div class="btn btn-primary btn-md">
        <asp:Button ID="Button1" runat="server"  CssClass="btn btn-primary btn-md " 
            Text="添加新商品" onclick="Button1_Click" Height="32px" Width="133px" />
            </div>
        </td></tr>
    
    </table>


    </div>
   </asp:Content>
