<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" %>
<input id="${id}" name="${id}" value="${value}"/>
<script>
	$("#${id}").datepicker({
		dateFormat:'dd/mm/yy',
		changeMonth:true,
		changeYear:true
	});
</script>