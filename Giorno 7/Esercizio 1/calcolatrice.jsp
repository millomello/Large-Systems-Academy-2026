<%@ page contentType="text/html; charset=UTF-8" %>

<%-- Questa pagina legge due parametri (num1 e num2), li somma e mostra il risultato --%>

<!DOCTYPE html>
<html>
<head>
    <title>Calcolatrice</title>
</head>
<body>

<h2>Calcolatrice</h2>

<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");

    if(n1 != null && n2 != null) {
        try {
            int num1 = Integer.parseInt(n1);
            int num2 = Integer.parseInt(n2);
            int somma = num1 + num2;
%>
            <p><%= num1 %> + <%= num2 %> = <%= somma %></p>
<%
        } catch(NumberFormatException e) {
%>
            <p>Valori inseriti non validi</p>
<%
        }
    } else {
%>
        <p>Inserire i parametri nell'URL</p>
<%
    }
%>

<jsp:include page="footer.jsp" />

</body>
</html>