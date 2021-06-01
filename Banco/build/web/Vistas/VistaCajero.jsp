<%-- 
    Document   : VistaCajero
    Created on : 28/02/2020, 07:47:48 PM
    Author     : 50686
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cajero</title>
        <%@include file="/Vistas/Head.jsp"%>  
        <link rel="stylesheet" href="/assets/css/Vista_Cajero.css">
    </head>
    <body>
        <nav class="navbar">
            <div id="navbarE">
                <button class="btn btn1" data-toggle="modal" data-target="#Modall">
                    Cuenta nueva
                </button>
                <button class="btn btn1" data-toggle="modal" data-target="#Modal2" >
                    Deposito
                </button>
                <button class="btn btn1" data-toggle="modal" data-target="#Modal3">
                    Retiro
                </button>
                <a href="Vistas/transferenciaCliente.jsp">
                <button class="btn btn1" >
                    Transferencia
                </button>
                </a>
                <a href="Vistas/Perfil.jsp">
                <button class="btn btn1" >
                    Perfil
                </button>
                </a>
                <label id="usuario">->David</label>
            </div>
    </nav>
        <div id="containerCajero"> 
        <h1>Cajero</h1>
        
                <div id="fondoTabla">
            <h1 id="TituloVista">Cuentas</h1>  
            <div id="marg">
                <table class="table table-bordered table-striped mb-0 " id="example" style="">
                    <thead>
                        <tr>
                            <th id="colcorta" scope="col">#</th>
                            <th scope="col">Numero de Cuenta</th>
                            <th scope="col">Saldo</th>
                            <th scope="col">Moneda</th>
                            <th scope="col">Transferir</th>
                            <th scope="col">Detalle de Movimientos</th>
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            //int i = 0;

                            //for (Encuesta e : list) {
                            //i++;
                            for (int i = 0; i < 4; i++) {

                        %>


                        <tr style="height: 10px">
                            <td> <%= i%>   </td>
                            <td width="200">123456789456</td>
                            <td style=" "> 10000</td>
                            <td style=" ">Colones</td>
                            <td >
                                <form method="GET" action="Vistas/transferenciaCliente.jsp">
                                    <input name="Cuenta" id="Cuenta" style="display:none;" value="<%=i%>">
                                    <button  type="submit" class="btn btn-default"><img  src="../assets/imagenes/transferencia.png"  style=" width: 50px; height: 50px;"></button>
                                </form>
                            </td>
                            <td >
                                <form action="Vistas/VistaDetalleMovimientos.jsp">
                                    <button  type="submit" class="btn btn-default"><img  src="../assets/imagenes/Detalle.png"  style=" width: 50px; height: 50px;"></button>
                                    <input style=" display:none;">
                                </form>
                            </td>
                            <td width="200">
                                <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/trash3.png" style=" width: 50px; height: 50px;"></button>
                            </td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>
        </div>

    </div>
                        
                        
        <div class="modal fade" id="Modall"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <h5 class="modal-title" id="ModalLabel">Cuenta Nueva</h5>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <table class="table table-bordered table-striped mb-0" id="PerfilTable">
                        <thead>
                            <tr >
                                <th scope="col">Numero de Cuenta</th>
                                <th > <input disabled='true' style="width: 150px"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Moneda</th>
                                <th > <select> <option value="Colones">Colones</option> <option value="Dolares">Dolares</option></select> </th>
                            </tr>
                            <tr>
                                <th scope="col">Saldo</th>
                                <th > <input disabled='true' style="width: 150px" value="0"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Lim. Transferencia</th>
                                <th > <input style="width: 150px" value="10000"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Numero de Cedula</th>
                                <th > <input style="width: 150px"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Nombre Completo</th>
                                <th > <input style="width: 250px"> </th>
                            </tr>
                            <tr>
                                <th>Teléfono</th>
                                <th > <input style="width: 150px"> </th>
                            </tr>
                            <tr>
                                <th>Contraseña</th>
                                <th > <input disabled='true' style="width: 150px"> </th>
                            </tr>
                            <tr style="text-align: center;">
                                <th scope="col" colspan="2" >Crear</th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr>
                                <th style="text-align: center;"colspan="2">
                                    <form action="Vistas/transferenciaCliente.jsp">
                                        <input type="text" name="cuent" id="cuent" style=" display:none;">
                                        <input type="text" name="ced" id="ced" style=" display:none;" >
                                        <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/aceptar.png" style=" width: 50px; height: 50px;"></button>
                                        <button class="btn btn-default" data-dismiss="modal" aria-label="Close"><img  src="../assets/imagenes/cancelar.png" style=" width: 50px; height: 50px;"></button>
                                    </form>
                                </th>
                            </tr>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
                        
                        
        <div class="modal fade" id="Modal2"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <h5 class="modal-title" id="ModalLabel">Deposito</h5>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <table class="table table-bordered table-striped mb-0" id="PerfilTable">
                        <thead>
                            <tr >
                                <th scope="col">Numero de Cuenta</th>
                                <th > <input disabled='true' style="width: 150px"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Monto</th>
                                <th > <input style="width: 150px" value="0"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Iden. Depositante</th>
                                <th > <input style="width: 150px" > </th>
                            </tr>
                            <tr>
                                <th scope="col">Nombre Depositante</th>
                                <th > <input style="width: 150px" > </th>
                            </tr>
                            <tr>
                                <th scope="col">Detalle</th>
                                <th > <textarea rows="2" cols="30"></textarea> </th>
                            </tr>
                            <tr style="text-align: center;">
                                <th scope="col" colspan="2" >Depositar</th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr>
                                <th style="text-align: center;"colspan="2">
                                    <form action="Vistas/transferenciaCliente.jsp">
                                        <input type="text" name="cuent" id="cuent" style=" display:none;">
                                        <input type="text" name="ced" id="ced" style=" display:none;" >
                                        <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/aceptar.png" style=" width: 50px; height: 50px;"></button>
                                        <button class="btn btn-default" data-dismiss="modal" aria-label="Close"><img  src="../assets/imagenes/cancelar.png" style=" width: 50px; height: 50px;"></button>
                                    </form>
                                </th>
                            </tr>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        
                        
        <div class="modal fade" id="Modal3"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <h5 class="modal-title" id="ModalLabel">Retiro</h5>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <table class="table table-bordered table-striped mb-0" id="PerfilTable">
                        <thead>
                            <tr >
                                <th scope="col">Numero de Cuenta</th>
                                <th > <input disabled='true' style="width: 150px"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Monto</th>
                                <th > <input style="width: 150px" value="0"> </th>
                            </tr>
                            <tr>
                                <th scope="col">Iden. Retirante</th>
                                <th > <input style="width: 150px" > </th>
                            </tr>
                            <tr>
                                <th scope="col">Nombre Retirante</th>
                                <th > <input style="width: 150px" > </th>
                            </tr>
                            <tr>
                                <th scope="col">Detalle</th>
                                <th > <textarea rows="2" cols="30"></textarea> </th>
                            </tr>
                            <tr style="text-align: center;">
                                <th scope="col" colspan="2" >Retirar</th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr>
                                <th style="text-align: center;"colspan="2">
                                    <form action="Vistas/transferenciaCliente.jsp">
                                        <input type="text" name="cuent" id="cuent" style=" display:none;">
                                        <input type="text" name="ced" id="ced" style=" display:none;" >
                                        <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/aceptar.png" style=" width: 50px; height: 50px;"></button>
                                        <button class="btn btn-default" data-dismiss="modal" aria-label="Close"><img  src="../assets/imagenes/cancelar.png" style=" width: 50px; height: 50px;"></button>
                                    </form>
                                </th>
                            </tr>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
</body>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
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
</script>

</html>
