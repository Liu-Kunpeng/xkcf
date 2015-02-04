
<%@ page import="xkcj.Hb" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hb.label', default: 'Hb')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hb" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="listExcel">表格下载</g:link></li>
			</ul>
		</div>
		<div id="list-hb" class="content scaffold-list" role="main">
			<h1>红包列表</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<table id="">
				<g:form url="[action:'query']">
				<tr id="queryArray">
					<td>投资人<input name="Investors" value="${hbInstance?.Investors}"></td>
					<td>投资人电话<input name="" value="${hbInstance?.version}"></td>
					<td>理财经理<input name="moneyManager" value="${hbInstance?.moneyManager}"></td>
					<td>理财经理电话<input name="moneyManagerPhone" value="${hbInstance?.moneyManagerPhone}"></td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: right"><g:actionSubmit action="query" value=" 查 询 " /></td>
					<td colspan="2" style="text-align: left"><input type="button" value=" 重 置 " class="" id="reset"></td>
				</tr>
				</g:form>

			</table>--}%


			<table>
			<thead>
					<tr>
						<g:sortableColumn property="id" title="ID" />
						<g:sortableColumn property="investorsPhone" title="投资人" />
						<g:sortableColumn property="investors" title="投资人手机号码" />

						<g:sortableColumn property="moneyManager" title="理财经理" />

						<g:sortableColumn property="moneyManagerPhone" title="理财经理电话" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${hbInstanceList}" status="i" var="hbInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						%{--<td><g:link action="show" id="${hbInstance.id}">${fieldValue(bean: hbInstance, field: "id")}</g:link></td>--}%
						<td>${fieldValue(bean: hbInstance, field: "id")}</td>
						<td>${fieldValue(bean: hbInstance, field: "investorsPhone")}</td>
						<td>${fieldValue(bean: hbInstance, field: "investors")}</td>
						<td>${fieldValue(bean: hbInstance, field: "moneyManager")}</td>

						<td>${fieldValue(bean: hbInstance, field: "moneyManagerPhone")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hbInstanceCount ?: 0}" />
			</div>
		</div>
		%{--<script type="text/javascript">
			$(document).ready(function(){
				$("#reset").click(function(){
					$("#queryArray input").val("");
				});
			});
		</script>--}%
	</body>
</html>
