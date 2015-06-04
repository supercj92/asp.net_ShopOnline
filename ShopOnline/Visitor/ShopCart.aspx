<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Visitor/UserCenter.master" CodeFile="ShopCart.aspx.cs" Inherits="Visitor_ShopCart" %>
<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table style=" font-size: 9pt; font-family: 宋体; width:574px;; background-repeat :no-repeat; background-image: url(images/显示页面当前位置.jpg);">
			<tr>
			<td style ="height :20px" valign="middle" align="left">
                <br /><br />&nbsp; 目前位置：我的购物车</td>
			</tr>
			<tr>
			<td valign =top style ="" >
						<table cellSpacing="0" cellPadding="0" width="95%" align="center" border="0" style="FONT-SIZE: 9pt">
						     <tr>
						     <td align="center">
                                <asp:Label ID="labMessage" runat="server" Visible="False"></asp:Label></td>
							</tr>
							<tr>
						     <td align="left" style="height: 30px">
                                </td>
							</tr>
							<tr style =" font :9pt; font-family :宋体;"  valign =top >
							<td align="left" style="height: 135px;">
							
							 <asp:GridView ID="gvShopCart" DataKeyNames ="BookID"   runat="server"  
                                    AutoGenerateColumns="False"  AllowPaging="True" 
                                    OnPageIndexChanging="gvShopCart_PageIndexChanging" CellPadding="4" 
                                    ForeColor="#333333" GridLines="None" Width="100%" >
                                 <Columns>
                                     <asp:BoundField DataField="No" HeaderText="序号" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                      <asp:BoundField DataField="BookID" HeaderText="商品ID" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>                                    
                                     <asp:BoundField DataField="BookName" HeaderText="商品名称" ReadOnly="True">
                                      <ItemStyle HorizontalAlign="Center" />
                                      <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                     <asp:TemplateField HeaderText="数量">
                                    <ItemTemplate >
                                       <asp:TextBox ID="txtNum" runat="server" Text =<%#Eval("Num") %> Width =60px  OnTextChanged="txtNum_TextChanged"></asp:TextBox>
                                       <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum"
                                ErrorMessage="×" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
                                </ItemTemplate>
                                </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText =单价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                            <%#Eval("price")%>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                    <asp:TemplateField HeaderText =总价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                            <%#Eval("totalPrice")%>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                     <asp:TemplateField>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                             <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument ='<%#Eval("BookID") %>' OnCommand ="lnkbtnDelete_Command">删除</asp:LinkButton>
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                     
                                 </Columns>
                                 <EditRowStyle BackColor="#999999" />
                                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                 <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
							</td>
							</tr>
							<tr align =left valign =top  >
								<td align="center"  >
                                   
                                    &nbsp
                                      
                                    
									</td>
							</tr>
							<tr>
							<td align="left"  >
                                <br />
                                &nbsp;<li>如果要修改商品数量，请单击“更新购物车”按钮 &nbsp;&nbsp;&nbsp;</li>&nbsp;<li>如果要取消某个商品，请直接单击表格控件中的“删除”
                            <br />
                            </li>
                            </td>
							</tr>
						</table>
			</td>
			</tr>
			</table>
            <div class="car-jiesuan">
					<div class="car-jiesuan-qx"><input id="js_quanxuan" type="checkbox">全选</div>
					<div class="car-jiesuan-cz">
						 <asp:LinkButton ID="lnkbtnUpdate" runat="server" OnClick="lnkbtnUpdate_Click">更新购物车</asp:LinkButton>
						<asp:LinkButton ID="lnkbtnClear" runat="server" OnClick="lnkbtnClear_Click" >清空购物车</asp:LinkButton>
						<asp:LinkButton ID="lnkbtnContinue" runat="server" OnClick="lnkbtnContinue_Click" >继续购物</asp:LinkButton>
                      
					</div>
					<div class="car-jiesuan-hj">
						<span>合计(包含运费)：</span><span id="money_num"><span><asp:Label ID="labTotalPrice" runat="server" Text="0.00 " ></asp:Label></span> </span>
					</div>
					<div class="car_click">  <asp:LinkButton ID="lnkbtnCheck" runat="server" OnClick="lnkbtnCheck_Click" >结算</asp:LinkButton></div>
				</div>
    </div>
   </asp:Content>