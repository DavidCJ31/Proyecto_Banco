<%-- 
    Document   : transferenciaCliente
    Created on : Feb 28, 2020, 9:28:27 PM
    Author     : metal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transferencia Cliente</title>
        <%@include file="/Vistas/Head.jsp"%>  
        <%@include file="/Vistas/Heder.jsp" %>
    </head>
    <body>
        <%
            int cuenta = 0;
            int cedula = 0;

            try {
                cuenta = Integer.parseInt(request.getParameter("cuent"));
                cedula = Integer.parseInt(request.getParameter("ced"));
            } catch (NumberFormatException ex) {
            }
        %>
        <div id="fondoTablaform">
            <h1 id="TituloVista">Transferencia de Cuenta <%=request.getParameter("Cuenta")%></h1>
            <div id="marg">
                <form id="formT">
                    <div class="form-group"><label>Numero de Cuenta Depositante</label>
                        <h3 class="form-control"  placeholder="Numero de Cuenta" id="NumeroCuenta" >123456789</h3>
                    </div>
                    <div class="form-group"><label>Cedula de Cuenta Depositante</label>
                        <h3 class="form-control"  placeholder="Numero de Cuenta" id="NumeroCuenta" >116670651</h3>
                    </div>
                    <div class="form-group">
                        <button id="VinculaButton" type="button" data-toggle="modal" data-target="#Modall" class="btn btn-default">
                            Cuentas Vinculadas
                        </button>
                    </div>
                    <div class="form-group"><label>Numero de Cuenta a Depositar</label>
                        <h3 class="form-control"  placeholder="Numero de Cuenta" id="NumeroCuenta" ><%=cuenta%></h3>
                    </div>
                    <div class="form-group"><label>Cedula de Cuenta a Depositar</label>
                        <h3 class="form-control" placeholder="Numero de Cuenta" id="NumeroCuenta" ><%=cedula%></h3>
                    </div>
                    
                    <button id="VinculaButton" type="submit" class="btn btn-default">
                        Transferir
                    </button>
                </form>
            </div>  
        </div>
        <div class="modal fade" id="Modall"   tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <h5 class="modal-title" id="ModalLabel">Cuentas Vinculadas</h5>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <table class="table table-bordered table-striped mb-0" id="PerfilTable">
                        <thead>
                            <tr>
                                <th id="colcorta" scope="col">#</th>
                                <th scope="col">Numero de Cuenta</th>
                                <th scope="col">Numero de Cedula</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Seleccionar</th>
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
                                    <form action="Vistas/transferenciaCliente.jsp">
                                        <input type="text" name="cuent" id="cuent" style=" display:none;" value="<%=i%>">
                                        <input type="text" name="ced" id="ced" style=" display:none;" value="<%=i%>">
                                        <button type="submit" class="btn btn-default"><img  src="../assets/imagenes/Selec.png" style=" width: 50px; height: 50px;"></button>
                                    </form>
                                </td>
                            </tr>
                            <%}%>

                        </tbody>
                    </table>

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
            lengthMenu: [[5, 10], ["5", "10"]],
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