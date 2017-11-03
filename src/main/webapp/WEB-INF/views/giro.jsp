<%-- 
    Document   : giro
    Created on : 24/10/2017, 10:02:07 AM
    Empresa SOMA
    Author     : Jasmin Santana
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS     -->
        <link href="<c:url value='/assets/css/bootstrap.min.css' />"
              rel="stylesheet" />
        <!--  Fonts and icons     -->
        <link
            href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
            rel="stylesheet">
        <link rel="stylesheet" type="text/css"
              href="http://cdn.datatables.net/1.10.11/css/jquery.dataTables.css">
        <script src="<c:url value= '/assets/js/jquery-1.10.2.js'/>"
        type="text/javascript"></script>
        <script src="<c:url value= '/assets/js/jquery.min.js'/>"
        type="text/javascript"></script>
        <script src="<c:url value= '/assets/js/jquery.dataTables.js'/>"
        type="text/javascript"></script>

        <script src="<c:url value='/assets/js/pages/index.js'/>"
        type="text/javascript"></script>

        <title> Administración de Catalogos</title>
    </head>
    <body>
        <div  id="contenidoPantalla"  class="panel panel-default">
            <div class="row">
                <div class="panel panel-heading">
                    <div class="row">
                        <div class="col-md-6">
                            <div> Catalogo Giro</div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Adicion de giro -->
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label></label>
                                    </div>
                                    <div class="col-md-6">
                                        <input id="idgiro" style="display:none" class="form-control">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <label>Giro</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input id="nombre" class="form-control">
                                    </div>
                                </div>													
                                <br>
                                <div class="row">
                                    <div class="btn btn-group">
                                        <button id="guardar" class="btn btn-success"
                                                onclick="agregarGiro();">Guardar</button>
                                        <button id="actualizar" onclick="actualizarGiro();" class="btn btn-primary" disabled="true" >Actualizar</button>
                                        <button id="limpiar" onclick="limpiarCajas();" class="btn btn-default">Limpiar</button>

                                    </div>
                                </div>

                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />

                            <!-- Listado de giros -->
                            <div  class="col-md-6">
                                <div class="table-responsive">
                                    <table id="tableCatalogo" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Tipo de Giro</th>
                                                <th>Editar</th>
                                                <th>Eliminar</th>
                                            </tr>
                                        <thead>
                                        <tbody id="bodytabla">
                                            <c:forEach items="${lGiro}" var="giro" varStatus="contador">
                                                <tr>
                                                    <td id="idgiro">${giro.giroid}</td>
                                                    <td>${giro.nombre}</td>
                                                    <td><button id="mostrar" onclick="mostrarNombre();" class="btn btn-default">
                                                            <span class="glyphicon glyphicon-pencil"></span> </button></td>
                                                    <td> <button id="eliminar" class="btn btn-danger" onclick="eliminarGiro();" > Eliminar </button></td>
                                                </tr>

                                            </c:forEach>
                                        </tbody>

                                    </table>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
