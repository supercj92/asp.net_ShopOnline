// JavaScript Document
// JS验证码
window.onload=function (){
	var btn=document.getElementById("submitBtn");
	var email=document.getElementById("email");
	var phone=document.getElementById("phone");
	var e_span=document.getElementById("e_span");
	var p_span=document.getElementById("p_span");
	email.onblur=function (){
		var ar=/^\w+@[a-z0-9]+\.[a-z]+$/i;
		
		if(email.value==""){
			e_span.innerHTML="无效邮箱";
			document.ziliaoForm.email.focus();
		}else if(ar.test(email.value)){
			e_span.innerHTML="正确";
		}else {
			e_span.innerHTML="无效邮箱";
			document.ziliaoForm.email.focus();
		}
		
	};
	phone.onblur=function (){
		if(phone.value==""){
			p_span.innerHTML="请输入正确的手机号码";
			document.ziliaoForm.phone.focus();
		}else if(phone.value.length=="11"){
			p_span.innerHTML="正确";
		}else {
			p_span.innerHTML="请输入正确的手机号码";
			document.ziliaoForm.phone.focus();
		}
	};
	btn.onclick=function (){
		if(e_span.innerHTML=="正确" && p_span.innerHTML=="正确"){
			return true;
		}else {
			alert ("请认真填写个人资料");
			return false;
		}
	};
}