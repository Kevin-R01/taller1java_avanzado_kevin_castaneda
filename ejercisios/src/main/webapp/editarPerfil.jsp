<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Editar perfil</title>
    <link rel="stylesheet" href="perfil.css" />
    <style>
      * {
    box-sizing: border-box;
    font-family: Arial, sans-serif;
  }
  
  body {
    background-color: #f0f0f0;
    margin: 0;
  }
  
  .container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
  }
  
  form {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f1f1f1;
    border-radius: 10px;
  }
  
  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }
  
  input,
  textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: none;
    background-color: #ddd;
  }
  
  button {
    background-color: #3b5998;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #a5baf5;
  }
  
  
  input:focus,
textarea:focus {
  background-color: #eee;
  outline: none;
}

input:invalid,
textarea:invalid {
  border-color: red;
}

input:valid,
textarea:valid {
  border-color: green;
}

input[type="tel"] {

}

textarea {

}

@media (max-width: 768px) {

}
body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  }
  
  header {
  background-color: #3b5998;
  color: #fff;
  padding: 20px;
  }
  
  main {
  padding: 20px;
  }
  
  footer {
  background-color: #f5f5f5;
  color: #333;
  padding: 20px;
  text-align: center;
  }
  
  .logo a {
  color: #fff;
  font-size: 28px;
  font-weight: bold;
  text-decoration: none;
  }
  
  nav {
  display: flex;
  align-items: center;
  margin-bottom: 20px;
  }
  
  nav ul {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
  }
  
  nav li {
  margin-left: 20px;
  }
  
  nav li:first-child {
  margin-left: 0;
  }
  
  nav a {
  color: #fff;
  text-decoration: none;
  font-size: 18px;
  font-weight: bold;
  }
  
  section {
  display: flex;
  flex-wrap: wrap;
  }
  
  section div {
  flex-basis: 33%;
  padding: 20px;
  }
  
  section div h2 {
  color: #3b5998;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
  }
  
  section div p {
  color: #666;
  font-size: 16px;
  line-height: 1.5;
  }
    </style>
    
  </head>
  <body>
    <header>
      <div class="logo">
      <a href="#">Facebook</a>
      </div>
      <nav id="b">
      <ul>
      <li><a href="dashboard.jsp">Inicio</a></li>
      <li><a href="editarPerfil.jsp">Editar Perfil</a></li>
      <li><a href="agregarAmigo.jsp">Amigos</a></li>
      <li><a href="login.jsp">Cerrar sesion</a></li>
      </ul>
      </nav>
      </header>
      
    <div class="container">
      <form>
  <label for="nombre">Nombre:</label>
  <input type="text" id="nombre" name="nombre" required>

  <label for="apellido">Apellido:</label>
  <input type="text" id="apellido" name="apellido" required>

  <label for="correo">Correo electronico:</label>
  <input type="email" id="correo" name="correo" required>

  <label for="contraseña">Contraseña:</label>
  <input type="con" id="contraseña" name="contraseña">

  <button type="submit">Enviar</button>
</form>
    </div>
  </body>
</html>
