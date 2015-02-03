<%@ page import="xkcj.Hb" %>



<div class="fieldcontain ${hasErrors(bean: hbInstance, field: 'investors', 'error')} required">
	<label for="investors">
		<g:message code="hb.investors.label" default="Investors" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="investors" required="" value="${hbInstance?.investors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbInstance, field: 'moneyManager', 'error')} required">
	<label for="moneyManager">
		<g:message code="hb.moneyManager.label" default="Money Manager" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moneyManager" required="" value="${hbInstance?.moneyManager}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbInstance, field: 'moneyManagerPhone', 'error')} required">
	<label for="moneyManagerPhone">
		<g:message code="hb.moneyManagerPhone.label" default="Money Manager Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moneyManagerPhone" required="" value="${hbInstance?.moneyManagerPhone}"/>

</div>

