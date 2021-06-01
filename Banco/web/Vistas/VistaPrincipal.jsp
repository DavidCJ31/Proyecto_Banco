<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal</title>
        <%@include file="/Vistas/Head.jsp"%>
    </head>

    <body>
        
        <div class="row" id="log">
            <div class="col-md-12" >
                <div class="login-dark" id="logBanco" >
                    <form action="login" method="post" >
                        <h2 class="sr-only" style=" " >Login Form</h2>
                        <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
                        <div class="form-group"><input class="form-control" type="cedúla" name="cedula" placeholder="Cédula"></div>
                        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                        <div  class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div><a class="forgot" href="#">Forgot your email or password?</a>
                        <div class="dropdown show">
                            <select class="btn btn-secondary dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="rol">
                                <option class="dropdown-item">Rol</option>
                                <option class="dropdown-item">Cliente</option>
                                <option class="dropdown-item">Supervisor</option>
                            </select>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body> 
</html>
