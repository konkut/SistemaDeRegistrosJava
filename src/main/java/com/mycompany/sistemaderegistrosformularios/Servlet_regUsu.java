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
@WebServlet(name = "Servlet_regUsu", urlPatterns = {"/Servlet_regUsu"})
public class Servlet_regUsu extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre1 = request.getParameter("nombre1");
        String apellidos1 = request.getParameter("apellidos1");
        String correo1 = request.getParameter("correo1");
        String contrasena1 = request.getParameter("contrasena1");
        
        RegistroDeUsuarios regUsu = new RegistroDeUsuarios();
        regUsu.setNombre(nombre1);
        regUsu.setApellido(apellidos1);
        regUsu.setCorreo(correo1);
        regUsu.setContraseña(contrasena1);
        
        request.setAttribute("RegistroUsuarios", regUsu);
        request.setAttribute("2", true);
        
        request.getRequestDispatcher("salida.jsp?numero=2").forward(request, response);
    }
    
}
