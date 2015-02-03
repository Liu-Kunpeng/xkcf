<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>西控财富祝您春节快乐</title>
	<meta name='keywords' content='西控财富'>
	<meta name='description' content='西控财富祝您春节快乐'>

	<style type="text/css">
	div,body{margin:0px;padding:0px;}
	#div0 { width: 100% }
	#div1 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 37px;font-weight: 900;}
	#div2 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 50px;font-weight: 900;}
	#div3 { width: 100%;position:absolute; z-index:2; text-align: center}
	#div4 { width: 100%;position:absolute; z-index:2; text-align: center}
	#div5 { width: 100%;position:absolute; z-index:2; text-align: center;font-size: 35px}
	#div6 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 30px;font-weight: 900;}
	div input{
		font-size: 22px;
	}

	A:link {
		COLOR:#FF0; TEXT-DECORATION: none
	}
	A:visited {
		COLOR:#FF0; TEXT-DECORATION: none
	}
	A:hover {
		COLOR:#F00 TEXT-DECORATION: underline
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
	<img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="images/hb1.gif">




	<div id="div1" ><script>document.write(lusername);</script></div>
	<div id="div2" ><script>document.write(lusername1);</script></div>
	<div id="div3" ><input id="input1" placeholder="您的理财经理" maxlength="5"></div>
	<div id="div4" ><input id="input2" placeholder="您的联络方式" maxlength="13"></div>
	<div id="div5" ><a style="cursor: pointer" onclick="check();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
	<div id="div6" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网址：<a style="cursor: pointer" href="http://www.xikong.cc/" target="_blank">www.xikong.cc</a></div>
</div>
<audio controls autoplay loop style="height: 0;">
	<source src="a.mp3" type="audio/mp3" loop="true">
</audio>


</body>

</html>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("div1").style.top= document.getElementById("img1").clientHeight * 0.362 +"px";
		document.getElementById("div2").style.top= document.getElementById("img1").clientHeight * 0.391 +"px";
		document.getElementById("div3").style.top= document.getElementById("img1").clientHeight * 0.578 +"px";
		document.getElementById("div4").style.top= document.getElementById("img1").clientHeight * 0.615 +"px";
		document.getElementById("div5").style.top= document.getElementById("img1").clientHeight * 0.654 +"px";
		document.getElementById("div6").style.top= document.getElementById("img1").clientHeight * 0.945 +"px";
		document.getElementById("input1").style.width= document.getElementById("img1").clientWidth * 0.5 +"px";
		document.getElementById("input1").style.height= document.getElementById("img1").clientHeight * 0.025 +"px";
		document.getElementById("input2").style.width= document.getElementById("img1").clientWidth * 0.5 +"px";
		document.getElementById("input2").style.height= document.getElementById("img1").clientHeight * 0.025 +"px";
	}
</script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<script>
	var imgUrl = "图片地址";
	var lineLink = "网址";
	var descContent = '爱在五月，\n\n妈咪爱1+1亲子健康之旅开启全国行首站----重庆站妈咪爱活性益生菌';
	var shareTitle = '标题';
	var appid = '';

	function shareFriend() {
		WeixinJSBridge.invoke('sendAppMessage',{
			"appid": appid,
			"img_url": imgUrl,
			"img_width": "200",
			"img_height": "200",
			"link": lineLink,
			"desc": descContent,
			"title": shareTitle
		}, function(res) {
			//_report('send_msg', res.err_msg);
		})
	}
	function shareTimeline() {
		WeixinJSBridge.invoke('shareTimeline',{
			"img_url": imgUrl,
			"img_width": "200",
			"img_height": "200",
			"link": lineLink,
			"desc": descContent,
			"title": shareTitle
		}, function(res) {
			//_report('timeline', res.err_msg);
		});
	}
	function shareWeibo() {
		WeixinJSBridge.invoke('shareWeibo',{
			"content": descContent,
			"url": lineLink
		}, function(res) {
			//_report('weibo', res.err_msg);
		});
	}
	// 当微信内置浏览器完成内部初始化后会触发WeixinJSBridgeReady事件。
	document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		// 发送给好友
		WeixinJSBridge.on('menu:share:appmessage', function(argv){
			shareFriend();
		});
		// 分享到朋友圈
		WeixinJSBridge.on('menu:share:timeline', function(argv){
			shareTimeline();
		});
		// 分享到微博
		WeixinJSBridge.on('menu:share:weibo', function(argv){
			shareWeibo();
		});
	}, false);
</script>