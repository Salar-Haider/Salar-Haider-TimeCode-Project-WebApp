/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SALAR
 */
@WebServlet(urlPatterns = {"/changeActivityServlet"})
public class changeActivityServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet changeActivityServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet changeActivityServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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


        String preActivityName = request.getParameter("preActivityName");
        String newActivityName = request.getParameter("newActivityName");
        
        String day = request.getParameter("daySelect");
        
        SupabaseHandler sh = new SupabaseHandler();
        
        
        
        HttpSession session = request.getSession();
        String userID = (String) session.getAttribute("UserID");
        
        String timetableName = (String) session.getAttribute("timetableName");
        
        
        boolean editted = sh.updateActivityName(userID, timetableName, day, preActivityName, newActivityName);
        
        
        
        if (editted) {
                    
            request.setAttribute("errorMessage", "Successfully Changed Activity Name!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("changeActivityName.jsp");
            dispatcher.forward(request, response);
                    
                } else {

            request.setAttribute("errorMessage", "Failed to Changed Activity Name!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("changeActivityName.jsp");
            dispatcher.forward(request, response);
            
                }
        
        
        
        
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
