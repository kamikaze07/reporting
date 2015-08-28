<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="Reporting.Index" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stylish Portfolio - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/superhero/superhero.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">
    <link href="css/fondo.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <form id="form1" class="form-horizontal" runat="server">
      <!-- Modal -->
              <div class="modal fade" id="inicio" role="dialog">
                <div class="modal-dialog" >
                    
                  <!-- Modal content-->
                  <div class="modal-content" >
                    <div class="modal-header" >
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Inicio de Sesion</h4>
                    </div>
                    <div class="modal-body" >
                      <div class="form-group">
                          <label class="col-lg-2 control-label" for="user">Usuario</label>
                          <div class="col-lg-10">
                              <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                              <input type="text" id="user" class="form-control" placeholder="usuario" runat="server"/> 
                          </div>
                      </div>
                        <br />
                        <div class="form-group">
                            <label for="pass" class="col-lg-2 control-label">Contraseña</label>
                            <div class="col-lg-10">
                                <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                <input type="password" id="pass" class="form-control" placeholder="contraseña" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer" >
                        <div class="col-lg-4">&nbsp;</div>
                        <div class="col-lg-2">
                            <asp:Button CssClass="btn btn-primary" ID="btn_aceptar" runat="server" text="Aceptar"/>
                        </div>
                        <div class="col-lg-2">
                            <asp:Button CssClass="btn btn-primary" ID="btn_invitado" runat="server" text="Invitado"/>
                        </div>
                        <div class="col-lg-4">&nbsp;</div>
                    </div>
                  </div>
      
                </div>
              </div>
</form>

    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top"  onclick = $("#menu-close").click(); >Start Bootstrap</a>
            </li>
            <li>
                <a href="#top" onclick = $("#menu-close").click(); >Home</a>
            </li>
            <li>
                <a href="#about" onclick = $("#menu-close").click(); >About</a>
            </li>
            <li>
                <a href="#services" onclick = $("#menu-close").click(); >Services</a>
            </li>
            <li>
                <a href="#portfolio" onclick = $("#menu-close").click(); >Portfolio</a>
            </li>
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>COORDINACION OPERATIVA DE INTERVENCION A POZOS APATG</h1>
            <h4>Sistema de Captura de seguimiento a la operacion diaria de intervenciones y generación de reportes</h4>
            <br>
            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#inicio">Inicio de Sesion</button>
        </div>
    </header>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function () {
        $('a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>

</body>

</html>
