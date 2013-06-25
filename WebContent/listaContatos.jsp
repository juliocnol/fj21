<%@page import="br.com.caelum.agenda.modelo.Contato,
			    br.com.caelum.agenda.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<table>
<tr bgcolor="#448822">
<td>Nome</td>
<td>Email</td>
<td>Endereço</td>
<td>Nascimento</td>
</tr>
<c:forEach items="${lista}" var="contato" varStatus="id">
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
<td><a href="alteraContatoServlet?id=${contato.id}">Altera</a></td>
<td><a href="removeContatoServlet?id=${contato.id}">Remove</a></td>
</tr>
</c:forEach>
</table>
<c:import url="rodape.jsp"/>
</body>
</html>