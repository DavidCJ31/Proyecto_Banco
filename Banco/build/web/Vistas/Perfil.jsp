<%-- 
    Document   : Perfil
    Created on : 28/02/2020, 05:55:03 AM
    Author     : 50686
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <%@include file="/Vistas/Head.jsp"%>  
        <%@include file="/Vistas/Heder.jsp"%>
    </head>
    <body>
        <h1 id="perfil">Perfil</h1>
        <div id="container">
            <form id="form">
                <table>
                    <tr>
                        <th>
                            <label> Nombre:</label>
                        </th>
                        <th>
                            <input placeholder="Nombre" disabled='true' > 
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label> Apellidos: </label>
                        </th>
                        <th>
                            <input placeholder="Apellidos" disabled='true'> 
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label> Cedula: </label>
                        </th>
                        <th>
                            <input placeholder="Cedúla" disabled='true'> 
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label> Teléfono: </label>
                        </th>
                        <th>
                            <input placeholder="Teléfono" disabled='true'> 
                        </th>
                    </tr>
                </table>
            </form>
        </div>
        <%
            String usuario = "Cliente";
            if ("Cajero" == usuario) {
        %>
        <div id="fondoTablaP"> 
            <h3 id="TituloVista">Cuentas Vinculadas</h1>
                <div id="marg">
                    <table class="table table-bordered table-striped mb-0" id="PerfilTable">
                        <thead>
                            <tr>
                                <th id="colcorta" scope="col">#</th>
                                <th scope="col">Numero de Cuenta</th>
                                <th scope="col">Numero de Cedula</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Eliminar Cuenta</th>
                            </tr>
                        </thead>
                        <tbody>                           

                            <%
                                //int i = 0;
                                //for (Encuesta e : list) {
                                //i++;
                                for (int i = 0; i < 4; i++) {

                            %>


                            <tr id="centro" style="height: 10px">
                                <td> <%= i%>   </td>
                                <td width="200">123456789456</td>
                                <td style=" "> 116670651</td>
                                <td style=" ">Steven</td>
                                <td>
                                    <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/trash3.png" style=" width: 50px; height: 50px;"></button>
                                </td>
                            </tr>
                            <% } %>

                        </tbody>
                    </table>
                </div>

        </div>
        <div>
            <button id="VinculaButton" type="button" data-toggle="modal" data-target="#Modall" class="btn btn-default">
                Vincular cuenta
            </button>
        </div>
                        <% }%>
        <div class="modal fade" id="Modall"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <h5 class="modal-title" id="ModalLabel">Vincular Cuenta</h5>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form>
                        <div class="modal-body" id="modBody">
                            <div class="form-group"><label>Numero de cuenta</label>
                                <input class="form-control" onkeyUp="return ValNumero(this);" type="text" placeholder="Numero de Cuenta" id="NumeroCuenta" required>
                            </div>
                            <div class="form-group"><label>Cedula</label>
                                <input class="form-control" onkeyUp="return ValNumero(this);" type="text" placeholder="Cedula" id="Ced" required></div>
                            <div class="modal-footer">
                                <button  class="btn btn-light text-left" id="" type="submit" style="">Crear</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <div id="cargando" style="visibility: hidden" class="spinner-grow text-danger" role="status">
                                    <span class="sr-only"></span>
                                </div>
                                <input type="text" name="cbe"style=" display:none;" value="">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div> 
    </body>
</html>
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $('#PerfilTable').DataTable({
            pageLength: 10,
            responsive: true,
            lengthMenu: [[10, 20, 100, -1], ["10", "20", "100", "Todos"]],
            language: {

                search: "Buscar: ",
                lengthMenu: "Elementos _MENU_  por pagina",

                info: "Mostrando  _START_  a _END_ de _TOTAL_ elementos",

                loadingRecords: "Cargando Elementos...",
                zeroRecords: "No se encontraron elementos que coincidan con los parametros de busqueda",
                emptyTable: "No hay elementos disponibles",
                paginate: {
                    first: "Primer",
                    previous: "Anterior",
                    next: "Siguiente",
                    last: "Ultimo"
                },

            }

        });
    });
    function Solo_Numerico(variable) {
        Numer = parseInt(variable);
        if (isNaN(Numer)) {
            return "";
        }
        return Numer;
    }
    function ValNumero(Control) {
        Control.value = Solo_Numerico(Control.value);
        Control.placeholder = "Ingrese un numero";
    }
    function validar(e, Control) { // 1
        cambiaHolder(Control);
        tecla = (document.all) ? e.keyCode : e.which; // 2
        if (tecla === 8)
            return true; // 3
        patron = /[A-Za-z\s]/; // 4
        te = String.fromCharCode(tecla); // 5
        return patron.test(te); // 6

    }
    function cambiaHolder(Control) {
        Control.placeholder = "Ingrese Letras";
        //  if (document.Model.encuestaExciste(Control.value.toString())) {
        //      Control.placeholder = "Encuesta ya existe";
        //      Control.value = "";
        //  }
    }

</script>