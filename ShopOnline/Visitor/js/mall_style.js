// JavaScript Document
//获取css类对象----未成品
function getByClass(aclass){
	var aClass=document.getElementsByClassName(aclass);
	return aClass;
}

/*//搜索款处的选项卡
function QHselect(aSelect){
	var so_select=document.getElementById(aSelect);
	so_select.onmouseover=function (){
		this.style.overflow="visible";	
	};
	so_select.onmouseout=function (){
		this.style.overflow="hidden";	
	};
}*/

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

//轮播图
function mall_lunbo(){
	var oDiv=document.getElementsByClassName('mall_fenlei_lunbo')[0];
	var oUl=oDiv.getElementsByTagName('ul')[0];
	var oLi=oUl.getElementsByTagName('li');
	var iLeft=document.getElementById('img-left');
	var iRight=document.getElementById('img-right');
	var iLeftimg=iLeft.getElementsByTagName('img')[0];
	var iRightimg=iRight.getElementsByTagName('img')[0];
	var timer2=null;
	oUl.innerHTML=oUl.innerHTML+oUl.innerHTML;
	oUl.style.width=oLi[0].offsetWidth*oLi.length+'px';
	iLeft.onclick=function (){
		clearInterval(timer2);
		timer2=setInterval(function (){	
			if(oUl.offsetLeft==0){
				oUl.style.left='-2400px';
			}else{
				oUl.style.left=oUl.offsetLeft+20+'px';
				if(oUl.offsetLeft%600==0){
					clearInterval(timer2);
				}
			}
		},10);
	};
	iRight.onclick=function (){
		clearInterval(timer2);
		timer2=setInterval(function (){	
			if(oUl.offsetLeft<-oUl.offsetWidth/2){
				oUl.style.left='0px';
			}else{
				oUl.style.left=oUl.offsetLeft+-20+'px';		
				if(oUl.offsetLeft%600==0){
					clearInterval(timer2);
				}
			}
		},10);
	};
	for(var i=0;i<oLi.length;i++){
		iRight.onmouseover=iLeft.onmouseover=oLi[i].onmouseover=function (){
			startMove(iLeftimg,{'opacity':'90'});
			startMove(iRightimg,{'opacity':'90'});
		};
		iRight.onmouseout=iLeft.onmouseout=oLi[i].onmouseout=function (){
			startMove(iLeftimg,{'opacity':'0'});
			startMove(iRightimg,{'opacity':'0'});
		};
	}
	var timer=setInterval(iRight.onclick,2000);  //自动轮播
	oDiv.onmouseover=function (){
		clearInterval(timer);
	};
	oDiv.onmouseout=function (){
		timer=setInterval(iRight.onclick,2000);
	};
}

//分类
function mall_fenlei(){
	var list_menu=document.getElementsByClassName('list_menu')[0];
	var l_menu_u=list_menu.getElementsByTagName('ul')[0];
	var l_menu_l=l_menu_u.getElementsByTagName('li');
	var l_menu_r=document.getElementsByClassName('list_menu_r');
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

//选项卡切换
function mall_qiehuan(){
	var nav_l_t=document.getElementsByClassName('nav_l_t')[0];
	var nav_u=nav_l_t.getElementsByTagName('ul')[0];
	var nav_l=nav_u.getElementsByTagName('li');
	var nav_show=document.getElementsByClassName('nav_l_b_show');
	nav_l[0].style.color='red';
	nav_l[0].style.borderColor='red';
	nav_show[0].style.display='block';
	for(var i=0;i<nav_l.length;i++){
		nav_l[i].index=i;
		nav_l[i].onmouseover=function (){
			for(i=0;i<nav_l.length;i++){
				nav_l[i].style.color='black';
				nav_l[i].style.borderColor='#CCC';
				nav_show[i].style.display='none';
			}
			nav_show[this.index].style.display='block';
			this.style.color='red';
			this.style.borderColor='red';
		};
	}
}

//主函数
window.onload=function (){
	/*QHselect('so_select');*/
	getTop();
	
	mall_lunbo();
	mall_fenlei();
	mall_qiehuan();
}
