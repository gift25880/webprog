/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.finaleiei.servlet;

import com.mycompany.finaleiei.model.CourseList;
import com.mycompany.finaleiei.model.CourseRegisteredHistory;
import com.mycompany.finaleiei.model.Semester;
import com.mycompany.finaleiei.model.Subject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author napat
 */
public class RegistrationServlet extends HttpServlet {

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
        int semester =  Integer.parseInt(request.getParameter("semester"));
        String subjectId = request.getParameter("id");
        Subject subject = CourseList.getSubject(semester, subjectId);
        HttpSession session = request.getSession();
        CourseRegisteredHistory history = (CourseRegisteredHistory) session.getAttribute("history");
        if(history == null){
            history = new CourseRegisteredHistory();
        }
        if(subject != null){
            for(Semester sem : history.getAllRegisteredCourses()){
                if(sem.getSemester() == semester){
                    for(Subject sub : sem.getRegisteredCourse()){
                        if(sub.getSubjectId().equalsIgnoreCase(subjectId)){
                            request.getRequestDispatcher("/Result.jsp").forward(request, response);
                            return;
                        }
                    }
                    sem.registerSubject(subject);
                    session.setAttribute("history", history);
                    request.getRequestDispatcher("/Result.jsp").forward(request, response);
                    return;
                }
            }
            Semester newSem = new Semester(semester);
            newSem.registerSubject(subject);
            history.addCourseRegistered(newSem);
            session.setAttribute("history", history);
            request.getRequestDispatcher("/Result.jsp").forward(request, response);
        }
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
