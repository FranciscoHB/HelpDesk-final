<?php
// Añadimos una variable de inicio de sesión, si existe nos muestra la web
require_once("../../configuracion/conexion.php");
if (isset($_SESSION["id"])) {
?>
    <!DOCTYPE html>
    <html>
    <!-- Llamamos a nuestro Head -->
    <?php require_once("../mainhead/head.php"); ?>
    <title>Francisco Hormigos - Perfil de Usuario</title>
    </head>

    <body class="with-side-menu">

        <!-- Llamamos a nuestro Header -->
        <?php require_once("../mainheader/header.php"); ?>

        <div class="mobile-menu-left-overlay"></div>

        <!-- Llamamos a nuestra barra de menu -->
        <?php require_once("../mainnav/nav.php"); ?>

        <!-- Contenido del sitio -->
        <div class="page-content">
        <section class="box-typical">
						<div class="profile-card">
							<div class="profile-card-photo">
								<img src="../../public/img/photo-92-1.jpg" alt="foto_perfil"/>
							</div>
                                </br>
							<div class="profile-card-name"><span class="lblcontactonomx"> Nombre: <?php echo $_SESSION["nombre"] ?> </span></div>
                            <div class="profile-card-name">Apellidos: <?php echo $_SESSION["apellido1"] ?></span> <?php echo $_SESSION["apellido2"] ?></span></div>
                            </br>
                            <div class="profile-card-name">Su perfil es de tipo: <?php echo $_SESSION["rol_tipo"] ?></span></div>
						</div><!--.profile-card-->
					</section><!--.box-typical-->
        <!-- Contenido del sitio -->

        <!-- Llamamos a nuestro mainjs -->
        <?php require_once("../mainjs/js.php"); ?>
        <!-- Añadimos el script que va a controlar la vista -->
        <script type="text/javascript" src="home.js"></script>
    </body>

    </html>
<?php
    // Si no, nos devuelve al index.php
} else {
    header("Location:".conectar::ruta()."index.php");
}
?>
