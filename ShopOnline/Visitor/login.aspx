<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="HouTai_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>用户登录</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">会员登录</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="#" method="post" >				
		       <form runat="server"> 
                <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
                         <asp:TextBox ID="uid" CssClass="form-control" placeholder="用户名"   runat="server"></asp:TextBox>  
		            	
		            </div>		            	
                               
		          </div>              
		            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="uid" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	
                          <asp:TextBox ID="pwd"  CssClass="form-control" placeholder="密码" 
                            runat="server" TextMode="Password"></asp:TextBox>


		            </div>
		          </div>
		            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="pwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
	             	<div class="checkbox control-wrapper">
                         <asp:Label ID="Label1" runat="server"></asp:Label>
	              	</div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		
                          <asp:Button ID="Button1" CssClass="btn btn-info"   runat="server" Text="登陆" 
                              onclick="Button1_Click" />

		          		 <a href="Register.aspx" class="pull-right">注册</a>
		          	</div>
		          </div>
		        </div>
		        <hr>
		        <div class="form-group">
		        	<div class="col-md-12">
		        		<label></label>
		        		<div class="inline-block">
		        			
		        		</div>		        		
		        	</div>
		        </div>
                </form>
		      </form>
		      <div class="text-center">
		      	<a href="create-account.html" class="templatemo-create-new"> </a>	
		      </div>
		</div>
	</div>
</body>
</html>
