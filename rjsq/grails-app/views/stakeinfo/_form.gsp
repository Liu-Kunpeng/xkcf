<%@ page import="rjsq.Stakeinfo" %>



<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'compactFile', 'error')} required">
    <label for="compactFile">
        <g:message code="stakeinfo.compactFile.label" default="Compact File"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="compactFile" required="" value="${stakeinfoInstance?.compactFile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'compactId', 'error')} required">
    <label for="compactId">
        <g:message code="stakeinfo.compactId.label" default="Compact Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="compactId" required="" value="${stakeinfoInstance?.compactId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'fundLimit', 'error')} required">
    <label for="fundLimit">
        <g:message code="stakeinfo.fundLimit.label" default="Fund Limit"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="fundLimit" required="" value="${stakeinfoInstance?.fundLimit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'fundSum', 'error')} required">
    <label for="fundSum">
        <g:message code="stakeinfo.fundSum.label" default="Fund Sum"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="fundSum" required="" value="${stakeinfoInstance?.fundSum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'guestAddress', 'error')} required">
    <label for="guestAddress">
        <g:message code="stakeinfo.guestAddress.label" default="Guest Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="guestAddress" required="" value="${stakeinfoInstance?.guestAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'guestName', 'error')} required">
    <label for="guestName">
        <g:message code="stakeinfo.guestName.label" default="Guest Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="guestName" required="" value="${stakeinfoInstance?.guestName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'guestPhone', 'error')} required">
    <label for="guestPhone">
        <g:message code="stakeinfo.guestPhone.label" default="Guest Phone"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="guestPhone" required="" value="${stakeinfoInstance?.guestPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'guestVid', 'error')} required">
    <label for="guestVid">
        <g:message code="stakeinfo.guestVid.label" default="Guest Vid"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="guestVid" required="" value="${stakeinfoInstance?.guestVid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'interestDate', 'error')} required">
    <label for="interestDate">
        <g:message code="stakeinfo.interestDate.label" default="Interest Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="interestDate" required="" value="${stakeinfoInstance?.interestDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'manageFinances', 'error')} required">
    <label for="manageFinances">
        <g:message code="stakeinfo.manageFinances.label" default="Manage Finances"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="manageFinances" required="" value="${stakeinfoInstance?.manageFinances}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'operate', 'error')} required">
    <label for="operate">
        <g:message code="stakeinfo.operate.label" default="Operate"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="operate" required="" value="${stakeinfoInstance?.operate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'overDate', 'error')} required">
    <label for="overDate">
        <g:message code="stakeinfo.overDate.label" default="Over Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="overDate" required="" value="${stakeinfoInstance?.overDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stakeinfoInstance, field: 'transferDate', 'error')} required">
    <label for="transferDate">
        <g:message code="stakeinfo.transferDate.label" default="Transfer Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="transferDate" required="" value="${stakeinfoInstance?.transferDate}"/>

</div>

