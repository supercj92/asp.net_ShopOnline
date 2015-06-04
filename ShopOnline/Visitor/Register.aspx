<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Visitor_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员注册</title>
    <meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">

	<h1 class="margin-bottom-15">会员注册</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" runat="server" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">用户名</label>
                          <asp:TextBox ID="tbusername" runat="server" CssClass="form-control"></asp:TextBox>

			           	            		            		            
			              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                              ControlToValidate="tbusername" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>

			           	            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">昵称</label>

                          <asp:TextBox ID="tbnikename" runat="server" CssClass="form-control"></asp:TextBox>
			           	            		            		            
			              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ControlToValidate="tbpassword" ErrorMessage="昵称不能为空"></asp:RequiredFieldValidator>
			           	            		            		            
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">邮箱</label>
                          <asp:TextBox ID="tbemail" runat="server" CssClass="form-control"></asp:TextBox>

			                      		            		            
			              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                              ErrorMessage="邮箱格式不合法" 
                              ValidationExpression="^[a-zA-Z0-9]{1,}@[a-zA-Z0-9]{1,}\.(com|net|org|edu|mil|cn|cc)$" 
                              ControlToValidate="tbemail"></asp:RegularExpressionValidator>

			                      		            		            
			          </div>              
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			       <label for="username" class="control-label">地址</label>

                          <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
			          		            		            
			              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                              ControlToValidate="TextBox1" ErrorMessage="地址不能为空"></asp:RequiredFieldValidator>
			          		            		            
			          </div>
			          <div class="col-md-6 templatemo-radio-group">
			          	<label class="radio-inline">
                          
		          		</label>
		          		<label class="radio-inline">
                              <asp:RadioButtonList ID="rbsex" RepeatDirection="Vertical" runat="server" 
                              AutoPostBack="True">
                              <asp:ListItem>男</asp:ListItem>
                               <asp:ListItem>女</asp:ListItem>
                              </asp:RadioButtonList>
		          		</label>
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
                          <asp:TextBox ID="tbpassword" CssClass="form-control" runat="server"></asp:TextBox>

			           
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认密码</label>
                          <asp:TextBox ID="tbconfirmpwd" CssClass="form-control" runat="server"></asp:TextBox>

			          
			              <asp:CompareValidator ID="CompareValidator1" runat="server" 
                              ControlToCompare="tbpassword" ControlToValidate="tbconfirmpwd" 
                              ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>

			          
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
                          <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="注册用户" 
                              onclick="Button1_Click" />
			           
			            <a href="login.aspx" class="pull-right">登录</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.cssmoban.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
   
</body>
</html>
