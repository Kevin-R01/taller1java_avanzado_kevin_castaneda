<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
            width: 400px;
            margin: 0 auto;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
        }
        
        button {
            padding: 10px 20px;
            background-color: #4caf50;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <% model.UsuarioVo usuario = (model.UsuarioVo) request.getSession().getAttribute("usuario"); %>

<h1>Modificar Usuario</h1>

<form method="post" action="Usuario?opcion=actualizar">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" value="<%= usuario.getNombre() %>"><br>

    <label for="correo">Correo:</label>
    <input type="email" id="correo" name="correo" value="<%= usuario.getCorreo() %>" readonly><br>

    <label for="contrasena">Contraseña:</label>
    <input type="password" id="contrasena" name="contrasena" value="<%= usuario.getContrasena() %>"><br>

    <label for="fecha_creacion">Fecha de Creación:</label>
    <input type="text" id="fecha_creacion" name="fecha_creacion" value="<%= usuario.getFecha_creacion() %>" readonly><br>

    <button type="submit">Actualizar</button>
</form>

</body>
</html>
