<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🙉 Crud Clientes 🙉</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/VistaClientesAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">V<span>Z 👻</span></div>
            <ul class="menu">
                <li><a href="Controlador?menu=VistaAdmin">Menu Administrador</a></li>
                <li><a href="Controlador?menu=Clientes&accion=Listar">Clientes</a></li>
                <li><a href="Controlador?menu=Ventas&accion=Listar">Ventas</a></li>
            </ul>
        </div>
    </nav>

    <section>
        <div class="container">
            <h1>🙉 CRUD de <b>Clientes 🙉</b></h1>

            <div class="section">
                <h2>Agregar o modificar Cliente</h2>
                <form action="Controlador?menu=Clientes" method="post">
                    <input type="hidden" name="txtCodigoCliente" value="${cliente.getCodigoCliente()}">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" name="txtNit" placeholder="" value="${cliente.getNit()}" required>
                            <label class="label-input">NIT</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" name="txtNombreCliente" placeholder="" value="${cliente.getNombreCliente()}" required>
                            <label class="label-input">Nombre</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" name="txtApellidoCliente" placeholder="" value="${cliente.getApellidoCliente()}" required>
                            <label class="label-input">Apellido</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" name="txtDireccionCliente" placeholder="" value="${cliente.getDireccionCliente()}">
                            <label class="label-input">Dirección</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" name="txtTelefonoCliente" placeholder="" value="${cliente.getTelefonoCliente()}" required>
                            <label class="label-input">Teléfono</label>
                        </div>
                        <div class="form-group">
                            <input type="email" class="entrada_texto" name="txtCorreoCliente" placeholder="" value="${cliente.getCorreoCliente()}" required>
                            <label class="label-input">Correo</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="submit" class="btn_actualizar" name="accion" value="Agregar">
                            <span class="bnt_texto">Crear Cliente 🫳🏻</span>
                            <span class="btn_icono"><i class="fa-solid fa-plus"></i></span>
                        </button>
                        <button type="submit" class="btn_actualizar" name="accion" value="Actualizar">
                            <span class="bnt_texto">Actualizar 🙀</span>
                            <span class="btn_icono"><i class="fa-solid fa-pen-to-square"></i></span>
                        </button>
                    </div>
                </form>
            </div>

            <div class="section">
                <h2>Listar</h2>
                <form action="Controlador?menu=Clientes" method="post" class="search-section">
                    <div class="form-group search-group">
                        <input type="text" class="entrada_texto search-input" name="txtBuscarId" placeholder="">
                        <label class="label-input">Buscar Cliente 👀 ...</label>
                        <div class="search-icon"><i class="fa-solid fa-search"></i></div>
                    </div>
                    <button type="submit" name="accion" value="Buscar" style="display:none;"></button>
                    <button type="button" class="btn_eliminar" onclick="window.location.href = 'Controlador?menu=Clientes&accion=Listar'">
                        <span class="bnt_texto">Cancelar 💀</span>
                        <span class="btn_icono"><i class="fa fa-solid fa-x"></i></span>
                    </button>
                </form>
                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>NIT</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Dirección</th>
                                <th>Teléfono</th>
                                <th>Correo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cliente" items="${clientes}">
                                <tr>
                                    <td>${cliente.getCodigoCliente()}</td>
                                    <td>${cliente.getNit()}</td>
                                    <td>${cliente.getNombreCliente()}</td>
                                    <td>${cliente.getApellidoCliente()}</td>
                                    <td>${cliente.getDireccionCliente()}</td>
                                    <td>${cliente.getTelefonoCliente()}</td>
                                    <td>${cliente.getCorreoCliente()}</td>
                                    <td>
                                        <div class="botonesTabla">
                                            <button type="button" class="btn_editar" onclick="window.location.href = 'Controlador?menu=Clientes&accion=Editar&id=${cliente.getCodigoCliente()}'">
                                                <span class="bnt_texto">Editar 🤡</span>
                                                <span class="btn_icono"><i class="fa-solid fa-pen-to-square"></i></span>
                                            </button>
                                            <button type="button" class="btn_eliminar" onclick="window.location.href = 'Controlador?menu=Clientes&accion=Eliminar&id=${cliente.getCodigoCliente()}'">
                                                <span class="bnt_texto">Eliminar 💀</span>
                                                <span class="btn_icono"><i class="fa fa-trash"></i></span>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>Atención!</strong> Recuerda que vas a eliminar un registro, si lo haces se borrará de forma permanente y no podrás recuperarlo.
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>