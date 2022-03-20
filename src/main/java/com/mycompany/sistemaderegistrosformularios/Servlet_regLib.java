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
@WebServlet(name = "Servlet_regLib", urlPatterns = {"/Servlet_regLib"})
public class Servlet_regLib extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String medio = request.getParameter("medio");

        RegistroDeLibros regLib = new RegistroDeLibros();
        regLib.setTitulo(titulo);
        regLib.setAutor(autor);
        regLib.setResumen(resumen);
        regLib.setMedio(medio);

        request.setAttribute("RegistroLibros", regLib);
        request.setAttribute("4", true);

        request.getRequestDispatcher("salida.jsp?numero=4").forward(request, response);
    }

    
}
