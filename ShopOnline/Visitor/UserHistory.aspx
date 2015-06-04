<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/UserCenter.master" AutoEventWireup="true" CodeFile="UserHistory.aspx.cs" Inherits="Visitor_UserHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:50px;width:900px;text-align:center;font-size:22px;"    >
        <tr>
            <td>书名</td>
            <td>数量</td>
            <td align="left">总价</td>
           <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>
    <asp:DataList runat="server" ID="dlhistory" onitemcommand="dlhistory_OnItemComand">
  
    <ItemTemplate>
    
    <table width="900px" border="0" style=" border:1px solid #FF0000;">
  
    <tr>
    <td width="80px"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>> <asp:Image ID="Image1" runat="server" Width="50px" Height="75" ImageUrl = <%#DataBinder.Eval(Container.DataItem,"Pic")%> /></asp:LinkButton></td>
    <td align="left" width="200px"><asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton></td>
    <td align="center">
     <%#(DataBinder.Eval(Container.DataItem, "Num").ToString())%>
    </td>
    <td align="center">
    <%#(DataBinder.Eval(Container.DataItem,"TotalPrice").ToString()) %>
    </td>
    <td style="text-align:center;" >
        <asp:LinkButton ID="lbdelete" CommandName="delete" CommandArgument=<%#DataBinder.Eval(Container.DataItem, "BookID")%> runat="server">删除</asp:LinkButton>   </td>
    </tr>
   
    </table>
    </ItemTemplate>
    </asp:DataList>
</asp:Content>

