<%@ page import="jewellerydev.OrderDetails" %>



<div class="fieldcontain ${hasErrors(bean: orderDetailsInstance, field: 'orderId', 'error')} required">
	<label for="orderId">
		<g:message code="orderDetails.orderId.label" default="Order Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orderId" type="number" value="${orderDetailsInstance.orderId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailsInstance, field: 'orderName', 'error')} required">
	<label for="orderName">
		<g:message code="orderDetails.orderName.label" default="Order Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orderName" required="" value="${orderDetailsInstance?.orderName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailsInstance, field: 'orderDesc', 'error')} required">
	<label for="orderDesc">
		<g:message code="orderDetails.orderDesc.label" default="Order Desc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orderDesc" required="" value="${orderDetailsInstance?.orderDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailsInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="orderDetails.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: orderDetailsInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: orderDetailsInstance, field: 'customers', 'error')} required">
	<label for="customers">
		<g:message code="orderDetails.customers.label" default="Customers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customers" name="customers.id" from="${jewellerydev.Customer.list()}" optionKey="id" required="" value="${orderDetailsInstance?.customers?.id}" class="many-to-one"/>

</div>

