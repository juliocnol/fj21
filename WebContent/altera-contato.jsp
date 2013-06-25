<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<c:import url="cabecalho.jsp" />
<link href="css/jquery.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
Formulário para alteração de contatos:<br/>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
<form action="mvc" method="POST">
Id:
<input type="text" name="id" value="${contato.id}"/><br/>
Nome:
<input type="text" name="nome" value="${contato.nome}"/><br/>
E-mail:
<input type="text" name="email" value="${contato.email}"/><br/>
Endereço:
<input type="text" name="endereco" value="${contato.endereco}"/><br/>
Data de Nascimento:
<t:campoData id="dataNascimento" value="${contato.dataNascimento}"></t:campoData>
<input type="hidden" name="logica" value="AlteraContatoLogic"/>
<input type="submit" value="Enviar"/>
</form>
<c:import url="rodape.jsp"/>