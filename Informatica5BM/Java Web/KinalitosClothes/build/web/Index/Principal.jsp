<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>V.Z - Inicio</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/menu.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- SECTOR 1: NAVBAR Y HERO -->
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">V<span>Z 👻</span></div>
                <ul class="menu">
                    <li><a href="#">INICIO</a></li>
                    <li><a href="Controlador?menu=VistaAdmin">ADMINISTRACION</a></li>
                </ul>
                <div class="iconos">
                    <a href="#"><i class="fa fa-search"></i></a>
                    <a href="Controlador?menu=MisPedidos"><i class="fa fa-shopping-cart"></i></a>
                    </a>
                </div>
            </div>
        </nav>
        <section class="hero">
            <div class="hero-content">
                <span class="descuento">hasta 30% de descuento</span>
                <h1>LOS MEJORES ZAPATOS CON ESTILO</h1>
                <h2>PARA TU ESTILO UNICO</h2>
                <a href="#NuevosProductos" class="btn-coleccion">VER COLECCION</a>
            </div>
        </section>
        <!-- SECTOR 2: OFERTAS DESTACADAS -->
        <section class="ofertas-destacadas">
            <div class="oferta">
                <img src="${pageContext.request.contextPath}/Images/waza.jpg" alt="Oferta Laptop">
                <div class="oferta-info">
                    <h3>OFERTA DEL DIA</h3>
                    <p>Hasta 45% de descuento en camicetas</p>
                    <a href="Controlador?menu=VistaProducto" class="btn-oferta">COMPRAR AHORA</a>
                </div>
            </div>
            <div class="oferta">
                <img src="${pageContext.request.contextPath}/Images/zapato2.webp" alt="Oferta Reloj">
                <div class="oferta-info">
                    <h3>EL MAS VENDIDO</h3>
                    <p>Precio desde $100</p>
                    <a href="Controlador?menu=VistaProducto" class="btn-oferta">COMPRAR AHORA</a>
                </div>
            </div>
        </section>
        <!-- SECTOR 3: NUEVOS PRODUCTOS -->
        <section id="NuevosProductos" class="nuevos-productos-titulo">
            <h2>NUEVOS PRODUCTOS</h2>
            <a href="Controlador?menu=VistaProducto" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line two">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line three">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line four">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line five">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line six">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line seven">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/stetik.jpg" alt="Producto 1">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/stetik2.jpg" alt="Producto 2">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/stetik3.jpg" alt="Producto 3">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/tetik4.jpg" alt="Producto 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line two">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line three">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line four">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line five">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line six">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line seven">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                </div>
            </button>
        </section>
        <!-- SECTOR 4: RESEÃAS Y BANNER -->
        <section class="resenas-clientes">
            <h2 class="titulo-resenas">RESEÑAS DE NUESTROS CLIENTES</h2>
            <div class="resenas-lista">
                <div class="resena">
                    <p>"¡La calidad de la ropa es excelente y el envio fue muy rapido! Sin duda volveria a comprar."</p>
                    <span class="cliente">Ana Perez</span>
                </div>
                <div class="resena">
                    <p>"Me encanta la variedad de estilos y los precios accesibles. ¡Muy recomendable!"</p>
                    <span class="cliente">Carlos Mendez</span>
                </div>
                <div class="resena">
                    <p>"El servicio al cliente fue muy atento y la ropa llega en perfecto estado."</p>
                    <span class="cliente">Maria Lopez</span>
                </div>
            </div>
            <div class="resenas-puntos">
                <span class="punto activo"></span>
                <span class="punto"></span>
                <span class="punto"></span>
            </div>
        </section>
        <section class="banner-imagen">
            <img src="${pageContext.request.contextPath}/Images/fondoh.jpg" alt="Banner Tienda" class="banner-img">
        </section>
        <!-- SECTOR 5: PRODUCTOS DESTACADOS Y ARTÃCULOS DE MODA -->
        <section class="nuevos-productos-titulo">
            <h2>PRODUCTOS DESTACADOS</h2>
            <a href="Controlador?menu=VistaProducto" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/keloke.jpg" alt="Producto Destacado 1">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/keloke2.jpg" alt="Producto Destacado 2">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/keloke3.jpg" alt="Producto Destacado 3">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/keloke4.jpg" alt="Producto Destacado 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
        </section>
        <section class="nuevos-productos-titulo">
            <h2>ARTICULOS DE MODA</h2>
            <a href="Controlador?menu=VistaProducto" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/ultima.jpg" alt="Producto Destacado 1">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/ultima2.jpg" alt="Producto Destacado 2">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/ultima3.jpg" alt="Producto Destacado 3">
                </div>
                <div class="accion-imagen">
                    <img src="${pageContext.request.contextPath}/Images/ultima4.jpg" alt="Producto Destacado 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
        </section>

        <br></br>
        <br></br>

        <footer class="footer">
            <div class="footer-contenido">
                <div class="footer-logo">
                    <span>👻 Venta de Zapatos 👻</span>
                </div>
            </div>
            <div class="footer-copy">
                © Todos los derechos reservados por KinalitosClothes 👻
            </div>
        </footer>
    </body>

</html>