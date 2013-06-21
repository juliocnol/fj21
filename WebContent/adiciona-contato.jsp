<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="u" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/jquery.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome" /><br/>
		E-mail: <input type="text" name="email" /><br/>
		EndereÃ§o: <input type="text" name="endereco" /><br/>
		Data Nascimento: <u:campoData id="dataNascimento"/><br/>
		
		<input type="submit" value="Gravar" />
	</form>
</body>
</html>