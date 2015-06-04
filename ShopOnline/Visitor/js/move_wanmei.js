function startMove(obj,json,fnEnd)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function (){
	for(var attr in json){
		var curr=0;
		var iStop=true;
		if(attr=='opacity')
		{
			curr=Math.round(parseFloat(getStyle(obj,attr))*100);         //Math.round() ����һ��ȡ��������ĺ���.
		}else{
			curr=parseInt(getStyle(obj,attr));
		}
		var speed=(json[attr]-curr)/5;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(curr!=json[attr])
			iStop=false;
		
		
		if(attr=='opacity')
		{
			obj.style.filter='alpha(opacity:'+(curr+speed)+')';
			obj.style.opacity=(curr+speed)/100;                              //�⼸��������ܲ�̫��Ϥ��Ҫ�����ϰ��
		}else{
			obj.style[attr]=curr+speed+'px';
		}
	}	
		if(iStop)
		{
			clearInterval(obj.timer);
			if(fnEnd)fnEnd();
		}

	},30);
}

function getStyle(obj,name)
{
	if(obj.currentStyle)
	{
		return obj.currentStyle[name];
	}else{
		return getComputedStyle(obj,false)[name];
	}
}