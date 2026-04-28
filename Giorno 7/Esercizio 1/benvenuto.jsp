<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%-- Questa pagina mostra il giorno e l'ora correnti usando LocalDateTime --%>

<!DOCTYPE html>
<html>
<head>
    <title>Benvenuto</title>
</head>
<body>

    <p>
        Data e ora correnti:
        <%
            LocalDateTime now = LocalDateTime.now();
            out.println(now);
        %>
    </p>

</body>
</html>