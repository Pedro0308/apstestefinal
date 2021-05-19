package controller;


import dao.ContinentesDao;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Continentes;


@WebServlet(name = "Continentes", urlPatterns = {"/ContinentesController"})
public class ContinentesController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/continentes.jsp";
    private static String LIST_CONT = "/telaAdmin.jsp";
    private ContinentesDao dao;

    public ContinentesController() {
        super();
        dao = new ContinentesDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int cdCont = Integer.parseInt(request.getParameter("cdCont"));
            dao.deleteContinentes(cdCont);
            forward = LIST_CONT;
            request.setAttribute("continentes", dao.getAllContinentes()); 
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int cdCont = Integer.parseInt(request.getParameter("cdCont"));
            Continentes continentes = dao.getContinentesByCd(cdCont);
            request.setAttribute("continentes", continentes);
            
        } else if (action.equalsIgnoreCase("listContinentes")){
            forward = LIST_CONT;
            request.setAttribute("continentes", dao.getAllContinentes());
            
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Continentes continentes = new Continentes();
        continentes.setNomeCont(request.getParameter("nome"));
        continentes.setPopulacaoCont(Long.parseLong(request.getParameter("populacao")));
        continentes.setTamanhoCont(Long.parseLong(request.getParameter("tamanho")));
        
        String cdCont = request.getParameter("cdCont");
        if(cdCont == null || cdCont.isEmpty())
        {
            dao.addContinente(continentes);
        }
        else
        {
            continentes.setCdCont(Integer.parseInt(cdCont));
            dao.updateContinentes(continentes);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_CONT);
        request.setAttribute("continentes", dao.getAllContinentes());
        view.forward(request, response);
    }
}