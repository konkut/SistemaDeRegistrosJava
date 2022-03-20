/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.sistemaderegistrosformularios;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luis
 */
@WebServlet(name = "Servlet_IncCurso", urlPatterns = {"/Servlet_IncCurso"})
public class Servlet_IncCurso extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String curso = request.getParameter("curso");

        IncripcionEnCurso inc = new IncripcionEnCurso();
        inc.setNombre(nombre);
        inc.setApellido(apellidos);
        inc.setCurso(curso);


        request.setAttribute("incripcion", inc);

        request.getRequestDispatcher("salida.jsp?numero=1").forward(request, response);
    }

}
