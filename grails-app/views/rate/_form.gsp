<%@ page import="jewellerydev.Rate" %>



<div class="fieldcontain ${hasErrors(bean: rateInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="rate.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${rateInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: rateInstance, field: 'material', 'error')} required">
	<label for="material">
		<g:message code="rate.material.label" default="Material" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="material" required="" value="${rateInstance?.material}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rateInstance, field: 'rate', 'error')} required">
	<label for="rate">
		<g:message code="rate.rate.label" default="Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rate" value="${fieldValue(bean: rateInstance, field: 'rate')}" required=""/>

</div>

