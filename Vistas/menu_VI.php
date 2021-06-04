<?php
class menu_VI
{
    function __construct(){}

    function verMenu()
    {
        require_once "modelos/accesos_MO.php";

        $conexion=new servidor('A');
        $accesos_MO=new accesos_MO($conexion);

        $arreglo_accesos=$accesos_MO->seleccionar("id_accesos",$_SESSION["id_accesos"]);
        
        $usuario=$arreglo_accesos[0]->usuario;
        ?>
        <!DOCTYPE html>
        <!--
        This is a starter template page. Use this page to start your new project from
        scratch. This page gets rid of all links and provides the needed markup only.
        -->
        <html lang="es">
        <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>AdminLTE 3 | Starter</title>

        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">

        <!-- DataTables -->
        <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

        <!-- Toastr -->
        <link rel="stylesheet" href="plugins/toastr/toastr.min.css">

        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

        <link rel="stylesheet" href="dist/css/estilos.css">

        </head>
        <body class="hold-transition sidebar-mini">

        <!-- recarga por ajax -->
        <!--<div id="div_carga"><img id="cargador" src="dist/img/bluespinner.gif" width="90"/></div>-->
        <!---------------------->

        <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->

            <!-- SEARCH FORM -->
            

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
            <!-- Messages Dropdown Menu -->
            
            <!-- Message Start -->
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link" onclick="salir()">Salir</a>
            </li>
            </ul>
                    <!-- Message End -->

                    <!-- Message Start -->
                    
                    <!-- Message End -->
                
                    <!-- Message Start -->
                    
                    <!-- Message End -->
                </a>
            </li>
            <!-- Notifications Dropdown Menu -->
            
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
            <img src="dist/img/logo4.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                style="opacity: .8">
            <span class="brand-text font-weight-light">ACADEMICO</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                <img src="dist/img/user.png" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                <a href="#" class="d-block"><?php echo $usuario;?></a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview menu">
                        <a href="index.php" class="nav-link">
                        <i class="nav-icon fa fa-bookmark"></i>
                        <p>Inicio</p>
                        </a>
                    </li>

                        <li class="nav-item has-treeview menu">
                            <a href="#" class="nav-link ">
                            <i class="nav-icon fa fa-graduation-cap"></i>
                            <p>
                            Instituciones
                            <i class="right fas fa-angle-left"></i>
                            </p>
                            </a>

                                <ul class="nav nav-treeview">
                                    <li class="nav-item has-treeview menu">
                                        <a href="#" class="nav-link ">
                                        <i class="nav-icon fa fa-university"></i>
                                        <p>
                                        Jose Eusebio Caro
                                        <i class="right fas fa-angle-left"></i>
                                        </p>
                                        </a>
                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="#" class="nav-link" > 
                                                    <i class="far fa-circle nav-icon"></i>
                                                    <p>Sede Principal</p>
                                                    </a>
                                                </li>
                                                    <li class="nav-item">
                                                        <a href="#" class="nav-link" >
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Sede Adolfo Milanes</p>
                                                        </a>
                    
                                                    </li>
                                </ul>
                                
                </ul> 
                                <ul class="nav nav-treeview">
                                    <li class="nav-item has-treeview menu">
                                        <a href="#" class="nav-link ">
                                        <i class="nav-icon fa fa-university"></i>
                                        <p>
                                        I.T.Alfonso lopez
                                        <i class="right fas fa-angle-left"></i>
                                        </p>
                                        </a>
                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="#" class="nav-link " >
                                                    <i class="far fa-circle nav-icon"></i>
                                                    <p>Sede Principal</p>
                                                    </a>
                                                </li>
                                                    <li class="nav-item">
                                                        <a href="#" class="nav-link" >
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Sede Tejarito</p>
                                                        </a>
                                                        <li class="nav-item">
                                                            <a href="#" class="nav-link" >
                                                            <i class="far fa-circle nav-icon"></i>
                                                            <p>Sede Kenedy</p>
                                                            </a>
                                                        </li>
                    
                                                    </li>
                                </ul>  
                            </ul>
                            <ul class="nav nav-treeview">
                                    <li class="nav-item has-treeview menu">
                                        <a href="#" class="nav-link ">
                                        <i class="nav-icon fa fa-university"></i>
                                        <p>
                                        I.T.Industrial
                                        <i class="right fas fa-angle-left"></i>
                                        </p>
                                        </a>
                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="#" class="nav-link " >
                                                    <i class="far fa-circle nav-icon"></i>
                                                    <p>Sede Principal</p>
                                                    </a>
                                                </li>
                                                    <li class="nav-item">
                                                        <a href="#" class="nav-link" >
                                                        <i class="far fa-circle nav-icon"></i>
                                                        <p>Sede Camilo Torres</p>
                                                        </a>
                                                    </li>
                                </ul>
                                </ul>
                                
                    <li class="nav-item has-treeview menu">
                        <a href="index.php" class="nav-link">
                        <i class="nav-icon fa fa-address-book"></i>
                        <p>Contacto</p>
                        </a>
                    </li>

                    <li class="nav-item has-treeview menu">
                        <a href="index.php" class="nav-link">
                        <i class="nav-icon fas fa-question-circle"></i>
                        <p>Ayuda</p>
                        </a>
                    </li>
                             
            <!-- /.sidebar-menu -->
            
            <!-- /.sidebar -->
        </aside>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" id="contenido">
            <!-- Content Header (Page header) -->
            <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark" >Bienvenido</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    
                </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content" >
            <div class="container-fluid">
                <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Quienes Somos</h5>
                        <br><br>
                        <p class="card-text">
                        Somos una plataforma web que presta servicios informativos relacionados con los cupos disponibles en las instituciones educativas del municipio Ocaña Norte de santander
                        </p></br>
                        <img src="dist/img/escudos.jpg" width="489" height="286" ><br><br>

                    </div>
                    </div>

                    
                </div>
                <!-- /.col-md-6 -->
                <div class="col-lg-6">
                    <div class="card">
                    <div class="card-header">
                        <h5 class="m-0">Ocaña Norte de Santander</h5>
                    </div>
                    <div class="card-body">
                        <h6 class="card-title"></h6>

                        <p class="card-text">Es conocida como la ciudad de los Caro, ciudad que posee gran riqueza histórica, cultural y paisajística.
                        Su naturaleza, su gente, su historia y el espectacular clima la hacen un sitio atractivo para visitar.</p>
                        <img src="dist/img/ocaña.png"><br><br>
                        <a href="#" class="btn btn-primary">CONOCE MAS</a>
                    </div>
                    </div>

                    
                </div>
                <!-- /.col-md-6 -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <div class="modal fade" id="ventana_modal">
            <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                <h4 class="modal-title" id="titulo_modal"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body" id="contenido_modal">
                
                </div>
            </div>
            <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
            <h5>Title</h5>
            <p>Sidebar content</p>
            </div>
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
            Anything you want
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
        </footer>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->

        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        
        <!-- DataTables -->
        <script src="plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

        <!-- Toastr -->
        <script src="plugins/toastr/toastr.min.js"></script>

        <script src="dist/js/funciones.js"></script>

        <script>


        $(document).hide().ajaxStart(function(){$("#div_carga").show();}).ajaxStop(function(){$("#div_carga").hide();});
        </script>
        </body>
        </html>
        <?php
    }
}
?>