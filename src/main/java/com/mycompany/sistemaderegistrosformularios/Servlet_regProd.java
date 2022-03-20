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
@WebServlet(name = "Servlet_regProd", urlPatterns = {"/Servlet_regProd"})
public class Servlet_regProd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String producto = request.getParameter("producto");
        String categoria = request.getParameter("categoria");
        int existencia = Integer.parseInt(request.getParameter("existencia"));
        double precio = Double.parseDouble(request.getParameter("precio"));

        RegistroDeProductos regProd = new RegistroDeProductos();
        regProd.setProducto(producto);
        regProd.setCategoria(categoria);
        regProd.setExistencias(existencia);
        regProd.setPrecio(precio);

        request.setAttribute("RegistroProductos", regProd);
        request.setAttribute("3", true);

        request.getRequestDispatcher("salida.jsp?numero=3").forward(request, response);
    }

}
