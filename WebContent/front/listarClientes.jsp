<%@page import="model.CadastroBean"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de Clientes</title>
</head>
<body>
	<div>
		<table align="center" width="75%" border="1">
				<tr>
					<td align="center">Codigo</td>
					<td>Nome</td>
				</tr>
				<c:choose>
					<c:when test="${empty(contatos)}">
						<td align="center" colspan="3">Nenhum contato cadastrado</td>
					</c:when>
					<c:otherwise>
						<c:forEach var="a" items="${contatos}">
							<tr>
								<td>${a.COD}</td>
								<td>${a.EMPRESA}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
		</table>
	</div>
</body>
</html>

</body>
</html>