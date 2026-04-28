<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:useBean id="p" class="com.ls.model.Prodotto" />
<jsp:setProperty name="p" property="nome" value="Laptop" />
<jsp:setProperty name="p" property="prezzo" value="999.99" />

<html>
<body>

	<h2>Prodotto</h2>
	
	<p>Nome: <jsp:getProperty name="p" property="nome" /></p>
	<p>Prezzo: <jsp:getProperty name="p" property="prezzo" /></p>

</body>
</html>