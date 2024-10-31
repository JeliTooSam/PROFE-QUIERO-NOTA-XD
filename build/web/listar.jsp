<%-- 
    Document   : login2
    Created on : 11/10/2024, 04:52:14 AM
    Author     : xuan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<cliente> Lista = (List<cliente>) request.getAttribute("Lista");
%>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="es" dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
        <link rel="stylesheet" href="style2.css" />
        <!-- Boxiocns CDN Link -->
        <link
            href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
            rel="stylesheet"
            />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" type="image/x-icon" href="img/logo.png">
    </head>
    <body>
        <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if (session.getAttribute("user") == null) {
                response.sendRedirect("login.jsp");
            }
        %>

        <div class="sidebar close">
            <div class="logo-details">
                <i class='bx bxl-gitlab' style='color:#ffffff' ></i>
                <span class="logo_name">Chocoteja</span>
            </div>
            <form action="ValidarLogin" method="GET">  
                <ul class="nav-links">
                    <li>
                        <div class="iocn-link">
                            <a href="index.jsp">
                                <i class="bx bx-home"></i>
                                <span class="link_name">Incio</span>
                            </a>
                        </div>
                    </li>

                    <li>
                        <div class="iocn-link">
                            <a href="Clientes.jsp">
                                <i class="bx bx-collection"></i>
                                <span class="link_name">Clientes</span>
                            </a>
                            <i class="bx bxs-chevron-down arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a class="link_name" href="#">Clientes</a></li>
                            <li><a href="ControlerCliente?Op=Listar">Lista</a></li>
                            <li><a href="ControlerCliente?Op=Nuevo">Nuevo</a></li>
                        </ul>
                    </li>

                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="bx bx-book-alt"></i>
                                <span class="link_name">Productos</span>
                            </a>
                            <i class="bx bxs-chevron-down arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a class="link_name" href="#kka">Productos</a></li>
                            <li><a href="#">Lista</a></li>
                            <li><a href="#">Nuevo</a></li>
                        </ul>
                    </li>

                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="bx bx-plug"></i>
                                <span class="link_name">Pedidos</span>
                            </a>
                            <i class="bx bxs-chevron-down arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a class="link_name" href="#">Pedidos</a></li>
                            <li><a href="#">Lista</a></li>
                            <li><a href="#">Nuevo</a></li>
                        </ul>
                    </li>

                </ul>
            </form>

            <div class="profile-details">
                <div class="profile-content">
                    <img src="miRey.gif" alt="profileImg" />
                </div>
                <div class="name-job" style="font-family: "Manrope", sans-serif;">
                     <div class="profile_name">Sideral</div>
                    <div class="job">LagartoTerror</div>
                </div>

                <!-- Botón de cerrar sesión fuera del formulario principal -->
                <form action="CerrarSesion" method="post" >
                    <!--  <i class="bx bx-log-out"></i>-->
                    <button type="submit" class="btn-custom" >
                        <i class="bx bx-log-out"></i>
                    </button>

                </form>

            </div>
        </div>
        <section class="home-section">
            <div class="home-content">
                <i class="bx bx-menu" style='color:#ffffff'></i>
                <div  class="text">
                    <h1 class="title">Listado de Clientes</h1>
                    <table border="1" class="table-style">
                        <tr>
                            <th>Id Cliente</th>
                            <th class="text-center">Apellidos</th>
                            <th>Nombres</th>
                            <th class="text-center">DNI</th>
                            <th colspan="3" class="text-center">Acciones</th>
                        </tr>

                        <c:forEach var="campo" items="${Lista}">
                            <tr>
                                <td>${campo.id}</td>
                                <td>${campo.apellidos}</td>
                                <td>${campo.nombres}</td>
                                <td>${campo.DNI}</td>
                                <td><a href="ControlerCliente?Op=Consultar&Id=${campo.id}">Consultar</a></td>
                                <td><a href="ControlerCliente?Op=Modificar&Id=${campo.id}">Modificar</a></td>
                                <td><a href="ControlerCliente?Op=Eliminar&Id=${campo.id}">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                    </table> 

                </div>

            </div>
        </section>
        <script>
            let arrow = document.querySelectorAll(".arrow");
            for (var i = 0; i < arrow.length; i++) {
                arrow[i].addEventListener("click", (e) => {
                    let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
                    arrowParent.classList.toggle("showMenu");
                });
            }
            let sidebar = document.querySelector(".sidebar");
            let sidebarBtn = document.querySelector(".bx-menu");
            console.log(sidebarBtn);
            sidebarBtn.addEventListener("click", () => {
                sidebar.classList.toggle("close");
            });
        </script>

        <script src="JStyle.js"></script>
    </body>
</html>
