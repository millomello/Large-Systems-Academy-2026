<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>

<%-- Questa pagina genera una lista di numeri da 1 a 10 usando un ciclo for --%>

<!DOCTYPE html>
<html>
<head>
    <title>Lista Numeri</title>
</head>
<body>

	<h3>Numeri da 1 a 10</h3>

	<ul>
		<%
		    for(int i = 1; i <= 10; i++) {
		%>
		    <li><%= i %></li>
		<%
		    }
		%>
	</ul>

</body>
</html>