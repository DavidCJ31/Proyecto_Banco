<%-- 
    Document   : VistaDetalleMovimientos
    Created on : Feb 28, 2020, 4:24:25 PM
    Author     : metal
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle</title>
        <%@include file="/Vistas/Head.jsp"%>  
        <%@include file="/Vistas/Heder.jsp" %>
    </head>
    <body>

        <div id="fondoTabla">      
            <h1 id="TituloVista">Movimientos</h1>
            <div id="marg">
                <table class="table table-bordered table-striped mb-0 " id="example" style="">
                    <thead>
                        <tr>
                            <th id="colcorta" scope="col">#</th>
                            <th scope="col">Numero de Cuenta</th>
                            <th scope="col">Operacion</th>
                            <th scope="col">Monto</th>
                            <th scope="col">Detalle</th>
                            <th scope="col">Fecha</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            //int i = 0;

                            //for (Encuesta e : list) {
                            //i++;
                            for (int i = 0; i < 20; i++) {

                        %>


                        <tr style="height: 10px">
                            <td> <%= i%>   </td>
                            <td width="200">123456789456</td>
                            <td style=" "> Deposito</td>
                            <td style=" "> +<%=i + 1000 * 3%></td>
                            <td >
                                <button  type="button" onclick="enviar(<%=i%>)" data-toggle="modal" data-target="#Modal" class="btn btn-default"><img  src="../assets/imagenes/Notes.png"  style=" width: 50px; height: 50px;"></button>
                                <input type="text" id="obs<%=i%>" name="Observacion"style=" display:none;" value="observacion<%=i%>">
                            </td>
                            <td> <%= new SimpleDateFormat("dd-MM-yyyy").format(Calendar.getInstance().getTime())%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="modal fade" id="Modal"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <h3 id="DetalleMovimiento">

                    </h3>

                </div>
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
    function enviar(nombre) {
        console.log("Enviando solicitud al servlet...");
        formulario = document.getElementById("obs" + nombre);
        llave = formulario.value;
        console.log(llave);
        insertar = document.getElementById("DetalleMovimiento");
        insertar.textContent = llave;
        //formulario.submit();
    }
</script>
</body>
</html>

