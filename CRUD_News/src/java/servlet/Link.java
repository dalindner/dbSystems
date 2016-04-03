/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import dao.DataAccess;
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
 * @author Thang
 */
@WebServlet(name = "Link", urlPatterns = {"/Link"})
public class Link extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //request.setAttribute("AllDonation", DataAccess.getAllDonation());
        int idTemp = Integer.parseInt(request.getParameter("id"));
        int idTemp2 = Integer.parseInt(request.getParameter("id2"));
        String requestedName = request.getParameter("requestedName");
        String donatedName = request.getParameter("donatedName");
        int requestedQuantity = Integer.parseInt(request.getParameter("requestedQuantity"));
        int donatedQuantity = Integer.parseInt(request.getParameter("donatedQuantity"));
        String emailR = request.getParameter("emailR");
        request.setAttribute("AllData", DataAccess.getAllView());
        request.setAttribute("donationId", idTemp);
        request.setAttribute("requestId", idTemp2);
        request.setAttribute("emailR", emailR);
        request.setAttribute("requestedName", requestedName);
        request.setAttribute("donatedName", donatedName);
        request.setAttribute("requestedQuantity", requestedQuantity);
        request.setAttribute("donatedQuantity", donatedQuantity);
        request.setAttribute("AllData", DataAccess.getAllView());
        request.setAttribute("Unmatched", DataAccess.getUnmatchedDonation());
        RequestDispatcher rd = request.getRequestDispatcher("JSP/LinkItems.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
