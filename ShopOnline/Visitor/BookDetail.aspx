<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Visitor/VisitorMasterPage.master" CodeFile="BookDetail.aspx.cs" Inherits="Visitor_BookDetail" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="css/product_xiangqing.css" rel="stylesheet" />
	<script src="js/product_xiangqing.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID=ContentPlaceHolder runat="server">
  
    <div id="content">
<div class="detail">
			<div class="tab-l">
                <span class="bigImg1"><asp:Image ID="pic" Height="300" Width="200px" runat="server" /></span>
			</div>
			<div class="tab-r">
				<h2>&nbsp;</h2>
				<ul>
                <li>
						<span class="ShuMing_q">书&nbsp;&nbsp;&nbsp; 名：</span>
					    <span class="ShuMing_m"><asp:Label ID="labbookname" runat="server" Text="Label"></asp:Label></span>
					</li>
					<li>
						<span class="ShuMing_q">商 城 价：</span>
                         <span class="ShuMing_m" style="color:Red;"><span>￥</span> <asp:Label ID="labprice" runat="server" Text="Label"></asp:Label></span>
					&nbsp;</li>
					<li>
						<span class="ShuMing_q">作&nbsp;&nbsp;&nbsp; 者：</span>
					    <span class="ShuMing_m"><asp:Label ID="labauthor" runat="server" Text="Label"></asp:Label></span>
					</li>
					
					<li>
						<span class="ShuMing_q">简&nbsp;&nbsp;&nbsp; 介：</span>
                        <div class="JianJie"><asp:Label ID="labsummary" runat="server" Text="Label"></asp:Label></div> 
					</li>
					<li>
						<span class="xq_mc"></span><span><a href="#"></a></span>
					</li>
					<div style="clear:both;"></div>
				</ul>
				<div class="buychoose">
					<!--div class="buy_peisong"><span></span><span style="margin-left:8px;"></span></div-->
					<!--div class="buy_peisong"><span></span><span></span></div-->
					<div class="choosebtn">
						<div class="buybtn">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="TuPian/QQ20141021141245.jpg" onclick="ImageButton2_Click" />
                        </div>
						<div class="cartbtn">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="TuPian/QQ20141021141345.jpg" onclick="ImageButton1_Click" /></div>
					</div>
				</div>
				<p class="buyzhuyi"></span></p>
			</div>
			<div style="clear:both;"></div>
		</div>
        </div>

    <div style="clear:both;">
    </div>
</asp:Content>