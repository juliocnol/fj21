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
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp"/>
<a href='<c:url value="adiciona-contato.jsp"></c:url>'>Adicionar</a>
<table>
<tr bgcolor="#448822">
<td>Nome</td>
<td>Email</td>
<td>Endereço</td>
<td>Nascimento</td>
</tr>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
<c:forEach items="${dao.lista}" var="contato" varStatus="id">
<tr bgcolor="#${id.count%2==0?'aaee88':'ffffff'}">
<td>${contato.nome}</td>
<td>
<c:choose>
	<c:when test="${not empty contato.email }">
		<a href="mailto:${contato.email}">${contato.email}</a>
	</c:when>
	<c:otherwise>
		EMAIL NÃO PREENCHIDO
	</c:otherwise>
</c:choose>
</td>
<td>${contato.endereco}</td>
<td><fmt:formatDate value="${contato.dataNascimento.toDate()}" pattern="dd/MM/yyyy"/></td>
</tr>
</c:forEach>
</table>
<c:import url="rodape.jsp"/>
<display:table id="row" name="${dao.lista}">
	<display:column sortable="true" title="Nome">
		<c:out value="${row.nome}"/>
	</display:column>
	<display:column sortable="true" title="Email">
		<c:out value="${row.email}"/>
	</display:column>
	<display:column>
		<c:out value="${row.endereco}"/>
	</display:column>
	<display:column>
		<fmt:formatDate value="${row.dataNascimento.toDate()}" pattern="dd/MM/yyyy"/>
	</display:column>
</display:table>
</body>
</html>