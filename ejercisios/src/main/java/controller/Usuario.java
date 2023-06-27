package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ConexionDB;
import model.UsuarioDao;
import model.UsuarioVo;

public class Usuario extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UsuarioDao usuarioDao;

    public void init() throws ServletException {
        super.init();
        Connection connection = ConexionDB.conectar();
        usuarioDao = new UsuarioDao(connection);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        if (opcion != null && opcion.equals("ingresar")) {
            String correo = request.getParameter("correo");
            String contrasena = request.getParameter("contrasena");

            try {
                UsuarioVo usuario = usuarioDao.ingresar(correo, contrasena);
                if (usuario != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", usuario);
                    response.sendRedirect("apartados.jsp");
                } else {
                    response.sendRedirect("ingresoFallido.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("ingresoFallido.jsp");
            }
        } else if (opcion != null && opcion.equals("registrar")) {
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String contrasena = request.getParameter("contrasena");
            String fecha_creacion = request.getParameter("fecha_creacion");

            UsuarioVo usuario = new UsuarioVo(nombre, correo, contrasena, fecha_creacion);

            try {
                usuarioDao.registrar(usuario);
                response.sendRedirect("loginExitoso.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("fallido.jsp");
            }
        } else if (opcion != null && opcion.equals("eliminar")) {

            String correo = request.getParameter("correo");

            try {

                usuarioDao.eliminar(correo);


                HttpSession session = request.getSession(false);
                if (session != null) {
                    session.invalidate();
                }


                request.getRequestDispatcher("eliminado.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();

                response.sendRedirect("eliminacionFallida.jsp");
            }
        } else if (opcion != null && opcion.equals("actualizar")) {
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String contrasena = request.getParameter("contrasena");
            String fecha_creacion = request.getParameter("fecha_creacion");

            UsuarioVo usuario = new UsuarioVo(nombre, correo, contrasena, fecha_creacion);

            try {

                UsuarioVo activeUser = (UsuarioVo) request.getSession().getAttribute("usuario");

                if (activeUser != null && activeUser.getCorreo().equals(correo)) {

                    usuarioDao.actualizar(usuario);
                    response.sendRedirect("consultar.jsp");
                } else {
                    response.sendRedirect("actualizacionFallida.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("actualizacionFallida.jsp");
            }
        } else if (opcion != null && opcion.equals("consultar")) {
            String correo = request.getParameter("correo");

            try {
                UsuarioVo usuario = usuarioDao.consultar(correo);
                if (usuario != null) {
                    request.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("consultar.jsp").forward(request, response);
                } else {
                    response.sendRedirect("consultaFallida.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("consultaFallida.jsp");
            }
        } else {
            response.sendRedirect("consultaFallida.jsp");
        }
    }
}



        