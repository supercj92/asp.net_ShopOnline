<%@ Page Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="Visitor_NewsDetail" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
<link href="css/GongGao.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">

<div class="content">
    	<div class="BiaoTi">
        	<asp:Label ID="lbtitle" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="NeiRong">
          <div class="RiQi"><asp:Label ID="lbtime" runat="server" Text="Label"></asp:Label></div> 
       	  <div class="XiangQing"><asp:Label ID="lbcontent" runat="server" Text="Label"></asp:Label></div>
        </div>
    </div>
</asp:Content>