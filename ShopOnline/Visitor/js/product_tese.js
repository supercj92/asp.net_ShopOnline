// JavaScript Document

//延迟显示
function yanchi_show(onA,toB){
	onA.onmouseover=function (){
		toB.style.display='block';
	};
	onA.onmouseout=function (){
		toB.style.display='none';
	};
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

//购物车
function cart(){
	var s_cart=document.getElementsByClassName('shopping_cart')[0];
	var c_nav=document.getElementsByClassName('cart_nav')[0];
	yanchi_show(s_cart,c_nav);
}
//主函数
window.onload=function (){
	
	cart();
	mall_fenlei();
}