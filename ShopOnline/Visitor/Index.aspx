<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Visitor/VisitorMasterPage.master" CodeFile="Index.aspx.cs" Inherits="Visitor_Index" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<link href="css/mall_style.css" rel="stylesheet" />
	<script src="js/move_wanmei.js"></script>
	<script src="js/mall_style.js"></script>

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="content">
		<div class="now_address">
			
		</div>
		<div class="content_fenlei_list">
			<div class="list_menu">
				<div class="list_menu_top">
					<ul>
						<li style="background:url('TuPian/chaye1.jpg')"><a href="#">哲学</a></li>
						<li style="background:url('TuPian/liangyou1.jpg')"><a href="#">经济</a></li>
						<li style="background:url('TuPian/yangsheng1.jpg'); text-indent:10px;"><a href="#">文学</a></li>
						<li style="background:url('TuPian/haiwei1.jpg')"><a href="#">艺术</a></li>
						<li style="background:url('TuPian/lingshi1.jpg')"><a href="#">历史/地理</a></li>
						<li style="background:url('TuPian/shuiguo1.jpg')"><a href="#">医药/卫生</a></li>
						<li style="background:url('TuPian/danlei1.jpg')"><a href="#">生物科学</a></li>
						<li style="background:url('TuPian/shucai1.jpg')"><a href="#">计算机技术</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/chaye2.jpg')">
					<span>哲学思想</span>
					<br />
					<br />
					<ul>
						<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/liangyou2.jpg')">
					<span>学术经济</span>
					<br />
					<br />
					<ul>
						<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/yangsheng2.jpg')">
					<span>文学名著</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/haiwei2.jpg')">
					<span>文艺艺术</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/lingshi2.jpg')">
					<span>历史地理</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/shuiguo2.jpg')">
					<span>医药卫生</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/danlei2.jpg')">
					<span>生物科学</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
				<div class="list_menu_r" style="background:url('TuPian/shucai2.jpg')">
					<span>科学技术</span>
					<br />
					<br />
					<ul>
					<li><a href="Classify.aspx?type=9&sign=common">世界哲学</a></li>
						<li><a href="Classify.aspx?type=4&sign=common">小说</a></li>
						
						
						<li><a href="Classify.aspx?type=11&sign=common">戏剧</a></li>
						<li><a href="Classify.aspx?type=3&sign=common">文学</a></li>
						<li><a href="Classify.aspx?type=10&sign=common">散文</a></li>
					</ul>
				</div>
			</div>
			<div class="mall_fenlei_lunbo">
				<div id="img-left">
					<img src="TuPian/prev.png" />
				</div>
					<ul>
						
						
						<li><a href="Classify.aspx?type=5&sign=33"><img src="TuPian/20141012233.jpg" /></a></li>
						<li><a href="Classify.aspx?type=6&sign=31"><img src="TuPian/20141012231.jpg" /></a></li>
                        <li><a href="Classify.aspx?type=7&sign=32"><img src="TuPian/20141012232.jpg" /></a></li>
					</ul>
				<div id="img-right">
					<img src="TuPian/next.png" />
				</div>
			</div>
			<div class="mall_gonggao">
				<div class="mall_gonggao_t">
					<div class="t_ptgonggao">
					  <h3>书店公告</h3></div>
					<div class="t_ptgonggao_show">
					<asp:Datalist ID="dlnews" runat="server" Width="100%"  >       
            <HeaderTemplate>
                <table  width=100%>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                <td align="left">·
                    <asp:HyperLink Text=<%#Eval("Title")%>  runat="server" ID="HyperLink1" NavigateUrl='<%# "./NewsDetail.aspx?ID="+ Eval("ID")%>'> </asp:HyperLink>
                </td>
                <td align="right"><%# Eval("Time") %></td>          
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Datalist>
					</div>
				</div>
				<div class="mall_gonggao_login">
					<ul>
						<li style="margin-right:10px;"><a href="Register.aspx" ><div>注册</div> </a></li>
						<li><a href="login.aspx" ><div>登陆</div></a></li>
					</ul>
				</div>
				<div class="mall_gonggao_b">
					<a href="#"><img src="TuPian/syad.jpg" /></a>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="content_tese">
			<div class="content_nav_l">
				<div class="nav_l_t">
					<ul>
						<li>热卖速递</li>
						<li>本月推荐</li>
					</ul>
				</div>
				<div class="nav_l_b">
					<div class="nav_l_b_show">
					<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
               <table>
               <tr>
               <td>
               <asp:LinkButton ID="LinkButton1" runat="server" CommandName="detailSee"  Font-Underline=false 

CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
               <asp:Image ID="Image1"  runat="server" Height="220px" Width="140px" ImageUrl=<%#DataBinder.Eval

(Container.DataItem,"pic")%>/>
              </asp:LinkButton>
               </td>
               <td width="50px"></td>
               </tr>
               <tr>  
               <td> 
             <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false 

CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
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
               
               </table>
            </ItemTemplate>
        </asp:DataList>

					</div>
					<div class="nav_l_b_show">
						<asp:DataList ID="DataList2" runat="server" RepeatColumns="4" 
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
               <table
               <tr>
               <td widht="40px">&nbsp;
               </td>
               <td>
               <asp:LinkButton ID="LinkButton1" runat="server" CommandName="detailSee"  Font-Underline=false 

CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
               <asp:Image ID="Image1"  runat="server" Height="220px" Width="140px" ImageUrl=<%#DataBinder.Eval

(Container.DataItem,"pic")%>/>
              </asp:LinkButton>
               </td>
               <td width="50px"></td>
               </tr>
               <tr>
               <td></td>  
               <td> 
             <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false 

CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
               </td>
                <td width="50px"></td>
               </tr>

               <tr>
               <td>
               </td>
               <td class="JiaGe">
             价格：  <%#(DataBinder.Eval(Container.DataItem, "Price").ToString())%>￥
               </td>
                <td width="50px"></td>
               </tr>
               
               </table>
            </ItemTemplate>
        </asp:DataList>

					</div>
				</div>
			</div>
			<div class="content_nav_r">
				<a href="BookDetail.aspx?id=42"><img src="TuPian/141136505183651661.jpg" /></a>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="shop_fenlei">
			<div class="shop_fenlei_var">
				<div class="var_top">
					<div class="v_top_1">1F文学经典</div>
					<div class="v_top_2">精选推荐</div>
					<div style="clear:both;"></div>
				</div>
				<div class="fenlei_var_l">
					<div class="var_l_img">
						<a href="#"><img src="TuPian/138174080978067965.jpg" /></a>
					</div>
					<div class="var_l_text">
						<p style="margin-bottom:6px;">
							<span>热销图书</span>
							<a href="#">鲁迅文选</a>
							<a href="#">鲁滨逊漂流记</a>
							<a href="#">开国大典</a>
							<a href="#">格林童话</a>
						</p>
						<p>
							<span>热销图书</span>
							<a href="#">失眠埋伏</a>
							<a href="#">以后的以后</a>
							<a href="#">鹿鼎记</a>
							<a href="#">儿童智力开发</a>
						</p>
					</div>
				</div>
				<div class="fenlei_var_c">
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
				<div class="fenlei_var_r">
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
				</div>
				<div style="clear:both;"></div>
			</div>
			<div class="shop_fenlei_var">
				<div class="var_top">
					<div class="v_top_1">2F计算机技术</div>
					<div class="v_top_2">精选推荐</div>
					<div style="clear:both;"></div>
				</div>
				<div class="fenlei_var_l">
					<div class="var_l_img">
						<a href="#"><img src="TuPian/138174080978067965.jpg" /></a>
					</div>
					<div class="var_l_text">
						<p style="margin-bottom:6px;">
							<span>热销图书</span>
							<a href="#">鲁迅文选</a>
							<a href="#">鲁滨逊漂流记</a>
							<a href="#">开国大典</a>
							<a href="#">格林童话</a>
						</p>
						<p>
							<span>热销图书</span>
							<a href="#">失眠埋伏</a>
							<a href="#">以后的以后</a>
							<a href="#">鹿鼎记</a>
							<a href="#">儿童智力开发</a>
						</p>
					</div>
				</div>
				<div class="fenlei_var_c">
					<asp:DataList ID="dlcomputer" runat="server" RepeatColumns="4" 
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
               <td height="10px"></td>
               <td width="50px"></td>
               </tr>
               </table>
            </ItemTemplate>
        </asp:DataList>
				</div>
				<div class="fenlei_var_r">
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
				</div>
				<div style="clear:both;"></div>
			</div>
			<div class="shop_fenlei_var">
				<div class="var_top">
					<div class="v_top_1">3F哲学思辨</div>
					<div class="v_top_2">精选推荐</div>
					<div style="clear:both;"></div>
				</div>
				<div class="fenlei_var_l">
					<div class="var_l_img">
						<a href="#"><img src="TuPian/138174080978067965.jpg" /></a>
					</div>
					<div class="var_l_text">
						<p style="margin-bottom:6px;">
							<span>热销图书</span>
							<a href="#">鲁迅文选</a>
							<a href="#">鲁滨逊漂流记</a>
							<a href="#">开国大典</a>
							<a href="#">格林童话</a>
						</p>
						<p>
							<span>热销图书</span>
							<a href="#">失眠埋伏</a>
							<a href="#">以后的以后</a>
							<a href="#">鹿鼎记</a>
							<a href="#">儿童智力开发</a>
						</p>
					</div>
				</div>
				<div class="fenlei_var_c">
					<asp:DataList ID="dlphil" runat="server" RepeatColumns="4" 
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
               <td height="10px"></td>
               <td width="50px"></td>
               </tr>
               </table>
            </ItemTemplate>
        </asp:DataList>
				</div>
				<div class="fenlei_var_r">
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/139956403014251637.jpg" /></a></p>
					<p><a href="#"><img src="TuPian/138010283283877125.jpg" /></a></p>
				</div>
				<div style="clear:both;"></div>
			</div>
			
			
		</div>
      
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