/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sit.int202.exam.model.CourseList;
import sit.int202.exam.model.CourseRegisteredHistory;
import sit.int202.exam.model.Semester;
import sit.int202.exam.model.Subject;

/**
 *
 * @author Saraf
 */
public class RegisterServlet extends HttpServlet {

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
        String[] semesterString = request.getParameterValues("semester");
        String[] subjectsString = request.getParameterValues("subjects");
        
        String name = "ck-"+Math.random()*10000;
        String value = new Date().toString();
        Cookie cookies = new Cookie(name, value);
        cookies.setMaxAge(2*60*60*24);
        response.addCookie(cookies);
        
        int semester = Integer.valueOf(semesterString[0]);
        Semester s = new Semester(semester);
        
        Subject[] subjects = new Subject[subjectsString.length];
        for (int i = 0; i < subjects.length; i++) {
            subjects[i] = CourseList.getSubject(semester, subjectsString[i]);
            s.registerSubject(subjects[i]);
        }
        
        HttpSession session = request.getSession();
        CourseRegisteredHistory history = (CourseRegisteredHistory) session.getAttribute("registerHistory");
        if (history == null) {
            history = new CourseRegisteredHistory();
        }
        history.addCourseRegistered(s);
        session.setAttribute("registerHistory", history);
        
        request.setAttribute("semesterNumber", semester);
        request.setAttribute("semester", s);
        
        request.getRequestDispatcher("/WEB-INF/jsp/ShowRegister.jsp").forward(request, response);
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
