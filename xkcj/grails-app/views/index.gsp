<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>西控财富祝您春节快乐</title>
	<style type="text/css">

	div,body{margin:0px;padding:0px;}
	#div0 { width: 100% }
	#div1 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 37px;font-weight: 900;}
	#div2 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 50px;font-weight: 900;}
	#div3 { width: 100%;position:absolute; z-index:2; text-align: center}
	#div4 { width: 100%;position:absolute; z-index:2; text-align: center}
	#div5 { width: 100%;position:absolute; z-index:2; text-align: center;font-size: 35px}
	div input{
		font-size: 22px;
	}
	</style>
	<SCRIPT type="text/javascript">
		String.prototype.replaceAll = function(s1,s2) {
			return this.replace(new RegExp(s1,"gm"),s2);
		}
		function QueryString(item){
			var sValue=location.search.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"))
			return sValue?sValue[1]:sValue
		}
		function QueryString1(item){
			var sValue=location.search.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"))
			//alert(sValue);
			return sValue?sValue[1]:sValue
		}
		var dusername="";
		var dusername1="";
		var lusername=QueryString("input1");
		var lusername1=QueryString1("input2");

		if(lusername){
			lusername=lusername.replaceAll("!","%");
			lusername=lusername.replaceAll("%21","%");
			lusername=unescape(lusername);

			if(!lusername){
				lusername=dusername;
			}
		}else{
			lusername=dusername;
		}

		if(lusername1){
			lusername1=lusername1.replaceAll("!","%");
			lusername1=lusername1.replaceAll("%21","%");
			lusername1=unescape(lusername1);

			if(!lusername){
				lusername1=dusername1;
			}
		}else{
			lusername1=dusername1;
		}

		function check(){
			obj = document.getElementById("input1").value;
			obj2 = document.getElementById("input2").value;

			if (obj.length==0) {
				alert('还没填姓名呀!');
				return false;
			}
			if (obj2.length==0) {
				alert('还没填联系电话呀!');
				return false;
			}
			obj=escape(obj).replaceAll("%","!");
			obj2=escape(obj2).replaceAll("%","!");
			var url="?input1="+obj+"&input2="+obj2;
			window.location.replace(url);
			return false
		}
		function getUrl(){
			obj = document.getElementById("input1").value;
			obj2 = document.getElementById("input2").value;

			obj=escape(obj).replaceAll("%","!");
			obj2=escape(obj2).replaceAll("%","!");
			var url="http://www.xnsee.com/?input1="+obj+"&input2="+obj2;
			return url
		}
	</SCRIPT>
</head>

<body>
<div id="div0">
	<img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="images/hb.gif">




	<div id="div1" ><script>document.write(lusername);</script></div>
	<div id="div2" ><script>document.write(lusername1);</script></div>
	<div id="div3" ><input id="input1" placeholder="您的理财经理" maxlength="5"></div>
	<div id="div4" ><input id="input2" placeholder="您的联络方式" maxlength="13"></div>
	<div id="div5" ><a style="cursor: pointer" onclick="check();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
</div>


</body>

</html>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("div1").style.top= document.getElementById("img1").clientHeight * 0.47 +"px";
		document.getElementById("div2").style.top= document.getElementById("img1").clientHeight * 0.507 +"px";
		document.getElementById("div3").style.top= document.getElementById("img1").clientHeight * 0.73 +"px";
		document.getElementById("div4").style.top= document.getElementById("img1").clientHeight * 0.775 +"px";
		document.getElementById("div5").style.top= document.getElementById("img1").clientHeight * 0.82 +"px";
		document.getElementById("input1").style.width= document.getElementById("img1").clientWidth * 0.5 +"px";
		document.getElementById("input1").style.height= document.getElementById("img1").clientHeight * 0.025 +"px";
		document.getElementById("input2").style.width= document.getElementById("img1").clientWidth * 0.5 +"px";
		document.getElementById("input2").style.height= document.getElementById("img1").clientHeight * 0.025 +"px";
	}
</script>

<script type="text/javascript">
	var dataForWeixin={
		<!-- lang: js -->
		appId:"",
		<!-- lang: js -->
		MsgImg:"http://www.xikongcaifu.com/images/logowx.jpg",
		<!-- lang: js -->
		TLImg:"http://www.xikongcaifu.com/images/logowx.jpg",
		<!-- lang: js -->
		url:getUrl(),
		<!-- lang: js -->
		title:lusername+"祝您新年快乐！",
		<!-- lang: js -->
		desc:"我的手机号码是："+lusername1,
		<!-- lang: js -->
		fakeid:"",
		<!-- lang: js -->
		callback:function(){}
		<!-- lang: js -->
	};
	<!-- lang: js -->
	(function(){
		<!-- lang: js -->
		var onBridgeReady=function(){
			<!-- lang: js -->
			WeixinJSBridge.on('menu:share:appmessage', function(argv){
				<!-- lang: js -->
				WeixinJSBridge.invoke('sendAppMessage',{
					<!-- lang: js -->
					"appid":dataForWeixin.appId,
					<!-- lang: js -->
					"img_url":dataForWeixin.MsgImg,
					<!-- lang: js -->
					"img_width":"120",
					<!-- lang: js -->
					"img_height":"120",
					<!-- lang: js -->
					"link":dataForWeixin.url,
					<!-- lang: js -->
					"desc":dataForWeixin.desc,
					<!-- lang: js -->
					"title":dataForWeixin.title
					<!-- lang: js -->
				}, function(res){(dataForWeixin.callback)();});
				<!-- lang: js -->
			});
			<!-- lang: js -->
			WeixinJSBridge.on('menu:share:timeline', function(argv){
				<!-- lang: js -->
				(dataForWeixin.callback)();
				<!-- lang: js -->
				WeixinJSBridge.invoke('shareTimeline',{
					<!-- lang: js -->
					"img_url":dataForWeixin.TLImg,
					<!-- lang: js -->
					"img_width":"120",
					<!-- lang: js -->
					"img_height":"120",
					<!-- lang: js -->
					"link":dataForWeixin.url,
					<!-- lang: js -->
					"desc":dataForWeixin.desc,
					<!-- lang: js -->
					"title":dataForWeixin.title
					<!-- lang: js -->
				}, function(res){});
				<!-- lang: js -->
			});
			<!-- lang: js -->
			WeixinJSBridge.on('menu:share:weibo', function(argv){
				<!-- lang: js -->
				WeixinJSBridge.invoke('shareWeibo',{
					<!-- lang: js -->
					"content":dataForWeixin.title,
					<!-- lang: js -->
					"url":dataForWeixin.url
					<!-- lang: js -->
				}, function(res){(dataForWeixin.callback)();});
				<!-- lang: js -->
			});
			<!-- lang: js -->
			WeixinJSBridge.on('menu:share:facebook', function(argv){
				<!-- lang: js -->
				(dataForWeixin.callback)();
				<!-- lang: js -->
				WeixinJSBridge.invoke('shareFB',{
					<!-- lang: js -->
					"img_url":dataForWeixin.TLImg,
					<!-- lang: js -->
					"img_width":"120",
					<!-- lang: js -->
					"img_height":"120",
					<!-- lang: js -->
					"link":dataForWeixin.url,
					<!-- lang: js -->
					"desc":dataForWeixin.desc,
					<!-- lang: js -->
					"title":dataForWeixin.title
					<!-- lang: js -->
				}, function(res){});
				<!-- lang: js -->
			});
			<!-- lang: js -->
		};
		<!-- lang: js -->
		if(document.addEventListener){
			<!-- lang: js -->
			document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
			<!-- lang: js -->
		}else if(document.attachEvent){
			<!-- lang: js -->
			document.attachEvent('WeixinJSBridgeReady'   , onBridgeReady);
			<!-- lang: js -->
			document.attachEvent('onWeixinJSBridgeReady' , onBridgeReady);
			<!-- lang: js -->
		}
		<!-- lang: js -->
	})();
</script>

