<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<c:import url="cabecalho.jsp" />
<link href="css/jquery.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
Formulário para alteração de contatos:<br/>
<form action="mvc" method="POST">
Id:
<input type="text" name="id"/><br/>
<input type="hidden" name="logica" value="RemoveContatoLogic"/>
<input type="submit" value="Enviar"/>
</form>
<c:import url="rodape.jsp"/>