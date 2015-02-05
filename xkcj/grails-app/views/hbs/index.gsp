
<%@ page import="xkcj.Hbs" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hbs.label', default: 'Hbs')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hbs" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hbs" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="investors" title="${message(code: 'hbs.investors.label', default: 'Investors')}" />
					
						<g:sortableColumn property="investorsPhone" title="${message(code: 'hbs.investorsPhone.label', default: 'Investors Phone')}" />
					
						<g:sortableColumn property="moneyManager" title="${message(code: 'hbs.moneyManager.label', default: 'Money Manager')}" />
					
						<g:sortableColumn property="moneyManagerPhone" title="${message(code: 'hbs.moneyManagerPhone.label', default: 'Money Manager Phone')}" />
					
						<g:sortableColumn property="superiorPhone" title="${message(code: 'hbs.superiorPhone.label', default: 'Superior Phone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hbsInstanceList}" status="i" var="hbsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hbsInstance.id}">${fieldValue(bean: hbsInstance, field: "investors")}</g:link></td>
					
						<td>${fieldValue(bean: hbsInstance, field: "investorsPhone")}</td>
					
						<td>${fieldValue(bean: hbsInstance, field: "moneyManager")}</td>
					
						<td>${fieldValue(bean: hbsInstance, field: "moneyManagerPhone")}</td>
					
						<td>${fieldValue(bean: hbsInstance, field: "superiorPhone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hbsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
