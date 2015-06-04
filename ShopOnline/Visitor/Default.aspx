<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="QianTai_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--
    <link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
!-->
 <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="dlDiscount" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"   >
                    <ItemTemplate>
                        <table style=" height: 120px">
                            <tr>
                                <td rowspan="5" style="width: 29px">
                                 <asp:Image ID="imageDiscount"  runat="server"  ImageUrl =<%#DataBinder.Eval(Container.DataItem,"pic")%>/>
                                </td>
                                <td colspan="2">
                                <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
                                </td>
                                <td width="30px"></td>
                            </tr>
                            <tr height="20px">
                                <td>
                                   </td>
                                <td>
                                
                                </td>
                                 <td width="30px"></td>
                            </tr>
                            <tr height="20px">
                                <td>
                                 价格：
                                  </td>
                                <td>
                                   <%#(DataBinder.Eval(Container.DataItem, "Price").ToString())%>￥
                                </td>
                                 <td width="30px"></td>
                            </tr>
                            <tr height="20px">
                            <td></td>
                            <td></td>  
                             <td width="30px"></td>                       
                               </tr>
                             <tr>
                                <td colspan="2" >
                                   
                                    <asp:Button ID="Button1" runat="server" CssClass="
btn btn-primary btn-md" Text="添加到购物车" />
                                    </td>
                                     <td width="30px"></td>
                            </tr>
                            <tr >
                            <td height="30px"></td>
                             <td></td> <td></td> <td></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </div>
    </form>
</body>
</html>
