<%@ page import="rjsq.Stakeinfo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="查看详情"/>
    <title>${entityName}</title>
</head>

<body>
<a href="#show-stakeinfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>

        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>

    </ul>
</div>

<div id="show-stakeinfo" class="content scaffold-show" role="main">
    <h1>${entityName}</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list stakeinfo">

        <g:if test="${stakeinfoInstance?.compactFile}">
            <li class="fieldcontain">
                <span id="compactFile-label" class="property-label"><g:message code="stakeinfo.compactFile.label"
                                                                               default="合同原件"/></span>

                <span class="property-value" aria-labelledby="compactFile-label">
                   %{-- <g:fieldValue   bean="${stakeinfoInstance}" field="compactFile"/>--}%
                    <a target="_blank" href="../showpic?id=${stakeinfoInstance?.id}">查看合同</a></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.department}">
            <li class="fieldcontain">
                <span id="department-label" class="property-label"><g:message code="stakeinfo.manageFinances.label"
                                                                                  default="部门"/></span>

                <span class="property-value" aria-labelledby="department-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="department"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.manageFinances}">
            <li class="fieldcontain">
                <span id="manageFinances-label" class="property-label"><g:message code="stakeinfo.manageFinances.label"
                                                                                  default="理财顾问"/></span>

                <span class="property-value" aria-labelledby="manageFinances-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="manageFinances"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.guestName}">
            <li class="fieldcontain">
                <span id="guestName-label" class="property-label"><g:message code="stakeinfo.guestName.label"
                                                                             default="客户姓名"/></span>

                <span class="property-value" aria-labelledby="guestName-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                             field="guestName"/></span>

            </li>
        </g:if>

        <g:if test="${stakeinfoInstance?.guestAddress}">
            <li class="fieldcontain">
                <span id="guestAddress-label" class="property-label"><g:message code="stakeinfo.guestAddress.label"
                                                                                default="客户地址"/></span>

                <span class="property-value" aria-labelledby="guestAddress-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="guestAddress"/></span>

            </li>
        </g:if>




        <g:if test="${stakeinfoInstance?.guestVid}">
            <li class="fieldcontain">
                <span id="guestVid-label" class="property-label"><g:message code="stakeinfo.guestVid.label"
                                                                            default="客户身份证号"/></span>

                <span class="property-value" aria-labelledby="guestVid-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                            field="guestVid"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.guestPhone}">
            <li class="fieldcontain">
                <span id="guestPhone-label" class="property-label"><g:message code="stakeinfo.guestPhone.label"
                                                                              default="客户手机"/></span>

                <span class="property-value" aria-labelledby="guestPhone-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="guestPhone"/></span>

            </li>
        </g:if>



        <g:if test="${stakeinfoInstance?.transferDate}">
            <li class="fieldcontain">
                <span id="transferDate-label" class="property-label"><g:message code="stakeinfo.transferDate.label"
                                                                                default="转账日期"/></span>

                <span class="property-value" aria-labelledby="transferDate-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="transferDate"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.fundSum}">
            <li class="fieldcontain">
                <span id="fundSum-label" class="property-label"><g:message code="stakeinfo.fundSum.label"
                                                                           default="投资金额"/></span>

                <span class="property-value" aria-labelledby="fundSum-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                           field="fundSum"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.fundLimit}">
            <li class="fieldcontain">
                <span id="fundLimit-label" class="property-label"><g:message code="stakeinfo.fundLimit.label"
                                                                             default="投资期限"/></span>

                <span class="property-value" aria-labelledby="fundLimit-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                             field="fundLimit"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.interestDate}">
            <li class="fieldcontain">
                <span id="interestDate-label" class="property-label"><g:message code="stakeinfo.interestDate.label"
                                                                                default="计息日"/></span>

                <span class="property-value" aria-labelledby="interestDate-label"><g:fieldValue
                        bean="${stakeinfoInstance}" field="interestDate"/></span>

            </li>
        </g:if>



        <g:if test="${stakeinfoInstance?.overDate}">
            <li class="fieldcontain">
                <span id="overDate-label" class="property-label"><g:message code="stakeinfo.overDate.label"
                                                                            default="到期日"/></span>

                <span class="property-value" aria-labelledby="overDate-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                            field="overDate"/></span>

            </li>
        </g:if>
        <g:if test="${stakeinfoInstance?.compactId}">
            <li class="fieldcontain">
                <span id="compactId-label" class="property-label"><g:message code="stakeinfo.compactId.label"
                                                                             default="合同编号"/></span>

                <span class="property-value" aria-labelledby="compactId-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                             field="compactId"/></span>

            </li>
        </g:if>


        <g:if test="${stakeinfoInstance?.operate}">
            <li class="fieldcontain">
                <span id="operate-label" class="property-label"><g:message code="stakeinfo.operate.label"
                                                                           default="操作人"/></span>

                <span class="property-value" aria-labelledby="operate-label"><g:fieldValue bean="${stakeinfoInstance}"
                                                                                           field="operate"/></span>

            </li>
        </g:if>
    </ol>
    <g:form url="[resource: stakeinfoInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${stakeinfoInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
