// JavaScript Document
//获取css类对象----未成品
function getByClass(aclass){
	var aClass=document.getElementsByClassName(aclass);
	return aClass;
}



//回到顶部
function getTop(){
	var oGotop=document.getElementById('amd-gotop');
	oGotop.style.display='none';
	var oA=oGotop.getElementsByTagName('a');
	var timeScroll=null;
	window.onscroll=function (){
		var aTop=document.documentElement.scrollTop||window.pageYoffset||document.body.scrollTop;
		oA[0].onclick=function moveTop(){
			window.scrollBy(0,-50);
			timeScroll=setTimeout(moveTop,10);
			var sTop=document.documentElement.scrollTop||window.pageYoffset||document.body.scrollTop;
			if(sTop==0) clearInterval(timeScroll);
		};
		if(aTop>200)
		{
			oGotop.style.display='block';
		}else if(aTop<200){
			oGotop.style.display='none';
		}
	};
}

//延迟显示
function yanchi_show(onA,toB){
	onA.onmouseover=function (){
		toB.style.display='block';
	};
	onA.onmouseout=function (){
		toB.style.display='none';
	};
}

//购物车
function cart(){
	var s_cart=document.getElementsByClassName('shopping_cart')[0];
	var c_nav=document.getElementsByClassName('cart_nav')[0];
	yanchi_show(s_cart,c_nav);
}

//分类
function mall_fenlei(){
	var list_menu=document.getElementsByClassName('list_menu')[0];
	var l_menu_u=list_menu.getElementsByTagName('ul')[0];
	var l_menu_l=l_menu_u.getElementsByTagName('li');
	var l_menu_r=document.getElementsByClassName('list_menu_r');
	var h_b_li=document.getElementById('h_b_li');
	yanchi_show(h_b_li,list_menu);
	yanchi_show(list_menu,list_menu);
	yanchi_show(l_menu_r,l_menu_r);
	for(var i=0;i<l_menu_l.length;i++){
		l_menu_l[i].index=i;
		//yanchi_show(l_menu_l[i],l_menu_r[this['index']]);
		l_menu_l[i].onmouseover=function (){
			l_menu_r[this.index].style.display='block';
		};
		l_menu_l[i].onmouseout=function (){
			l_menu_r[this.index].style.display='none';
		};
		l_menu_r[i].onmouseover=function (){
			this.style.display='block';
		};
		l_menu_r[i].onmouseout=function (){
			this.style.display='none';
		};
	};
}

//大图显示
function showImg(){
	var bigImg=document.getElementsByClassName('bigImg1');
	var s_Img=document.getElementsByClassName('s_Img')[0].getElementsByTagName('ul')[0].getElementsByTagName('li');
	s_Img[0].style.border="2px solid red";
	for(var i=0;i<s_Img.length;i++){
		s_Img[i].index=i;
		s_Img[i].onmouseover=function (){
			for(var j=0;j<s_Img.length;j++)
			{
				s_Img[j].style.border="2px solid #ddd";
				bigImg[j].style.display="none";
			}
			this.style.border="2px solid red";
			bigImg[this.index].style.display="block";
		};
	}
}

//热销排行榜
function rexiao(){
	var h4_show=document.getElementsByClassName("h4_show");
	var att_rx=document.getElementsByClassName("att_rx");
	h4_show[0].style.display="none";
	att_rx[0].style.display="block";
	for(var i=0;i<att_rx.length;i++){
		h4_show[i].index=i;
		h4_show[i].onmouseover=function (){
			for(var j=0;j<att_rx.length;j++){
				h4_show[j].style.display="block";
				att_rx[j].style.display="none";
			}
			this.style.display="none";
			att_rx[this.index].style.display="block";
		};
	}
}

//商品详情
function uLi(){
	var r_li=document.getElementsByClassName('r_text')[0].getElementsByTagName('ul')[0].getElementsByTagName('li');
	var zheyan=document.getElementById("zheyan");
	var col1=document.getElementsByClassName("col1");
	r_li[0].style.width="123px";
	r_li[0].style.height="34px";
	r_li[0].style.border="2px solid #F00";
	col1[0].style.display="block";
	for(var i=0;i<r_li.length;i++){
		r_li[i].index=i;
		r_li[i].onclick=function (){
			for(var j=0;j<r_li.length;j++){
				r_li[j].style.width="125px";
				r_li[j].style.height="34px";
				r_li[j].style.border="0";
				col1[j].style.display="none";
			}
			r_li[this.index].style.width="123px";
			r_li[this.index].style.height="34px";
			r_li[this.index].style.border="2px solid #F00";
			zheyan.style.left=(this.index)*125+2+"px";
			col1[this.index].style.display="block";
		};
	}
	//评论区
	var pl_show_t=document.getElementsByClassName('pl_show_t')[0].getElementsByTagName('li');
	var pl_zhanshi=document.getElementsByClassName('pl_zhanshi');
	pl_show_t[0].style.background="#F00";
	pl_show_t[0].style.color="#fff";
	pl_zhanshi[0].style.display="block";
	for(var i=0;i<pl_show_t.length;i++){
		pl_show_t[i].index=i;
		pl_show_t[i].onclick=function (){
			for(var j=0;j<pl_show_t.length;j++){
				pl_show_t[j].style.background="#eee";
				pl_show_t[j].style.color="black";
				pl_zhanshi[j].style.display="none";
			}
			this.style.background="#F00";
			this.style.color="#fff";
			pl_zhanshi[this.index].style.display="block";
		};
	}
}

//主函数
window.onload=function (){
	
	getTop();
	cart();
	mall_fenlei();
	showImg();
	rexiao();
	uLi();
}
