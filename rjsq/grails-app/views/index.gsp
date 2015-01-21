
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	<title></title>
	<link rel="stylesheet"
		  href="${createLinkTo(dir:'css/', file:'xcss.css')}" type="text/css" />
</head>
<body>
<div class="xbxgj">
	<header>宝象金融</header>
	<div style="color: red">${flash.message}</div>
	<g:form url="[action:'authenticate',controller:'user']"  method="post">

		<input type="text" id="login" name="login" placeholder="账号" /><br>
		<input type="password" id="password" name="password" placeholder="密码" />
		<input class="save" type="submit" value="登录" />

	</g:form>
</div>
</body>
</html>