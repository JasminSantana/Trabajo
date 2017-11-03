
$(document).ready(function () {
    $('#tableCatalogo').DataTable();
    //completaInputs(); 
});

function agregarDelito() {
    var nombre = $("#nombre").val();
    if (nombre == '') {
        alert("El delito no puede ir vacío");
        return;
    }
    var datos = [nombre];
    $(document).ajaxSend(function (e, xhr, options) {
        var token = $("input[name='_csrf']").val();
        var cabecera = "X-CSRF-TOKEN";
        xhr.setRequestHeader(cabecera, token);
    });
    $.ajax({
        url: "delito/agregarDelito",
        data: {datos: datos},
        dataType: 'html',
        type: 'POST',
        success: function (retorno) {
            //alert(retorno);
            switch (retorno) {
                case 'errorDato':
                    alert("Los datos no se procesaron correctamente");
                    break;
                case 'error':
                    alert("Se ha producido un error en el servidor");
                    break;
                case 'exito':
                    //carga lo que se indica en id DIV
                    $("#contenidoPantalla").load("delito");
                    break;
                case 'errorAcceso':
                    alert("No ha iniciado sesion");
                    break;
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("Se ha producido un error en el servidor");
        }
    });
}
function mostrarNombre() {
    //al dar clic lo que tiene en el renglo lo pase a la caja de texto
    var tablaCatalogo = $("#tableCatalogo").DataTable();
    $("#tableCatalogo tbody").on('click', 'tr', function () {
        var idT = $('td', this).eq(0).text();
        $("#delid").val(idT);
        
        var idgiT = $('td', this).eq(0).text();
        $("#idgiro").val(idgiT);
        
        var nombreT = $('td', this).eq(1).text();
        $("#nombre").val(nombreT);
    });
    $("#guardar").prop("disabled", true);
    $("#actualizar").prop("disabled", false);
    }

function actualizarDelito() {
   var id = $("#delid").val();
    var nombre = $("#nombre").val();
    if ((nombre == '')&&( id='')) {
        alert("El delito no puede ir vació");
        return;
    }
    var datos = [id,nombre];
    $(document).ajaxSend(function (e, xhr, options) {
        var token = $("input[name='_csrf']").val();
        var cabecera = "X-CSRF-TOKEN";
        xhr.setRequestHeader(cabecera, token);
    });
    $.ajax({
        url: "delito/actualizarDelito",
        data: {datos: datos},
        dataType: 'html',
        type: 'POST',
        success: function (retorno) {
            //alert(retorno);
            switch (retorno) {
                case 'errorDato':
                    alert("Los datos no se procesaron correctamente");
                    break;
                case 'error':
                    alert("Se ha producido un error en el servidor");
                    break;
                case 'exito':
                    //carga lo que se indica en id DIV
                    $("#contenidoPantalla").load("delito");
                    break;
                case 'errorAcceso':
                    alert("No ha iniciado sesion");
                    break;
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("Se ha producido un error en el servidor");
        }

    });

}
function eliminarDelito() {
    var tablaDelito = $("#tableCatalogo").DataTable();
    $("#tableCatalogo tbody").on('click', 'tr', function () {
        var idT = $('td', this).eq(0).text();
        $("#iddelito").val(idT);
        var id = $("#iddelito").val();
        if (id == '') {
            alert("El delito no puede ir vació");
            return;
        }
        var datos = [id];
        $(document).ajaxSend(function (e, xhr, options) {
            var token = $("input[name='_csrf']").val();
            var cabecera = "X-CSRF-TOKEN";
            xhr.setRequestHeader(cabecera, token);
        });

        $.ajax({
            url: "delito/eliminarDelito",
            data: {datos: datos},
            dataType: 'html',
            type: 'POST',
            success: function (retorno) {
                //alert(retorno);
                switch (retorno) {
                    case 'errorDato':
                        alert("Los datos no se procesaron correctamente");
                        break;
                    case 'error':
                        alert("Se ha producido un error en el servidor");
                        break;
                    case 'exito':
                        //carga lo que se indica en id DIV
                        $("#contenidoPantalla").load("delito");
                        break;
                    case 'errorAcceso':
                        alert("No ha iniciado sesion");
                        break;
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Se ha producido un error en el servidor");
            }
        });

    });

}
function agregarGiro() {
    var nombre = $("#nombre").val();
    if (nombre == '') {
        alert("El giro no puede ir vacío");
        return;
    }
    var datos = [nombre];
    $(document).ajaxSend(function (e, xhr, options) {
        var token = $("input[name='_csrf']").val();
        var cabecera = "X-CSRF-TOKEN";
        xhr.setRequestHeader(cabecera, token);
    });
    $.ajax({
        url: "giro/agregarGiro",
        data: {datos: datos},
        dataType: 'html',
        type: 'POST',
        success: function (retorno) {
            //alert(retorno);
            switch (retorno) {
                case 'errorDato':
                    alert("Los datos no se procesaron correctamente");
                    break;
                case 'error':
                    alert("Se ha producido un error en el servidor");
                    break;
                case 'exito':
                    //carga lo que se indica en id DIV
                    $("#contenidoPantalla").load("giro");
                    break;
                case 'errorAcceso':
                    alert("No ha iniciado sesion");
                    break;
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("Se ha producido un error en el servidor");
        }

    });
}
function actualizarGiro() {
    var id = $("#idgiro").val();
    var nombre = $("#nombre").val();
    if (nombre == '') {
        alert("El giro no puede ir vació");
        return;
    }
    var datos = [id,nombre];
    $(document).ajaxSend(function (e, xhr, options) {
        var token = $("input[name='_csrf']").val();
        var cabecera = "X-CSRF-TOKEN";
        xhr.setRequestHeader(cabecera, token);
    });
    $.ajax({
        url: "giro/actualizarGiro",
        data: {datos: datos},
        dataType: 'html',
        type: 'POST',
        success: function (retorno) {
            //alert(retorno);
            switch (retorno) {
                case 'errorDato':
                    alert("Los datos no se procesaron correctamente");
                    break;
                case 'error':
                    alert("Se ha producido un error en el servidor");
                    break;
                case 'exito':
                    //carga lo que se indica en id DIV
                    $("#contenidoPantalla").load("giro");
                    break;
                case 'errorAcceso':
                    alert("No ha iniciado sesion");
                    break;
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("Se ha producido un error en el servidor");
        }
    });
}
function eliminarGiro() {
    var tablaDelito= $("#tableCatalogo").DataTable();
    $("#tableCatalogo tbody").on('click', 'tr', function () {
        var idT = $('td', this).eq(0).text();
        $("#idgiro").val(idT);
        var id = $("#idgiro").val();
        if (id == '') {
            alert("El giro no puede ir vació");
            return;
        }
        var datos = [id];
        $(document).ajaxSend(function (e, xhr, options) {
            var token = $("input[name='_csrf']").val();
            var cabecera = "X-CSRF-TOKEN";
            xhr.setRequestHeader(cabecera, token);
        });

        $.ajax({
            url: "giro/eliminarGiro",
            data: {datos: datos},
            dataType: 'html',
            type: 'POST',
            success: function (retorno) {
                //alert(retorno);
                switch (retorno) {
                    case 'errorDato':
                        alert("Los datos no se procesaron correctamente");
                        break;
                    case 'error':
                        alert("Se ha producido un error en el servidor");
                        break;
                    case 'exito':
                        //carga lo que se indica en id DIV
                        $("#contenidoPantalla").load("giro");
                        break;
                    case 'errorAcceso':
                        alert("No ha iniciado sesion");
                        break;
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Se ha producido un error en el servidor");
            }
        });

    });

}
function completaInputs() {
    var tablaDelito = $("#tableDelito").DataTable();
    $("#tableDelito tbody").on('click', 'tr', function () {
        var nombreT = $('td', this).eq(1).text();
        $("#nombre").val(nombreT);
    });
}


function limpiarCajas() {
    $("#nombre").val("");
}
//tomar el valor de quien se loguea 
function menu(){
    var user=$("#nick").val()
    if(user=='user'){
  $("#conusu").prop('disabled', true);
    }
    alert("NO es usuario tipo user");
}
