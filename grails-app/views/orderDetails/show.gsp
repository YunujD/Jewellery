
<%@ page import="jewellerydev.OrderDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderDetails.label', default: 'OrderDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orderDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orderDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderDetails">
			
				<g:if test="${orderDetailsInstance?.orderId}">
				<li class="fieldcontain">
					<span id="orderId-label" class="property-label"><g:message code="orderDetails.orderId.label" default="Order Id" /></span>
					
						<span class="property-value" aria-labelledby="orderId-label"><g:fieldValue bean="${orderDetailsInstance}" field="orderId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailsInstance?.orderName}">
				<li class="fieldcontain">
					<span id="orderName-label" class="property-label"><g:message code="orderDetails.orderName.label" default="Order Name" /></span>
					
						<span class="property-value" aria-labelledby="orderName-label"><g:fieldValue bean="${orderDetailsInstance}" field="orderName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailsInstance?.orderDesc}">
				<li class="fieldcontain">
					<span id="orderDesc-label" class="property-label"><g:message code="orderDetails.orderDesc.label" default="Order Desc" /></span>
					
						<span class="property-value" aria-labelledby="orderDesc-label"><g:fieldValue bean="${orderDetailsInstance}" field="orderDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailsInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="orderDetails.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${orderDetailsInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="orderDetails.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${orderDetailsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderDetailsInstance?.customers}">
				<li class="fieldcontain">
					<span id="customers-label" class="property-label"><g:message code="orderDetails.customers.label" default="Customers" /></span>
					
						<span class="property-value" aria-labelledby="customers-label"><g:link controller="customer" action="show" id="${orderDetailsInstance?.customers?.id}">${orderDetailsInstance?.customers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orderDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${orderDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
