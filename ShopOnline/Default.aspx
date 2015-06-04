<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList runat="server" ID="dlhistory" onitemcommand="dlhistory_OnItemComand">
  
    <ItemTemplate>
    
    <table width="500px">
  
    <tr>
    <td width="80px"><asp:LinkButton runat="server" CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>> <asp:Image runat="server" Width="50px" Height="75" ImageUrl = <%#DataBinder.Eval(Container.DataItem,"Pic")%> /></asp:LinkButton></td>
    <td align="left" width="200px"><asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton></td>
    <td align="center">
     <%#(DataBinder.Eval(Container.DataItem, "Num").ToString())%>
    </td>
    <td align="center">
    <%#(DataBinder.Eval(Container.DataItem,"TotalPrice").ToString()) %>
    </td>
    </tr>
    </table>
    </ItemTemplate>
    </asp:DataList>
    </div>
    </form>
</body>
</html>
