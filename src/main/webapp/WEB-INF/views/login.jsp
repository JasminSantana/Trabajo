<%--
   Document   : login
   Author Jasmin Santana Mares
   Correo sant.mar.1997@gmail.com
   Fecha 16/10/2017, 09:25:41 AM
   Empresa SOMA
   Version 1.0
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <!-- Bootstrap CSS     -->
        <link href="<c:url value='/assets/css/bootstrap.min.css' />" rel="stylesheet" />
        <!--  Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <script src="<c:url value='/assets/js/pages/index.js'/>"
        type="text/javascript"></script>
        <style>

            .container{margin-top: 80px;
                       margin-bottom: 80px;}

        </style>
    </head>
    
    <body style= "background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));">

        <div class="container">
            <div class="panel panel-heading" style="background-color: #6E6E6E">
                <div class="panel panel-body"style="background-color: #D8D8D8">
                    <div class="container-fluid" style="align-content: center ">
                        <div style="width: 50%; text-align: center; ">

                            <div class="panel-title">
                                <h3>Iniciar Sesión</h3>
                            </div>

                            <c:url var="urlLogin" value="/login"/>

                            <form action="${urlLogin}" method="POST">

                                <c:if test="${param.error != null}">
                                    <div class="alert alert-danger alert-dismissable" style="text-align: center;">
                                        <strong> ¡Nickname o Contraseña Incorrectos!</strong>
                                    </div>
                                </c:if>

                                <div class="col-lg-12">
                                    <div class="col-lg-7">
                                        <div class="input-group input-sm">
                                            <input type="text" class="form-control" id="nick" name="nickname" placeholder="NickName" required>
                                            <label class="input-group-addon" for="nick"><i class="fa fa-user border-input"></i></label>   
                                        </div>
                                        <div class="input-group input-sm">
                                            <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña" required>
                                            <label class="input-group-addon border-input" for="contrasena"><i class="fa fa-lock"></i></label> 
                                        </div>
                                    </div>
                                
                                   

                                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                                    <br/>

                                </div>
                                    <div class="col-lg-12">
                                    <div class="col-lg-7">
                                     <div class="form-actions" align="center">
                                            <input id="login" type="submit" 
                                                   class="btn btn-block btn-info active" value="Continuar" >
                                 
                                    </div>
                                    </div>
                                    </div>
                            </form>

                        </div>

                    </div>
                </div>
            </div>
        </div>
</html>
