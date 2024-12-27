
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

 

   

    <!-- Website Title -->
    <title>Create Timetable  - Time Code</title>

    <!-- Styles -->
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,600,700,700i&display=swap"
      rel="stylesheet"
    />
    
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />

    <!-- Favicon  -->
    <link rel="icon" href="images/favicon.png" />
    
    <style>
        
        
        
        .day-panel {
            
            padding: 15px;
            margin-bottom: 10px;
        }

        .activity-panel {
            padding: 10px;
            margin-top: 10px;
        }

        .activity-container {
            margin-top: 10px;
        }

        .btn {

            
            
            display: inline-block;
            padding: 1.1875rem 2.125rem;
            border-radius: 2rem;
            background-color: #ffbd50;
            color: #333;
            font: 600 0.875rem/0 "Montserrat", sans-serif;
            text-decoration: none;
            transition: all 0.2s;
            
        }

        .btn:hover {
            background-color: transparent;
            color: #ffbd50;
            border-color: #ffbd50;
        }

        .save-btn {
            display: inline-block;
            padding: 1.1875rem 2.125rem;
            border-radius: 2rem;
            background-color: #ffbd50;
            color: #333;
            font: 600 0.875rem/0 "Montserrat", sans-serif;
            text-decoration: none;
            transition: all 0.2s;
        }

        .save-btn:hover {
            background-color: transparent;
            color: #ffbd50;;
            border-color: #ffbd50;;        }
        
        .timetableName{
            border-color: #ffbd50;
            border-radius: 2rem;
            color: #ffbd50;
            background-color: transparent;
            accent-color: #ffbd50;
        }
        
        
        
        
        
        .day1Select{
            
            border-color: #ffbd50;
            border-radius: 2rem;
            color: #ffbd50;
            background-color: transparent;
            
        }
        
        
        
        
        
        
    </style>
  </head>
  <body data-spy="scroll" data-target=".fixed-top">
      
      
      <% 
    // Ensure the UserID session attribute is set
    String userID = (String) session.getAttribute("UserID");
    if (userID == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
        return;
    }
%>


      
      
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <!-- Text Logo - Use this if you don't have a graphic logo -->
      <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Corso</a> -->

      <!-- Image Logo -->
      <a class="navbar-brand logo-image" href="Dashboard.jsp"
        ><img src="images/mylogo.png" alt="alternative"
      /></a>

      <!-- Mobile Menu Toggle Button -->
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-awesome fas fa-bars"></span>
        <span class="navbar-toggler-awesome fas fa-times"></span>
      </button>
      <!-- end of mobile menu toggle button -->

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
         <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
            <a class="nav-link page-scroll" href="Dashboard.jsp">HOME</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link page-scroll" href="createTimetable.jsp">CREATE TABLE</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link page-scroll" href="displayTimetable.jsp">VIEW TIMETABLES</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link page-scroll" href="updateTable.jsp">MANAGE TABLES</a>
          </li>

          <!-- Dropdown Menu -->
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle page-scroll"
              href="#date"
              id="navbarDropdown"
              role="button"
              aria-haspopup="true"
              aria-expanded="false"
              >OTHER</a
            >
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href=""
                ><span class="item-text">PROFILE</span></a>
              
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="SignoutServlet"
                ><span class="item-text">SIGN OUT</span></a>
            </div>
          </li>
          <!-- end of dropdown menu -->

          
        </ul>
        
      </div>
    </nav>
    <!-- end of navbar -->
    <!-- end of navigation -->
    
    
    
    

    
    
    
    
    <header id="header" class="header">
      
    
        <%-- Check if the success message exists --%>
<% if (request.getAttribute("successMessage") != null) { %>
    <div style=" margin-top: 20px; justify-self: center; width:500px;"  class="alert alert-success" role="alert">
        <%= request.getAttribute("successMessage") %>
    </div>
<% } %>
    

    <!<!-- Start of creating table form -->
    
    
    
    
    
    
    
    
    
    
        <h1 style="color: #ffbd50">Create Timetable</h1>

        <!-- Form for creating timetable -->
        <form id="timetableForm" action="SaveTimetableServlet" method="post">
            
            
            <div class="form-group">
                <label for="timetableName" style="color:#ffbd50">Timetable Name:</label>
                <input type="text" id="timetableName" class="timetableName" name="timetableName" required />
            </div>

            
            
            <div id="daysContainer">
                <!-- Day panels will be dynamically added here -->
                <div class="day-panel" id="day1">
                    <label for="day1Select" style="color:#ffbd50 ">Select Day:</label>
                    <select id="day1Select" class="day1Select" name="day1Select">
                        <option value="Monday">Monday</option>
                        <option value="Tuesday">Tuesday</option>
                        <option value="Wednesday">Wednesday</option>
                        <option value="Thursday">Thursday</option>
                        <option value="Friday">Friday</option>
                        <option value="Saturday">Saturday</option>
                        <option value="Sunday">Sunday</option>
                    </select>

                    <div class="activity-container" id="activities1">
                        <!-- Activities will be dynamically added here -->
                    </div>

                    <input type="hidden" id="activityCount1" name="activityCount1" value="0" />
                    <button type="button" class="btn" onclick="addActivity(1)">Add Activity</button>
                </div>
            </div>

            
            <!-- Hidden input to track the number of days -->
            <input type="hidden" id="dayCount" name="dayCount" value="1" />

            <div>
            <button type="button" class="btn" onclick="addDay()">Add Another Day</button>

            
                <button type="submit" class="btn save-btn">Save Timetable</button>
            </div>
        </form>

        
    </header>
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    <!-- Footer -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="footer-col first">
              <h5>About Time Code</h5>
              <p class="p-small">
                We're passionate about helping people to manage their time efficiently
              </p>
            </div>
          </div>
          <!-- end of col -->
          <div class="col-md-3">
            <div class="footer-col second">
              <h5>Links</h5>
              <ul class="list-unstyled li-space-lg p-small">
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Terms & Conditions</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Privacy Policy</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Services Details</a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <!-- end of col -->
          <div class="col-md-3">
            <div class="footer-col third">
              <h5>Links</h5>
              <ul class="list-unstyled li-space-lg p-small">
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Article Details</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Terms & Conditions</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="">Privacy Policy</a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <!-- end of col -->
          <div class="col-md-3">
            <div class="footer-col fourth">
              <h5>Social Media</h5>
              <p class="p-small">For news & updates follow us</p>
              <a href="#your-link">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#your-link">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#your-link">
                <i class="fab fa-pinterest-p"></i>
              </a>
              <a href="#your-link">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#your-link">
                <i class="fab fa-linkedin-in"></i>
              </a>
              <a href="#your-link">
                <i class="fab fa-youtube"></i>
              </a>
            </div>
          </div>
          <!-- end of col -->
        </div>
        <!-- end of row -->
      </div>
      <!-- end of container -->
    </div>
    <!-- end of footer -->
    
    
    
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery for Bootstrap's JavaScript plugins -->

    <script src="js/scripts.js"></script>
    <script src="js/creatTableScript.js"></script>
    <!-- Custom scripts -->
    
    
    
    
  </body>
</html>











