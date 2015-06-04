// JavaScript Document
//加入不同的结束时间
function DaoJiShi()
{
	var endday1='oct 10,2015 20:50';
	var endday2='may 15,2015 21:40';
	showtime(endday1,'ShiLiu');
	showtime(endday2,'XueLian');
	setTimeout("DaoJiShi()",1000);//每隔1秒更新一下时间
}
//计算倒计时
function showtime(timer,daojishi)
	{	
		
		
		var today=new Date();
		var endday=new Date();
		var secsPerDay=0;
		var minPerDay=0;
		var hoursPerDay=0;
		var secsLeft=0;
		var secsRound=0;
		var secsRemain=0;
		var minLeft=0;
		var minRound=0;
		var minRemain=0;
		var hoursLeft=0;
		var hoursRound=0;
		var hoursRemain=0;
		var daysLeft=0;
		var daysRound=0;
		var daysRemain=0;
		var timeRemain=0;
		var oDJS=document.getElementById(daojishi);
		var aInp=oDJS.getElementsByTagName('input');
		endday=new Date(timer);	  //创建初始时间
		today=new Date();						  //获取当前时间
		secsPerDay=1000;						  //最终转换为毫秒
		minPerDay=1000*60;  					  //每分钟的毫秒
		hoursPerDay=60*60*1000;					  //没小时的毫秒
		PerDay=24*60*60*1000;					  //每天的毫秒
		//秒
		secsLeft=(endday.getTime()-today.getTime())/minPerDay;
												  //距离今天的分钟数
		secsRound=Math.round(secsLeft);			  //四舍五入
		secsRemain=secsLeft-secsRound;
		secsRemain=(secsRemain<0)?secsRemain=60-((secsRound-secsLeft)*60):secsRemain=(secsLeft-secsRound)*60;
		secsRemain=Math.round(secsRemain);		  //计算取分后剩余的秒数
		//分钟
		minLeft=(endday.getTime()-today.getTime())/hoursPerDay;
												  //距离今天的小时数
		minRound=Math.round(minLeft);			  //四舍五入
		minRemain=minLeft-minRound;
		minRemain=(minRemain<0)?minRemain=60-((minRound-minLeft)*60):minRemain=(minLeft-minRound)*60;
		minRemain=Math.round(minRemain-0.495);		  //计算取小时后剩余的分钟数							
		//小时
		hoursLeft=(endday.getTime()-today.getTime())/PerDay;
												  //距离今天的天数
		hoursRound=Math.round(hoursLeft);		  //四舍五入
		hoursRemain=hoursLeft-hoursRound;
		hoursRemain=(hoursRemain<0)?hoursRemain=24-((hoursRound-hoursLeft)*24):hoursRemain=(hoursLeft-hoursRound)*24;
		hoursRemain=Math.round(hoursRemain-0.5); //计算取天后剩余的小时
		//天
		daysLeft=(endday.getTime()-today.getTime())/PerDay;
												  //距离今天的天数
		daysLeft=(daysLeft-0.5);
		daysRound=Math.round(daysLeft);			  //四舍五入
		daysRemain=daysRound;
		//嵌入
		aInp[0].value=daysRemain;
		aInp[1].value=hoursRemain;
		aInp[2].value=minRemain;
		aInp[3].value=secsRemain;
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
	QHselect('so_select');
	cart();
	mall_fenlei();
	DaoJiShi();	
}