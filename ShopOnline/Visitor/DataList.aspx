<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataList.aspx.cs" Inherits="Visitor_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
               <table>
               <tr>
               <td>
               <asp:LinkButton runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
               <asp:Image  runat="server" Height="147px" Width="100px" ImageUrl=<%#DataBinder.Eval(Container.DataItem,"pic")%>/>
              </asp:LinkButton>
               </td>
               </tr>
               <tr>  
               <td> 
             <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
               </td>
               </tr>

               <tr>
               <td>
             价格：  <%#(DataBinder.Eval(Container.DataItem, "Price").ToString())%>￥
               </td>
               
               </tr>
               
               </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
