<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>lkp</title>
</head>
<body>
 
	<table>
	<thead>
	 <tr>
	 <td>ID</td>
	 <td>dd2</td>
	 <td>dd3</td>
	 <td>dd4</td>
	 <td>dd5</td>
	 <td>dd6</td>
	 <td>dd7</td>
	 <td>dd8</td>
	 <td>dd9</td>
	 <td>dd10</td>
	 <td>dd11</td>
	 <td>dd12</td>
	 <td>dd13</td>
	 <td>dd14</td>
	 </tr>
	</thead>
		<g:each var="c" in="${stakes}">
			<tr class="prop">
				<td>${c.id}</td>
				<td>${c.department }</td>
				<td>${c.manageFinances }</td>
				<td>${c.guestName }</td>
				<td>${c.guestAddress }</td>
				<td>${c.guestVid }</td>
				<td>${c.guestPhone }</td>
				<td>${c.transferDate }</td>
				<td>${c.fundSum }</td>
				<td>${c.fundLimit }</td>
				<td>${c.interestDate }</td>
				<td>${c.overDate }</td>
				<td>${c.compactId }</td>
				<td><a target="_blank" href="showpic?id=${c.id}">查看图片</a></td>
			</tr>
		</g:each>
	</table>
</body>
</html>
