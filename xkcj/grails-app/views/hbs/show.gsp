
<%@ page import="xkcj.Hbs" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hbs.label', default: 'Hbs')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hbs" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hbs" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hbs">
			
				<g:if test="${hbsInstance?.investors}">
				<li class="fieldcontain">
					<span id="investors-label" class="property-label"><g:message code="hbs.investors.label" default="Investors" /></span>
					
						<span class="property-value" aria-labelledby="investors-label"><g:fieldValue bean="${hbsInstance}" field="investors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hbsInstance?.investorsPhone}">
				<li class="fieldcontain">
					<span id="investorsPhone-label" class="property-label"><g:message code="hbs.investorsPhone.label" default="Investors Phone" /></span>
					
						<span class="property-value" aria-labelledby="investorsPhone-label"><g:fieldValue bean="${hbsInstance}" field="investorsPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hbsInstance?.moneyManager}">
				<li class="fieldcontain">
					<span id="moneyManager-label" class="property-label"><g:message code="hbs.moneyManager.label" default="Money Manager" /></span>
					
						<span class="property-value" aria-labelledby="moneyManager-label"><g:fieldValue bean="${hbsInstance}" field="moneyManager"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hbsInstance?.moneyManagerPhone}">
				<li class="fieldcontain">
					<span id="moneyManagerPhone-label" class="property-label"><g:message code="hbs.moneyManagerPhone.label" default="Money Manager Phone" /></span>
					
						<span class="property-value" aria-labelledby="moneyManagerPhone-label"><g:fieldValue bean="${hbsInstance}" field="moneyManagerPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hbsInstance?.superiorPhone}">
				<li class="fieldcontain">
					<span id="superiorPhone-label" class="property-label"><g:message code="hbs.superiorPhone.label" default="Superior Phone" /></span>
					
						<span class="property-value" aria-labelledby="superiorPhone-label"><g:fieldValue bean="${hbsInstance}" field="superiorPhone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:hbsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${hbsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
