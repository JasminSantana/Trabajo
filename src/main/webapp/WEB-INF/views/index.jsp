<%--
   Document   : index
   Author  Juan Luis Mendiola 
   Empresa SOMA
   Version 1.0
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
        <title>Transmisor Dinero</title>
        <link href="<c:url value='/assets/css/iconic.css' />"rel="stylesheet" />
        <link href="<c:url value='/assets/css/style.css' />"rel="stylesheet" />
        <script src="<c:url value= '/assets/js/prefix-free.js'/>" type="text/javascript"></script>
        <script src="<c:url value='/assets/js/pages/index.js'/>"
        type="text/javascript"></script>
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
 
    <body>
        <div class="wrap">

            <nav>
                <ul class="menu">
                    <li><a href="#">Inicio</a></li>
                    <li disabled="true"><a href="#">Pagos</a>
                        <ul>
                            <li disabled="true"><a href="#">Registrar Pago</a></li>
                            <li disabled="true"><a href="#">Cobrar Pago</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Usuarios</a>
                        <ul id="menu">
                            <li disabled="true"><a href="#">Nuevo usuario</a></li>
                            <li id="conusu"disabled="true" ><a href="#">Consulta de usuario(s)</a></li>
                            <li id="bitau"><a id="bitAcc" href="<c:url value='/bitacoraUsuario'/>">Bitacora Acciones</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Catalogos</a>
                        <ul>
                            <sec:authorize access="hasRole('ADMIN')">
                            <li><a id="giro" href="<c:url value='/giro'/>">  Admin. Giro</a></li>
                            </sec:authorize>
                            <sec:authorize access="hasRole('USER')">
                            <li><a id="delito" href="<c:url value='/delito'/>">Admin.Delito </a></li>
                            </sec:authorize>
                        </ul>
                    </li>
                    <li><a href="#">Reportes</a>
                        <ul>
                            <li><a href="#">Operaciones inusuales</a></li>
                            <li><a href="#">Operaciones Relevantes</a></li>
                            <li><a href="#">Operaciones Preocupantes</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Empresa</a>
                        <ul>
                            <li><a href="#">Entidaes</a></li>
                            <li><a href="#">Sucursales</a></li>
                        </ul>
                    </li>
                    <li><a>Cerrar sesión</a></li>
                </ul>
                <div class="clearfix"></div>
            </nav>
        </div>
    </body>

</html>
