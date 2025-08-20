package com.kinalitosclothes.controlador;

import com.kinalitosclothes.modelo.*;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        Clientes clientes = new Clientes();
        ClientesDAO clientesDao = new ClientesDAO();
        Ventas ventas = new Ventas();
        VentasDAO ventasDao = new VentasDAO();

        if (menu == null || menu.equals("Principal")) {
            request.getRequestDispatcher("/Index/Principal.jsp").forward(request, response);
        } else if (menu.equals("VistaAdmin")) {
            request.getRequestDispatcher("/Index/vistaadmin.jsp").forward(request, response);
        } else if (menu.equals("Clientes")) {
            switch (accion) {
                case "Listar":
                    List<Clientes> listaClientes = clientesDao.listar();
                    request.setAttribute("clientes", listaClientes);
                    break;
                case "Buscar":
                    String codigoBuscar = request.getParameter("txtBuscarId");
                    List<Clientes> listaClientesB = new ArrayList<>();
                    if (codigoBuscar != null && !codigoBuscar.trim().isEmpty()) {
                        try {
                            int codigoC = Integer.parseInt(codigoBuscar);
                            Clientes clienteEncontrado = clientesDao.buscar(codigoC);
                            if (clienteEncontrado != null) {
                                listaClientesB.add(clienteEncontrado);
                            } else {
                                request.setAttribute("error", "Cliente no encontrado");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Cliente inválido");
                        }
                    } else {
                        listaClientesB = clientesDao.listar();
                    }
                    request.setAttribute("clientes", listaClientesB);
                    request.getRequestDispatcher("/Index/VistaClientesAdmin.jsp").forward(request, response);
                    return;
                case "Agregar":
                    clientes.setNit(request.getParameter("txtNit"));
                    clientes.setNombreCliente(request.getParameter("txtNombreCliente"));
                    clientes.setApellidoCliente(request.getParameter("txtApellidoCliente"));
                    clientes.setDireccionCliente(request.getParameter("txtDireccionCliente"));
                    clientes.setTelefonoCliente(request.getParameter("txtTelefonoCliente"));
                    clientes.setCorreoCliente(request.getParameter("txtCorreoCliente"));
                    clientesDao.agregar(clientes);
                    response.sendRedirect("Controlador?menu=Clientes&accion=Listar");
                    return;
                case "Editar":
                    int idEditar = Integer.parseInt(request.getParameter("id"));
                    Clientes clienteEditar = clientesDao.buscar(idEditar);
                    request.setAttribute("cliente", clienteEditar);
                    request.setAttribute("clientes", clientesDao.listar());
                    request.getRequestDispatcher("/Index/VistaClientesAdmin.jsp").forward(request, response);
                    return;
                case "Actualizar":
                    int codigoCliente = Integer.parseInt(request.getParameter("txtCodigoCliente"));
                    clientes.setCodigoCliente(codigoCliente);
                    clientes.setNit(request.getParameter("txtNit"));
                    clientes.setNombreCliente(request.getParameter("txtNombreCliente"));
                    clientes.setApellidoCliente(request.getParameter("txtApellidoCliente"));
                    clientes.setDireccionCliente(request.getParameter("txtDireccionCliente"));
                    clientes.setTelefonoCliente(request.getParameter("txtTelefonoCliente"));
                    clientes.setCorreoCliente(request.getParameter("txtCorreoCliente"));
                    clientesDao.actualizar(clientes);
                    response.sendRedirect("Controlador?menu=Clientes&accion=Listar");
                    return;
                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigo = Integer.parseInt(idEliminar);
                            int resultado = clientesDao.eliminar(codigo);
                            if (resultado > 0) {
                                request.setAttribute("mensaje", "Cliente eliminado exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar el Cliente");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Cliente inválido");
                        }
                        response.sendRedirect("Controlador?menu=Clientes&accion=Listar");
                        return;
                    }
                    break;
                default:
                    System.out.println("No se encontró acción para Clientes");
            }
            request.getRequestDispatcher("/Index/VistaClientesAdmin.jsp").forward(request, response);
        } else if (menu.equals("Ventas")) {
            switch (accion) {
                case "Listar":
                    List<Ventas> listaVentas = ventasDao.listar();
                    request.setAttribute("ventas", listaVentas);
                    break;
                case "Buscar":
                    String codigoBuscar = request.getParameter("txtBuscarId");
                    List<Ventas> listaVentasB = new ArrayList<>();
                    if (codigoBuscar != null && !codigoBuscar.trim().isEmpty()) {
                        try {
                            int codigoV = Integer.parseInt(codigoBuscar);
                            Ventas ventaEncontrada = ventasDao.buscar(codigoV);
                            if (ventaEncontrada != null) {
                                listaVentasB.add(ventaEncontrada);
                            } else {
                                request.setAttribute("error", "Venta no encontrada");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Venta inválido");
                        }
                    } else {
                        listaVentasB = ventasDao.listar();
                    }
                    request.setAttribute("ventas", listaVentasB);
                    request.getRequestDispatcher("/Index/VistaVentasCliente.jsp").forward(request, response);
                    return;
                case "Agregar":
                    ventas.setTotalVenta(Double.parseDouble(request.getParameter("txtTotalVenta")));
                    ventas.setClienteID(Integer.parseInt(request.getParameter("txtClienteID")));
                    ventasDao.agregar(ventas);
                    response.sendRedirect("Controlador?menu=Ventas&accion=Listar");
                    return;
                case "Editar":
                    int idEditar = Integer.parseInt(request.getParameter("id"));
                    Ventas ventaEditar = ventasDao.buscar(idEditar);
                    request.setAttribute("venta", ventaEditar);
                    request.setAttribute("ventas", ventasDao.listar());
                    request.getRequestDispatcher("/Index/VistaVentasCliente.jsp").forward(request, response);
                    return;
                case "Actualizar":
                    int codigoVenta = Integer.parseInt(request.getParameter("txtCodigoVenta"));
                    ventas.setCodigoVenta(codigoVenta);
                    ventas.setTotalVenta(Double.parseDouble(request.getParameter("txtTotalVenta")));
                    ventasDao.actualizar(ventas);
                    response.sendRedirect("Controlador?menu=Ventas&accion=Listar");
                    return;
                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigo = Integer.parseInt(idEliminar);
                            int resultado = ventasDao.eliminar(codigo);
                            if (resultado > 0) {
                                request.setAttribute("mensaje", "Venta eliminada exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar la Venta");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Venta inválido");
                        }
                        response.sendRedirect("Controlador?menu=Ventas&accion=Listar");
                        return;
                    }
                    break;
                default:
                    System.out.println("No se encontró acción para Ventas");
            }
            request.getRequestDispatcher("/Index/VistaVentasCliente.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Controlador para Clientes y Ventas";
    }
}