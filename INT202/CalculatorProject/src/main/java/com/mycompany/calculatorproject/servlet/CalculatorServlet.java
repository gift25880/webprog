/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.calculatorproject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Calculator;

/**
 *
 * @author Saraf
 */
public class CalculatorServlet extends HttpServlet {

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
        String[] initPrin = request.getParameterValues("initPrin");
        String[] intry = request.getParameterValues("intry");
        String[] intp = request.getParameterValues("intp");
        String[] year = request.getParameterValues("year");
        
        double initPrinNum = Double.valueOf(initPrin[0]);
        double intryNum = Double.valueOf(intry[0]);
        int intpNum = Integer.valueOf(intp[0]);
        int yearNum = Integer.valueOf(year[0]);
        
        Calculator cal = new Calculator(initPrinNum, intryNum, intpNum, yearNum);
//        double[] results = null;
//        for (int i = 0; i < yearNum; i++) {
//            results[i] = cal.getFuturePrincipalYear(i+1);
//        }
        
        request.setAttribute("initPrincipal", initPrinNum);
        request.setAttribute("intRY", intryNum);
        request.setAttribute("intP", intpNum);
        request.setAttribute("year", yearNum);
        request.setAttribute("future", cal);
        
        getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
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
