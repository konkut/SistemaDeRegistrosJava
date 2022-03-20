<%-- 
    Document   : RegistroDeLibros
    Created on : 20-mar-2022, 4:20:02
    Author     : luis
--%>

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
        <h1>Registro de libros: </h1>
        <form action="Servlet_regLib" method="post">
            
            <label for="titulo">Titulo:</label>
            <input type="text" id="titulo" name ="titulo" placeholder="Ingrese su titulo" required></input><br>
            <label for="autor">Autor:</label>
            <input type="text" id="autor" name ="autor" placeholder="Ingrese su autor" required></input><br>
            
            <label for="resumen">Resumen:</label>
            <textArea id="resumen" name="resumen"></textArea> <br>
            <label for="medio">Medio:</label><br>
            <input type="radio" id="medio" name="medio" value="Fisico" required> Fisico</input> <br> 
            <input type="radio" id="medio" name="medio" value="Magnetico" required> Magnetico</input>  <br>
            
            <input type="submit" value="Enviar"></input>
        </form>
    </body>
</html>
