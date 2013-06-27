<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" type="org.joda.time.DateTime" %>
<input id="${id}" name="${id}" value='<fmt:formatDate value="${value.toDate()}" pattern="dd/MM/yyyy"/>'/>
<script>
	$("#${id}").datepicker({
		dateFormat:'dd/mm/yy',
		changeMonth:true,
		changeYear:true
	});
</script>