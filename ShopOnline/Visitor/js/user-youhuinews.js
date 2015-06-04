// JavaScript Document
window.onload=function (){
	var s_nav=document.getElementsByClassName("youhui-nav")[0].getElementsByTagName("span");
	var s_ul=document.getElementsByClassName("youhui-show")[0].getElementsByTagName("ul");
	s_nav[0].style.background="#ccc";
	for(var i=0;i<s_nav.length;i++){
		s_nav[i].index=i;
		s_nav[i].onclick=function (){
			for(var i=0;i<s_nav.length;i++) {
				s_nav[i].style.background="";
			}
			this.style.background="#ccc";
			for(var i=0;i<s_nav.length;i++) {
				s_ul[i].style.display="none";
			}
			s_ul[this.index].style.display="block";
		};
	}
}