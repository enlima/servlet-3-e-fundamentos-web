<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<body>

	Bem vindo ao nosso gerenciador de empresas!<p/>
	
	<c:if test="${not empty usuarioLogado}">
		Você está logado como ${usuarioLogado.email}<p/>
	</c:if>
	
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="NovaEmpresa"/>
		Nome: <input type="text" name="nome"/>
		<input type="submit" value="Enviar"/>
	</form>	
	
	<form action="login" method="post">
		Email: <input type="email" name="email"/>
		Senha: <input type="password" name="senha"/>
		<input type="submit" value="Enviar"/>
	</form>
	
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="Logout"/>
		<input type="submit" value="Deslogar"/>
	</form>
	
</body>
</html>