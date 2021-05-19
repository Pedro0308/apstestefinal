/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pedro
 */
@WebServlet(name = "exbirAdmin", urlPatterns = {"/exbirAdmin"})
public class exbirAdmin extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //ArrayList<controlle.Pessoa> pessoa = new ArrayList<pacote.Pessoa>();
        String  msg = "";
        
        String nome = "";
        
        
        nome = request.getParameter("usuario");
          
        String senha = request.getParameter("senha");
              
        
        request.setAttribute("txtuser", nome);
        request.setAttribute("txtuser", senha);
        
       
        
        request.getRequestDispatcher("telaAdmin.jsp").forward(request, response); 
        
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("admin")){
            RequestDispatcher view = request.getRequestDispatcher("telaAdmin.jsp");
            view.forward(request, response);
            
        }
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}