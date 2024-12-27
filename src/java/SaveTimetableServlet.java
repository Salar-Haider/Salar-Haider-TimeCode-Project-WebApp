


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
@WebServlet(urlPatterns = {"/SaveTimetableServlet"})
public class SaveTimetableServlet extends HttpServlet {

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
            out.println("<title>Servlet SaveTimetableServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaveTimetableServlet at " + request.getContextPath() + "</h1>");
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
    
    
      // assuming this is your DB handler

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
         SupabaseHandler supabaseHandler = new SupabaseHandler();
        // Read the JSON data from the request
        
        
        
    HttpSession session = request.getSession();
    String userID = (String) session.getAttribute("UserID");
        
        
        int dayCount = Integer.parseInt(request.getParameter("dayCount"));
            
        String timetableName = request.getParameter("timetableName");
        // Get day and activity data from the form

        for (int i = 1; i <= dayCount; i++) {
            
            String day = request.getParameter("day" + i + "Select");

            // Get all activities for the given day
            
            int activityCount = Integer.parseInt(request.getParameter("activityCount" + i));
            
            if (activityCount == 0){
            
            
            request.setAttribute("successMessage", "Enter AtLeast 1 Activity!");

    // Forward the request back to the createTimetable.jsp page
    RequestDispatcher dispatcher = request.getRequestDispatcher("createTimetable.jsp");
    dispatcher.forward(request, response);
            
            
            }
            
// Activity count for the day
            for (int j = 1; j <= activityCount; j++) {
                String activityName = request.getParameter("activityName" + i + "_" + j);
                String startTime = request.getParameter("startTime" + i + "_" + j);
                String endTime = request.getParameter("endTime" + i + "_" + j);

                
                
                
                
                supabaseHandler.insertTimetable(timetableName, day, startTime, endTime, activityName, userID);
                
                
                
                
            }

           
        }

        // Save the timetable entries to the database (not shown here)

        
            request.setAttribute("successMessage", "Timetable inserted successfully!");

    // Forward the request back to the createTimetable.jsp page
    RequestDispatcher dispatcher = request.getRequestDispatcher("createTimetable.jsp");
    dispatcher.forward(request, response);
            
            
            
            
            

        
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



