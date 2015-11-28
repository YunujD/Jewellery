<%@ page import="jewellerydev.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'customerId', 'error')} required">
	<label for="customerId">
		<g:message code="customer.customerId.label" default="Customer Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="customerId" type="number" min="100" value="${customerInstance.customerId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="customer.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdDate" required="" value="${customerInstance?.createdDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="customer.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${customerInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="customer.orders.label" default="Orders" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.orders?}" var="o">
    <li><g:link controller="orderDetails" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orderDetails" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orderDetails.label', default: 'OrderDetails')])}</g:link>
</li>
</ul>


</div>

