package controller;

import model.PublicacionDao;
import model.PublicacionVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PublicacionController extends HttpServlet {
    private PublicacionDao publicacionDao;

    @Override
    public void init() throws ServletException {
        super.init();
        // Inicializar el objeto PublicacionDao en el método init()
        publicacionDao = new PublicacionDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String contenido = request.getParameter("contenido");

        // Crear una instancia de PublicacionVo con los datos recibidos
        PublicacionVo publicacion = new PublicacionVo();
        publicacion.setContenido(contenido);

        // Guardar la publicación en la base de datos
        publicacionDao.guardarPublicacion(publicacion);

        // Guardar la publicación en el atributo de solicitud para mostrarla en la página de confirmación
     request.setAttribute("publicacion", publicacion);


        // Redirigir al usuario a la página de confirmación
        request.getRequestDispatcher("guardarPublicacion.jsp").forward(request, response);
    }
}
