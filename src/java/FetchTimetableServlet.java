/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
/**
 *
 * @author SALAR
 */
@WebServlet(urlPatterns = {"/FetchTimetableServlet"})
public class FetchTimetableServlet extends HttpServlet {

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
            out.println("<title>Servlet FetchTimetableServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FetchTimetableServlet at " + request.getContextPath() + "</h1>");
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
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        HttpSession hs = request.getSession();
        
        String userID = (String) hs.getAttribute("UserID");
    
    
    
    response.setContentType("application/json");

    ObjectMapper mapper = new ObjectMapper();
    ArrayNode timetableArray = mapper.createArrayNode();

    try {
        // Initialize Supabase connection
        SupabaseHandler supabaseHandler = new SupabaseHandler();
        JsonNode jsonResponse = supabaseHandler.fetchTimetables(userID); // Fetch timetables from Supabase

        // Check if jsonResponse is an ArrayNode
        if (jsonResponse.isArray()) {
            // If it's an ArrayNode, loop through and add each item to timetableArray
            for (JsonNode node : jsonResponse) {
                timetableArray.add((ObjectNode) node);
            }
        } else {
            System.err.println("Expected an ArrayNode but got: " + jsonResponse.getClass().getSimpleName());
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    // Send the response back as a JSON string
    response.getWriter().print(timetableArray.toString());
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
