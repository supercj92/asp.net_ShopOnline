// JavaScript Document  
window.onload=function (){
	//这个程序还有一点小问题，点击全选复选框都打勾，但是这时候checked=true不起作用
	var js_quanxuan=document.getElementById("js_quanxuan");
	var car_money=document.getElementsByClassName("car-money");
	var car_click=document.getElementsByClassName("car_click")[0];
	var money_num=document.getElementById("money_num");
	var car_show=document.getElementsByClassName("car-show")[0].getElementsByTagName("input");
	var num=0;
	for(var i=0;i<car_show.length;i++){
		car_show[i].checked=false;
	}
	for(var i=0;i<car_money.length;i++){
		car_show[i].index=i;
		car_show[i].onclick=function (){
			if(car_show[this.index].checked==true){
				num+=parseFloat(car_money[this.index].innerHTML);
			}
			else {
				num-=parseFloat(car_money[this.index].innerHTML);
			}
			money_num.innerHTML="￥"+num;
			if(num>0){
				car_click.style.background="red";
				car_click.style.color="#fff";
				car_click.style.cursor="pointer";
			}else {
				car_click.style.background="";
				car_click.style.color="";
				car_click.style.cursor="";
			}
		};
	}
	
	js_quanxuan.onclick=function (){
		for(var i=0;i<car_show.length;i++){
			if(js_quanxuan.checked==false){
				car_show[i].checked=false;
			}else {
				car_show[i].checked=true;
			}
		}
	};
}