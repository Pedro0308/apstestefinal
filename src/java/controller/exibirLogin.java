/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pedro
 */
@WebServlet(name = "exibirLogin", urlPatterns = {"/exibirLogin"})
public class exibirLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  msg = "";
        
        String nome = "";

        request.getRequestDispatcher("login.jsp").forward(request, response);    
    }
    
     protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
         processRequest(req, resp);
 
    }
     
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
  

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}