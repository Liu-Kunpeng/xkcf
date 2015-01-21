<%@ page import="rjsq.Stakeinfo" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'stakeinfo.label', default: '入金申请')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-stakeinfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/user')}">返回用户列表</a></li>
        <li><a class="create" onclick="downExcel()" style="cursor: pointer "> 下载表格</a></li>
        <li><a class="create" onclick="downZip()" style="cursor: pointer "> 下载图片</a></li>
    </ul>
</div>

<div id="list-stakeinfo" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th class="sortable"><g:checkBox name="checkIds" id="checkIds"/> 选择</th>
            <g:sortableColumn property="id"
                              title="${message(code: 'stakeinfo.id.label', default: 'ID')}"/>

            <g:sortableColumn property="fundLimit"
                              title="${message(code: 'stakeinfo.fundLimit.label', default: '投资期限')}"/>

            <g:sortableColumn property="fundSum"
                              title="${message(code: 'stakeinfo.fundSum.label', default: '投资总额')}"/>

            <g:sortableColumn property="guestAddress"
                              title="${message(code: 'stakeinfo.guestAddress.label', default: '客户地址')}"/>

            <g:sortableColumn property="guestName"
                              title="${message(code: 'stakeinfo.guestName.label', default: '客户姓名')}"/>
            <g:sortableColumn property="compactFile"
                              title="${message(code: 'stakeinfo.compactFile.label', default: '操作')}"/>

        </tr>
        </thead>
        <tbody>
        <g:form name="form1" id="form1" action="listzip" >
        <g:each in="${stakeinfoInstanceList}" status="i" var="stakeinfoInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td style="text-align: center;">
                <input type="checkbox" name="myCheckbox" value="${stakeinfoInstance.id}" />
                </td>
                <td><g:link action="show"
                            id="${stakeinfoInstance.id}">${fieldValue(bean: stakeinfoInstance, field: "id")}</g:link></td>


                <td>${fieldValue(bean: stakeinfoInstance, field: "fundLimit")}</td>

                <td>${fieldValue(bean: stakeinfoInstance, field: "fundSum")}</td>

                <td>${fieldValue(bean: stakeinfoInstance, field: "guestAddress")}</td>

                <td>${fieldValue(bean: stakeinfoInstance, field: "guestName")}</td>

                <td><a target="_blank" href="showpic?id=${stakeinfoInstance.id}">查看图片</a></td>

            </tr>
        </g:each>
        </g:form>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${stakeinfoInstanceCount ?: 0}"/>
    </div>
</div>

<g:javascript>

    $("#checkIds").click(function(){
        $('input[type=checkbox]').attr('checked',$("#checkIds").is(':checked'));
    });

    function downExcel() {
       $("#form1").attr("action","list")
        $("#form1").submit()
    }
    function downZip(){
        $("#form1").attr("action","listzip")
        $("#form1").submit()
    }
</g:javascript>
</body>
</html>
