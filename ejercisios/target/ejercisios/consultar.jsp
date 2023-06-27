<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Consulta de Usuario</title>
    
    <style>
      nav {
       background-color: #3fc978; 
       padding: 1em;
       display: flex;
       justify-content: space-between;
       align-items: center;
     }
     
     nav ul {
       list-style: none;
       margin: 0;
       padding: 0;
       display: flex;
     }
     
     nav ul li {
       margin-left: 1em;
     }
     
     nav ul li a {
       color: white;
       text-decoration: none;
       font-weight: bold;
       transition: all 0.2s ease-in-out;
     }
     
     nav ul li a:hover {
       color: #000000; 
     }
     
     nav form {
       display: flex;
     }
     
     nav form input[type="text"] {
       padding: 0.5em;
       border: none;
       border-radius: 0.5em;
       margin-right: 0.5em;
     }
     
     nav form button[type="submit"] {
       background-color: #000000; 
       border: none;
       color: white;
       padding: 0.5em;
       border-radius: 0.5em;
     }
     
     nav form button[type="submit"]:hover {
       background-color: #68b69e;
     }
     
     nav a {
       color: white;
       text-decoration: none;
       font-weight: bold;
       transition: all 0.2s ease-in-out;
     }
     
     nav a:hover {
       color: #000000; 
     }
     
     
     
     main {
       max-width: 800px;
       margin: 2em auto;
     }
     
     section {
       margin-bottom: 2em;
     }
     
     h1 {
       color: #000000; 
       font-size: 2.5em;
       margin-top: 0;
     }
     
     h2 {
       color: #819700; 
       font-size: 1.8em;
       margin-top: 0;
     }
     
     ul {
       list-style: none;
       margin: 0;
       padding: 0;
     }
     
     li {
       margin-bottom: 1em;
     }
     
     li a {
       color: #3498DB; 
       text-decoration: none;
     }
     
     li a:hover {
       color: #0074D9;
     }
     
     p {
       line-height: 1.5;
     }
     
     img {
       border-radius: 50%;
       width: 80px;
       height: 80px;
       margin-right: 1em;
     }
     
     
     footer {
       background-color: #3fc978; 
       color: white;
       text-align: center;
       padding: 1em;
       margin-top: 2em;
     }
           </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">INICIO</a></li>
            </ul>
            <form action="#" method="post">
                <input type="text" name="busqueda" placeholder="Buscar...">
                <button type="submit">Buscar</button>
            </form>
            <a href="apartados.jsp">Volver a las Apps</a>
        </nav>
    </header>

    <h1>Consulta de Usuario</h1>

    <form method="post" action="Usuario?opcion=consultar">
        <label for="correo">Ingrese su correo:</label>
        <input type="email" id="correo" name="correo">
        <button type="submit">Consultar</button>
    </form>

    <% if (request.getAttribute("usuario") != null) { %>
      <% model.UsuarioVo usuario = (model.UsuarioVo) request.getAttribute("usuario"); %>
      <h2>Detalles del Usuario</h2>
      <p>Nombre: <%= usuario.getNombre() %></p>
      <p>Correo: <%= usuario.getCorreo() %></p>
      <p>Contraseña: <%= usuario.getContrasena() %></p>
      <p>Fecha de Creación: <%= usuario.getFecha_creacion() %></p>
  
      <form method="post" action="Usuario?opcion=eliminar">
          <input type="hidden" name="correo" value="<%= usuario.getCorreo() %>">
          <button type="submit">Eliminar</button>
      </form>
  
      <button type="button" onclick="location.href='modificarUsuario.jsp'">Modificar</button>
  
  <% } else { %>
      <h2>Usuario no encontrado</h2>
      <p>El usuario especificado no existe.</p>
  <% } %>
  

</body>
</html>

