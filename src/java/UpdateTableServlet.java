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
@WebServlet(urlPatterns = {"/UpdateTableServlet"})
public class UpdateTableServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateTableServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateTableServlet at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        String tableName = request.getParameter("tableName");
        
        HttpSession session = request.getSession();
        
        session.setAttribute("timetableName", tableName);
        
        String userID = (String) session.getAttribute("UserID");
        
        
        
        String action = request.getParameter("action");
        
        if (tableName == null || tableName.trim().isEmpty()) {
            response.getWriter().write("<script>alert('Please enter a table name!');window.history.back();</script>");
            return;
        }
        
        // Handle actions based on the button clicked
        switch (action) {
            case "changeActivityName":
                // Redirect to a JSP or perform logic for changing activity name
                request.getRequestDispatcher("changeActivityName.jsp").forward(request, response);
                break;

            case "changeTiming":
                // Redirect to a JSP or perform logic for changing timing
                request.getRequestDispatcher("updateActivityTime.jsp").forward(request, response);
                break;

            case "deleteActivity":
                // Logic for deleting an activity
                request.getRequestDispatcher("DeleteActivity.jsp").forward(request, response);
                break;
                
                
            case "addActivity":
                // Logic for deleting an activity
                request.getRequestDispatcher("addActivity.jsp").forward(request, response);
                break;
                

            case "deleteTable":
                // Logic for deleting the table (placeholder for actual database operations)
                boolean isDeleted = deleteTable(tableName , userID); // Simulate database deletion
                if (isDeleted) {
                    request.setAttribute("errorMessage", "Successfully Deleted TimeTable!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("updateTable.jsp");
                    dispatcher.forward(request, response);


                } else {
                    request.setAttribute("errorMessage", "No TimeTable Exist With This Name!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("updateTable.jsp");
                    dispatcher.forward(request, response);

                }
                break;

            default:
                response.getWriter().write("<script>alert('Invalid action!');window.history.back();</script>");
        }
    }

    // Placeholder method for deleting the table (replace with actual database logic)
    private boolean deleteTable(String tableName , String userID) {
        
        
         SupabaseHandler sh = new SupabaseHandler();
         
         boolean deleted = sh.deleteTimetable(userID, tableName);
        
        
        
        // Simulate successful deletion
        return deleted;
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
