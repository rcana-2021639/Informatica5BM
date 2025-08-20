/*package com.kinalitosclothes.controlador;

import com.kinalitosclothes.modelo.Empleados;
import com.kinalitosclothes.modelo.EmpleadosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Validar")
public class Validar extends HttpServlet {

    private final EmpleadosDAO empleadosDAO = new EmpleadosDAO();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  /*  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 /*   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuarioLogin");
        String contrasena = request.getParameter("passwordLogin");

        try {
            // es para velidar el empleado
            Empleados empleado = empleadosDAO.validar(usuario, contrasena);
            if (empleado != null) {
                HttpSession session = request.getSession();
                session.setAttribute("empleadoLogueado", empleado);
                response.sendRedirect("Index/menu.jsp");
                return; 
            }

            // es para validar el usuario
            com.kinalitosclothes.modelo.UsuariosDAO usuariosDAO = new com.kinalitosclothes.modelo.UsuariosDAO();
            com.kinalitosclothes.modelo.Usuarios usuarioObj = usuariosDAO.validar(usuario, contrasena);
            if (usuarioObj != null) {
                HttpSession session = request.getSession();
                session.setAttribute("usuarioLogueado", usuarioObj);
                response.sendRedirect("Index/menuUsuario.jsp");
                return; 
            }
            request.setAttribute("error", "Usuario o contraseña incorrectos.");
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("error", "Error interno al validar: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
 /*   @Override
    public String getServletInfo() {
        return "Servlet para validar credenciales de empleados";
    }
}*/
