<%@page import="br.com.caelum.agenda.modelo.Contato,
			    br.com.caelum.agenda.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/displayTag.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp"/>
<a href='<c:url value="adiciona-contato.jsp"></c:url>'>Adicionar</a>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
<display:table id="row" name="${dao.lista}" class="dttable">
	<display:column sortable="true" title="Nome">
		<c:out value="${row.nome}"/>
	</display:column>
	<display:column sortable="true" title="Email">
		<a href="mailto:${row.email}">${row.email}</a>
	</display:column>
	<display:column sortable="true" title="Endereco">
		<c:out value="${row.endereco}"/>
	</display:column>
	<display:column sortable="true" title="Data de Nascimento">
		<fmt:formatDate value="${row.dataNascimento.toDate()}" pattern="dd/MM/yyyy"/>
	</display:column>
	<display:column>
		<a href="alteraContatoServlet?id=${row.id}">Altera</a>
		<!--<a href="altera-contato.jsp?id=${row.id}">Altera</a>-->
	</display:column>
	<display:column>
		<a href="remove-contato.jsp?id=${row.id}">Remove</a>
	</display:column>
</display:table>
<c:import url="rodape.jsp"/>
</body>
</html>