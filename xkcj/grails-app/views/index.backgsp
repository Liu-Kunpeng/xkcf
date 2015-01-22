<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>西控财富祝您春节快乐</title>
	<style type="text/css">
	<!--
	body {
		background-color: #000;
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
	.b48 {
		font-size: 56px;
		color: #FF0;
		line-height: 1.8em;
		font-family: "楷体";
	}
	.green48 {
		font-family: "黑体";
		font-size: 56px;
		line-height: 1.8px;
		color: #0F0;
	}


	#div_box {
		BORDER-BOTTOM: #f5b50a 4px solid;
		BORDER-LEFT: #f5b50a 4px solid;
		BORDER-TOP: #f5b50a 4px solid;
		BORDER-RIGHT: #f5b50a 4px solid;
		padding: 5px;
		width: auto;
		text-align: center;
		margin-right: auto;
		margin-left: auto;
		width: 600px;
	}
	body,td,th {
		color: #00FF00;
	}

	-->
	</style>
	<SCRIPT type="text/javascript">
		String.prototype.replaceAll = function(s1,s2) {
			return this.replace(new RegExp(s1,"gm"),s2);
		}
		function QueryString(item){
			var sValue=location.search.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"))
			return sValue?sValue[1]:sValue
		}
		var dusername="我";
		var lusername=QueryString("stra");

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


		function check(){
			obj = document.getElementById("stra").value;
			if (obj.length>30) {
				alert('名字太长');
				return false;
			}
			if (obj.length==0) {
				alert('还没填姓名呀!');
				return false;
			}
			obj=escape(obj).replaceAll("%","!");
			var url="?stra="+obj;
			window.location.replace(url);
			return false
		}

	</SCRIPT>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="120" align="center" >
			<span class="green48">
				<script>document.write(lusername);</script>
			</span>
			<span class="b48">祝你春节快乐</span></td>
	</tr>
</table>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center">
			<form name="newinfo_form" id="newinfo_form2" onsubmit="return check(this)">
				<div id="div_box">
					<div class="sltbox" id="menu_1"><span class="s">输入您的名字: </span>
						<input id="stra" tabindex="1" maxlength="18" size="25" name="stra2" style="PADDING-LEFT: 3px; FONT-SIZE: 16px;height:20px; padding-top:3px;" />
						<input type="submit" value="点此提交" name="Submit2" style="FONT-SIZE: 16px; MARGIN-BOTTOM: -1px; WIDTH: 6.4em; PADDING-TOP: 2px; HEIGHT: 1.9em" />
					</div>
				</div>
			</form></td>
	</tr>
</table>
</body>
</html>