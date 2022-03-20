<%@page import="com.mycompany.sistemaderegistrosformularios.RegistroDeLibros"%>
<%@page import="com.mycompany.sistemaderegistrosformularios.RegistroDeProductos"%>
<%@page import="com.mycompany.sistemaderegistrosformularios.RegistroDeUsuarios"%>
<%@page import="com.mycompany.sistemaderegistrosformularios.IncripcionEnCurso"%>
<%
IncripcionEnCurso inc = (IncripcionEnCurso) request.getAttribute("incripcion");
RegistroDeUsuarios RegUsu = (RegistroDeUsuarios) request.getAttribute("RegistroUsuarios");
RegistroDeProductos RegProd = (RegistroDeProductos) request.getAttribute("RegistroProductos");
RegistroDeLibros RegLib = (RegistroDeLibros) request.getAttribute("RegistroLibros");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <img id="escudo" class="navbar-brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oRlTbvLPtYVAd62ocjengkvclk8f1eHdicuikgr3sUpM70SWsWhhlkXS8A&s"></img>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="IncripcionEnCurso.jsp">INSCRIPCION</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            REGISTROS
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="RegistroDeUsuarios.jsp">Registros de usuarios</a>
                            <div class="dropdown-divider"></div>

                            <a class ="dropdown-item" href="RegistroDeProductos.jsp">Registros de productos</a>
                            <div class="dropdown-divider"></div>
                            
                            <a class="dropdown-item" href="RegistroDeLibros.jsp">Registros de libros</a>
                        </div>

                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">administrador</a>
                    </li>
                </ul>

            </div>
        </nav>
        <%
        if (Integer.parseInt(request.getParameter("numero")) == 1){
        %>
        <h1>Datos de la Incripcion de curso:</h1>
        <p>Su nombre que ingreso: <%=inc.getNombre() %></p>
        <p>Su apellidos que ingreso: <%=inc.getApellido()%> </p>
        <p>Su curso incrito: <%=inc.getCurso()%></p>
        <%
            }
        else if (Integer.parseInt(request.getParameter("numero")) == 2){
        %>
        <h1>Datos de registro de usuarios:</h1>
        <p>Su nombre que ingreso: <%=RegUsu.getNombre() %></p>
        <p>Su apellidos que ingreso: <%=RegUsu.getApellido()%> </p>
        <p>Su correo que ingreso: <%=RegUsu.getCorreo()%></p>
        <p>Su contraseña que ingreso: <%=RegUsu.getContraseña()%></p>
        <%
            }
        else if (Integer.parseInt(request.getParameter("numero")) == 3){
        %>
        <h1>Datos de registro de Productos:</h1>
        <p>Su producto registrado: <%=RegProd.getProducto()%></p>
        <p>Su categoria elegida: <%=RegProd.getCategoria()%> </p>
        <p>Existencias del producto: <%=RegProd.getExistencias()%></p>
        <p>Su precio: <%=RegProd.getPrecio()%></p>
        <%
            }
        else if (Integer.parseInt(request.getParameter("numero")) == 4){
        %>
        <h1>Datos de registro de libros:</h1>
        <p>Su titulo: <%=RegLib.getTitulo()%></p>
        <p>Su autor: <%=RegLib.getAutor()%> </p>
        <p>Su resumen: <%=RegLib.getResumen()%></p>
        <p>Su medio: <%=RegLib.getMedio()%></p>
        <%
            }
        %>
    </body>
</html>

