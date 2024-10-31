<%-- 
    Document   : login2
    Created on : 11/10/2024, 04:52:14 AM
    Author     : xuan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <link rel="icon" type="image/x-icon" href="img/logo.png">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />

        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />

        <link rel="stylesheet" href="styles.css" />
        <link
            href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
            rel="stylesheet"
            />
    </head>

    <style>
        .btn-neon {
            position: relative;
            display: inline-block;
            padding: 5px 0px;
            color: #fff;
            letter-spacing: 10px;
            text-decoration: none;
            font-size: 20px;
            overflow: hidden;
            border: none; 
            background: transparent; 
            cursor: pointer; 
            transition: 0.1s;
        }

        .btn-neon:hover {
            background: #8400ff;
            box-shadow: 0 0 10px #8400ff, 0 0 40px #8400ff, 0 0 80px #8400ff;
            transition-delay: 0.30s;
        }

        .btn-neon span {
            position: absolute;
            display: block;
        }

        #span1 {
            top: 0;
            left: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, #8400ff);
        }

        .btn-neon:hover #span1 {
            left: 100%;
            transition: 0.30s;
        }

        #span3 {
            bottom: 0;
            right: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(270deg, transparent, #8400ff);
        }

        .btn-neon:hover #span3 {
            right: 100%;
            transition: 1s;
            transition-delay: 0.16s;
        }

        #span2 {
            top: -100%;
            right: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(180deg, transparent, #8400ff);
        }

        .btn-neon:hover #span2 {
            top: 100%;
            transition: 1s;
            transition-delay: 0.8s;
        }

        #span4 {
            bottom: -100%;
            left: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(360deg, transparent, #8400ff);
        }

        .btn-neon:hover #span4 {
            bottom: 100%;
            transition: 1s;
            transition-delay: 0.24s;
        }

    </style>

    <body>
        <!--    <div class="login-container">
                <h1>Inicio de Sesión</h1>
                <form action="Login" method="post">   
                    <table>
                        <tr>
                            <td>Usuario</td>
                            <td><input type="text" name="txtUsuario" required></td>
                        </tr>
                        <tr>
                            <td>Clave</td>
                            <td><input type="password" name="txtClave" required></td>
                        </tr> 
                    </table>        
                    <input type="submit" name="validar" value="Aceptar"> 
                </form>
            </div>
        -->

        <div class="container">
            <div
                class="row justify-content-center align-items-center"
                style="height: 100vh"
                >
                <div class="col-4" style="width: 80vh">
                    <div class="d-flex align-items-center" style="height: 100%">

                        <i class='bx bxl-gitlab hello' style='color:#ffffff; font-size: 150px; padding-right: 3rem' ></i>
                        <!--<span class="hello me-3" style="padding-right: 3rem">Sky</span>-->

                        <!-- Contenedor "Hello!" -->
                        <div class="card border-0 flex-grow-1">
                            <!-- Tarjeta del formulario -->
                            <div class="card-body border_estilos" style="padding-left: 3rem">
                                <form action="ValidarLogin" method="post">
                                    <p>Ingresar a su cuenta</p>
                                    <div class="mb-3">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="username"
                                            name="txtUsuario"
                                            placeholder="Correo Electrónico"
                                            required
                                            />
                                    </div>
                                    <div class="mb-3 input-container">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="password"
                                            name="txtClave"
                                            placeholder="Contraseña"
                                            required
                                            />

                                        <i
                                            class="fas fa-eye toggle-password"
                                            id="togglePassword"
                                            ></i>
                                    </div>
                                    <!--  <input  type="submit" name="validar" value="Aceptar" class="w-100 btn btn-outline-danger"> -->
                                    <button class="btn-neon w-100" type="submit" name="validar" >
                                        <span id="span1"></span>
                                        <span id="span2"></span>
                                        <span id="span3"></span>
                                        <span id="span4"></span>
                                        Entrar
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const togglePassword = document.getElementById("togglePassword");
            const passwordInput = document.getElementById("password");

            togglePassword.addEventListener("click", function () {
                // Cambia el tipo del input entre 'password' y 'text'
                const type =
                        passwordInput.getAttribute("type") === "password"
                        ? "text"
                        : "password";
                passwordInput.setAttribute("type", type);

                // Cambia el ícono del ojo
                this.classList.toggle("fa-eye-slash");
                this.classList.toggle("fa-eye");
            });
        </script>
    </body>
</html>
