// JavaScript Document
//获取css类对象----未成品
function getByClass(aclass){
	var aClass=document.getElementsByClassName(aclass);
	return aClass;
}
//搜索款处的选项卡
function QHselect(aSelect){
	var so_select=document.getElementById(aSelect);
	so_select.onmouseover=function (){
		this.style.overflow="visible";	
	};
	so_select.onmouseout=function (){
		this.style.overflow="hidden";	
	};
}

//轮播图
function lunbo(){
	var i_lb=getByClass('i-lunbo')[0];
	var lunboC=i_lb.getElementsByClassName('lunboContent')[0];
	var lunbo_ul=document.getElementById('i_lunbo_btn');
	var lunbo_btn=lunbo_ul.getElementsByTagName('li');
	var cur=lunbo_btn[0],tim;
	for(var i=0;i<lunbo_btn.length;i++){
		lunbo_btn[i].index=i;
		lunbo_btn[i].onmouseover=function (){
			startMove(lunboC,{top:-this['index']*300});
			for(var i=0;i<lunbo_btn.length;i++){
				lunbo_btn[i].className='';
			}
			this.className='hover';
			cur=this;
		};
	}
	lunbo_btn.onmouseover=lunboC.onmouseover=lunbo_ul.onmouseover=function (){
		clearInterval(tim);
	};
	lunboC.onmouseout=function (){
		tim=setInterval(fnLB,4000);
	};
	tim=setInterval(fnLB,4000);
	lunbo_btn[0].className='hover';
	function fnLB(){
		var Next_index=cur.index+1;
		if(Next_index>=lunbo_btn.length) Next_index=0;
		lunbo_btn[Next_index].onmouseover();
	}
	
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

//主函数
window.onload=function (){
	QHselect('so_select');
	lunbo();
	getTop();
}