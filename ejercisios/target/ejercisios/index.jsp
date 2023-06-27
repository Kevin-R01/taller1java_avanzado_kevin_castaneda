<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>App PlusFI</title>
    <link rel="stylesheet" href="paginaIndex.css">
  </head>
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
  margin: 1;
  padding: 1;
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
  font-family: century;
  font-size:1.2em
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
  font-family: century;
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
  margin-top: 5;
  font-family:century;
}

h2 {
  color: #000000; 
  font-size: 2em;
  margin-top: 0;
  font-family:century;
}
h3{
  color: #000000; 
  font-size: 1em;
  margin-top: 5;
  font-family:century;

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
  font-family: century;
}

li a:hover {
  color: #0074D9;
}

p {
  line-height: 2;
  font-family:'Arial Narrow';
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
  <body>
    <header>
        <nav>
          <ul>
            <li><a href="formulariore.jsp">Registrate en PlusFI</a></li>
            <li><a href="#">Quienes somos</a></li>
          </ul>
          <form action="#" method="post">
            <input type="text" name="busqueda" placeholder="Buscar...">
            <button type="submit">Buscar</button>
          </form>
          <ul>
          <a href="login.jsp">Iniciar sesion</a>
        </ul>
        </nav>
      </header>
     
      <main>
        <section>
          <h1>SEA BIENVENIDO AL APLICATIVO PlusFI </h1>
          <p>Esta aplicacion fue creada con el fin de satisfacer las nesesidades del cliente y poder ingresar a su red social de preferencia </p>
        </section>
        <section>
          <h2>Noticias</h2>
          <ul>
            <li>
              <h3>Titulo de la noticia</h3>
              <p>Descripcion de la noticia...</p>
            </li>

          </ul>
        </section>
        <section>
          <h2>Contactos</h2>
          <ul>
            <li>

              <h3>Nombre del contacto</h3>
              <p>Descripcion del contacto...</p>
            </li>
          </ul>
        </section>
      </main>
      
      <footer>
        <p>Derechos reservados &copy; 2023</p>
      </footer>
      
  </body>
</html>

