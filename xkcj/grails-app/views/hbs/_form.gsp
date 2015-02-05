<%@ page import="xkcj.Hbs" %>



<div class="fieldcontain ${hasErrors(bean: hbsInstance, field: 'investors', 'error')} required">
	<label for="investors">
		<g:message code="hbs.investors.label" default="Investors" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="investors" required="" value="${hbsInstance?.investors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbsInstance, field: 'investorsPhone', 'error')} required">
	<label for="investorsPhone">
		<g:message code="hbs.investorsPhone.label" default="Investors Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="investorsPhone" required="" value="${hbsInstance?.investorsPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbsInstance, field: 'moneyManager', 'error')} required">
	<label for="moneyManager">
		<g:message code="hbs.moneyManager.label" default="Money Manager" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moneyManager" required="" value="${hbsInstance?.moneyManager}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbsInstance, field: 'moneyManagerPhone', 'error')} required">
	<label for="moneyManagerPhone">
		<g:message code="hbs.moneyManagerPhone.label" default="Money Manager Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moneyManagerPhone" required="" value="${hbsInstance?.moneyManagerPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hbsInstance, field: 'superiorPhone', 'error')} required">
	<label for="superiorPhone">
		<g:message code="hbs.superiorPhone.label" default="Superior Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="superiorPhone" required="" value="${hbsInstance?.superiorPhone}"/>

</div>

