<%-- 
    Document   : bitacoraUsuario
    Created on : 28/10/2017, 10:19:41 AM
    Author     : Jasmin Santana
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Bootstrap CSS     -->
        <link href="<c:url value='/assets/css/bootstrap.min.css' />" rel="stylesheet" />
     
        <title>Bitacora</title>
    </head>
    <body>
        <%@include file="index.jsp"  %> 
        
        <h1>Bitacora de Acciones de Usuario</h1>
        <div class="container"> 
        <!-- Listado de Acciones-->
        <div  class="col-md-6">
            <div class="table-responsive">
                <table id="tableAcciones" class="table table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>ID Usuario</th>
                            <th>Fecha</th>
                            <th>Acción</th>
                        </tr>
                    <thead>
                    <tbody id="bodytabla">
                    <c:forEach items="${lBitaAcc}" var="bitacc" varStatus="contador">
                        <tr>
                            <td id="lBitaAcc">${bitacc.bitacoraid}</td>
                            <td>${bitacc.usuario.usuarioid}</td>
                            <td>${bitacc.fechaHora}</td>
                            <td>${bitacc.accion.accionid}</td>  

                        </tr>

                    </c:forEach>
                    </tbody>

                </table>

            </div>

        </div>
        </div>
    </body>
</html>
