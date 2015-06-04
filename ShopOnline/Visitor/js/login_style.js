// JavaScript Document
function setCookie(c_name,c_value){
	document.cookie=c_name+"="+escape(c_value);
}
function getCookie(c_name){
	var c_start=document.cookie.indexOf(c_name+"=");
	c_start=c_name.length+c_start+1;
	var c_end=document.cookie.indexOf(";",c_start);
	if(c_end==-1) c_end=document.cookie.length;
	var c_value=document.cookie.substring(c_start,c_end);
}
window.onload=function (){
	var name=document.getElementById("name").value;
	var password=document.getElementById("password").value;
	var form_login=document.getElementById("form_login");
	if(document.getElementById("xieyi").checked) {
		form_login.onclick=function (){
			setCookie("UserName",name);
			setCookie("UserPw",password);
		};
	}
}