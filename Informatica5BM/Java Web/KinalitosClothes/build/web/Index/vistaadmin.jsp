<%-- 
    Document   : vistaadmin
    Created on : 22 jul 2025, 13:07:15
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VZ Admin - Clientes y Ventas </title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;600;700;900&display=swap" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaadmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">V<span>Z 👻</span></div>
            <ul class="menu">
                <li><a href="Controlador?menu=Principal">Menu Principal</a></li>
                <li><a href="Controlador?menu=Clientes&accion=Listar">Clientes</a></li>
                <li><a href="Controlador?menu=Ventas&accion=Listar">Ventas</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="hero">
            <h1>👽 Panel de Administración 👽</h1>
            <p>Gestiona los clientes y ventas de tu tienda desde este panel centralizado.</p>
        </div>

        <div class="dashboard-grid">
            <div class="admin-card">
                <span class="card-icon">
                    <i class="fa-solid fa-users"></i>
                </span>
                <h3 class="card-title"> CLIENTES 😝</h3>
                <p class="card-description">
                    Gestiona la información de los clientes: agregar, listar, actualizar y eliminar.
                </p>
                <a href="Controlador?menu=Clientes&accion=Listar" class="btn_ver_gestion">Gestionar Clientes</a>
            </div>

            <div class="admin-card">
                <span class="card-icon">
                    <i class="fa-solid fa-cart-shopping"></i>
                </span>
                <h3 class="card-title"> VENTAS 😝</h3>
                <p class="card-description">
                    Gestiona la información de las ventas: agregar, listar, actualizar y eliminar.
                </p>
                <a href="Controlador?menu=Ventas&accion=Listar" class="btn_ver_gestion">Gestionar Ventas</a>
            </div>
        </div>
    </div>
</body>
</html>