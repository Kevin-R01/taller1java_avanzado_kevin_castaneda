<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="main.java.model.PublicacionVo" %>

<!DOCTYPE html>
<html>
<head>
  <title>Instagram - Publicación Guardada</title>
</head>
<body>
  <h1>Publicación guardada exitosamente</h1>
  <h2>Publicación reciente:</h2>
  <p><%= ((PublicacionVo) request.getAttribute("publicacion")).getContenido() %></p>

  <p>Vuelve a la página principal</p>
  <a href="dashboardIns.jsp">Volver</a>
</body>
</html>
