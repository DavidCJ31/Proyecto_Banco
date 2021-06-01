<%-- 
    Document   : ListaCuentas
    Created on : Feb 25, 2020, 2:27:41 PM
    Author     : metal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Cuentas</title>
        <%@include file="/Vistas/Head.jsp"%>  
        <%@include file="/Vistas/Heder.jsp"%>
    </head>
    <body>


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
    </body>
</html>
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
