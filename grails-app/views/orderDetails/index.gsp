
<%@ page import="jewellerydev.OrderDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderDetails.label', default: 'OrderDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="orderId" title="${message(code: 'orderDetails.orderId.label', default: 'Order Id')}" />
					
						<g:sortableColumn property="orderName" title="${message(code: 'orderDetails.orderName.label', default: 'Order Name')}" />
					
						<g:sortableColumn property="orderDesc" title="${message(code: 'orderDetails.orderDesc.label', default: 'Order Desc')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'orderDetails.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'orderDetails.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="orderDetails.customers.label" default="Customers" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderDetailsInstanceList}" status="i" var="orderDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderDetailsInstance.id}">${fieldValue(bean: orderDetailsInstance, field: "orderId")}</g:link></td>
					
						<td>${fieldValue(bean: orderDetailsInstance, field: "orderName")}</td>
					
						<td>${fieldValue(bean: orderDetailsInstance, field: "orderDesc")}</td>
					
						<td>${fieldValue(bean: orderDetailsInstance, field: "price")}</td>
					
						<td><g:formatDate date="${orderDetailsInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: orderDetailsInstance, field: "customers")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
