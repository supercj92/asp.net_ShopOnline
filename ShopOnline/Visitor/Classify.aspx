<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterPage.master" AutoEventWireup="true" CodeFile="Classify.aspx.cs" Inherits="Visitor_Classify" %>

<%-- 在此处添加内容控件 --%>
<asp:Content runat="server" ContentPlaceHolderID="head">

<link href="css/product_tese.css" rel="stylesheet" />
	<script src="js/move_wanmei.js"></script>
	<script src="js/product_tese.js"></script>
    <link href="css/XinShuQiang.css" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder">

<div id="content">
		
        <div >
        <asp:Image ID="imgbanner" Height="300px" Width="1080px" runat="server"  />
        	
        </div>
		<div class="content_l">
			<div class="nav-list">
				<p><span>类别：</span><a href="Classify.aspx?type=7&sign=common">不限</a><a href="Classify.aspx?type=3&sign=common">文学</a><a href="Classify.aspx?type=9&sign=common">哲学</a><a href="Classify.aspx?type=8&sign=common">编程</a><a href="Classify.aspx?type=4&sign=common">小说</a>
			</div>
			<div class="product">
				<div class="product_t">
					<span>排序：</span>
					<ul>
						<li>默认</li>
						<li>好评</li>
						<li>销量</li>
						<li>价格</li>
					</ul>
					
				</div>
				<div class="book_k">
                <asp:DataList ID="dllite" runat="server" RepeatColumns="4" 
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
               <table>
               <tr>
               <td>
               <asp:LinkButton ID="LinkButton1" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
               <asp:Image ID="Image1"  runat="server" Height="180px" Width="120px" ImageUrl=<%#DataBinder.Eval(Container.DataItem,"pic")%>/>
              </asp:LinkButton>
               </td>
               <td width="50px"></td>
               </tr>
               <tr>  
               <td> 
             <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
               </td>
               <td width="50px"></td>
               </tr>

               <tr>
               <td class="JiaGe">
             价格：  <%#(DataBinder.Eval(Container.DataItem, "Price").ToString())%>￥
               </td>
               <td width="50px"></td>
               </tr>
               <tr>
               <td height="10px">
               <td width="50px"></td>
               </td>
               </tr>
               </table>
            </ItemTemplate>
        </asp:DataList>
        </div>
			</div>
		</div>
		<div class="content_r">
			<div class="r_show">
				<div class="show_text"><h3>特色推荐</h3></div>
                <div class="r_book">
				<asp:DataList ID="DataList1" runat="server" RepeatColumns="1" 
            RepeatDirection="Vertical" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
               <table>
               <tr>
               <td rowspan="3" class="Tu">
               <asp:LinkButton ID="LinkButton1" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
               <asp:Image ID="Image1"  runat="server" Height="150px" Width="100px" ImageUrl=<%#DataBinder.Eval(Container.DataItem,"pic")%>/>
              </asp:LinkButton>
               </td>
               <td width="50px" height="30px"></td>
               </tr>
               <tr>  
                 <td width="50px" class="XinXi">
                     <asp:LinkButton ID="lnkbtnDName" runat="server" 
                         CommandArgument='<%#DataBinder.Eval(Container.DataItem, "BookID")%>' 
                         CommandName="detailSee" Font-Underline="false">
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
                   </td>
               </tr>

               <tr>
                 <td width="50px" class="JiaGe">
                   价格：  <%#(DataBinder.Eval(Container.DataItem, "Price").ToString())%>￥
                 </td>
               </tr>
               
               </table>
            </ItemTemplate>
        </asp:DataList>
        </div>
			</div>
			
		</div>
		<div style="clear:both;"></div>
		<div class="mall_fuwu">
			<div class="fuwu_img">
				<img src="TuPian/20141003001551.jpg" />
			</div>
			<div class="fuwu_show">
				<dl>
					<dt>新手指南</dt>
					<dd>
						<a href="#">免费注册</a>
					</dd>
					<dd>
						<a href="#">怎样购买</a>
					</dd>
					<dd>
						<a href="#">帮助中心</a>
					</dd>
				</dl>
				<dl>
					<dt>支付/配送</dt>
					<dd>
						<a href="#">在线支付</a>
					</dd>
					<dd>
						<a href="#">配送说明</a>
					</dd>
				</dl>
				<dl>
					<dt>服务保障</dt>
					<dd>
						<a href="#">正品保障</a>
					</dd>
					<dd>
						<a href="#">退款保障</a>
					</dd>
				</dl>
				<dl>
					<dt>商家服务</dt>
					<dd>
						<a href="#">招商范围</a>
					</dd>
					<dd>
						<a href="#">了解商城</a>
					</dd>
					<dd>
						<a href="#">商家后台</a>
					</dd>
				</dl>
			</div>
			<div class="fuwu_call">
				<img src="TuPian/20141003002222.jpg" />
				<p>400-800-8888</p>
			</div>
		</div>
	</div>
</asp:Content>