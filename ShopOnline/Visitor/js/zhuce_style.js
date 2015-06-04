// JavaScript Document
// JS验证码
$(function(){
		//加载页面时，执行一次验证码
		getValidate();
		$(".validateShow").click(function(){
			//重新获取验证码
			getValidate();
		});
		
		function getValidate(){
			$(".validateShow").empty();
			//获取验证码
			var validate_len = 4;
			var ValidateNum = [0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
			var code = "";
			var dom = "";
			for(var i = 0;i<validate_len;i++){
				code = code + ValidateNum[parseInt(Math.random()*(ValidateNum.length))];
			}
			//$(".validateShow").html(code);非图片验证码
			//图片验证码
			for(var i = 0;i<validate_len;i++){
				dom += "<b style='color:"+ getRandomColor() +"'>"+ValidateNum[parseInt(Math.random()*(ValidateNum.length))]+"</b>";
			}
			$(dom).appendTo($(".validateShow"));
		}
		
		//获取随机的颜色
		function getRandomColor(){
			var color=new Array("0","3","6","9","C","F");
			var fColor = "";
			for(var i=0;i<color.length;i++){
				fColor += color[parseInt(Math.random()*6)];
			}
			return "#"+fColor;
		}	
		//邮箱校验
		email.onblur=function (){
			var ar=/^\w+@[a-z0-9]+\.[a-z]+$/i;
			var email=document.getElementById("email");
			var email_tishi=document.getElementById("email_tishi");
			if(email.value==""){
				email_tishi.innerHTML="请输入";
				document.zhuce_form.email.focus();
			}else if(ar.test(email.value)){
				email_tishi.innerHTML="正确";
			}else {
				email_tishi.innerHTML="错误";
				document.zhuce_form.email.focus();
			}
			
		}
		//密码校验
		password1.onblur=function (){
			var ar=/^\w+@[a-z0-9]+\.[a-z]+$/i;
			var password1=document.getElementById("password1");
			var mima_tishi1=document.getElementById("mima_tishi1");
			if(password1.value==""){
				mima_tishi1.innerHTML="请输入";
				document.zhuce_form.password1.focus();
			}else if(password1.value.length<6 || password1.value.length>18){
				mima_tishi1.innerHTML="6-18位";
				document.zhuce_form.password1.focus();
			}else {
				mima_tishi1.innerHTML="正确";
			}
			
		}
		//确认密码校验
		password2.onblur=function (){
			var ar=/^\w+@[a-z0-9]+\.[a-z]+$/i;
			//var password2=document.getElementById("password2");
			var mima_tishi2=document.getElementById("mima_tishi2");
			if(password2.value==""){
				mima_tishi2.innerHTML="请输入";
				document.zhuce_form.password2.focus();
			}else if(password1.value==password2.value){
				mima_tishi2.innerHTML="正确";
			}else {
				mima_tishi2.innerHTML="不一致";
				document.zhuce_form.password2.focus();
			}
			
		}
		//提交前的最后校验
		document.getElementById("zh_btn").onclick=function (){
			var validateNum=document.getElementById('validateNum');
			var validateShow=document.getElementsByClassName('validateShow')[0];
			var validateShowNum=validateShow.getElementsByTagName('b');
			var vNum="";
			for(var i=0;i<validateShowNum.length;i++){
				vNum+=validateShowNum[i].innerHTML;
			}
		    if(validateNum.value!=vNum.toLowerCase(vNum)){
				alert ("验证码错误");
				return false;
			}else{
				return true;
			}
			if(email_tishi.innerHTML=="正确" && mima_tishi1.innerHTML=="正确" && mima_tishi2.innerHTML=="正确"){
				return false;
			}else {
				return true;
			}
			if(document.getElementById("xieyi").checked){
    			return true;
			}else {
				alert ("请阅读并同意服务协议");
			}
		};
})