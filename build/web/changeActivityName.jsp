
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Change Activity Name  - Time Code</title>
    
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,600,700,700i&display=swap"
      rel="stylesheet"
    />
    
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />

    <!-- Favicon  -->
    <link rel="icon" href="images/favicon.png" />
    
    
    <style>
        
        .form-group{
            
            display: block;
            
        }
        .btn-custom {
            padding: 1.1875rem 2.125rem;
            border-radius: 2rem;
            background-color: #ffbd50;
            color: #333;
            font: 600 0.875rem/0 "Montserrat", sans-serif;
            text-decoration: none;
            transition: all 0.2s;
            width: 250px;
            display: block;
            justify-self: center;
            margin: 15px;
        }
        .btn-custom:hover {
            background-color: transparent;
            color: #ffbd50;
            border-color: #ffbd50;
        }
        
        .activityName{
            
            width: 250px;
            display: inline-block;
            justify-self: center;
            
            border-color: #ffbd50;
            border-radius: 2rem;
            color: #ffbd50;
            background-color: transparent;
            accent-color: #ffbd50;
            padding: 2px;
            margin-left: 5px;
            
        }
        .day-panel{
            display: block;
            padding: 15px;
            margin-bottom: 10px;
        }
        
        
        .daySelect{
            
            border-color: #ffbd50;
            border-radius: 2rem;
            color: #ffbd50;
            background-color: transparent;
            width: 100px;
            padding: 3px;
            
        }
        
        
    </style>
  </head>
  <body data-spy="scroll" data-target=".fixed-top">
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
      
    
    
    

    <!<!-- Start of creating table form -->
    
    
    
    
    
    
    
    
    <h1 style="color: #ffbd50">Change Activity Name</h1>
        <form action="changeActivityServlet" method="post">
            
            
            
            <div id="daysContainer" class="day-panel">
                <!-- Day panels will be dynamically added here -->
                <div class="day-panel1" id="day">
                    <label for="daySelect" style="color:#ffbd50 ; font-size: large " >Select Day:</label>
                    <select id="daySelect" class="daySelect" name="daySelect">
                        <option value="Monday">Monday</option>
                        <option value="Tuesday">Tuesday</option>
                        <option value="Wednesday">Wednesday</option>
                        <option value="Thursday">Thursday</option>
                        <option value="Friday">Friday</option>
                        <option value="Saturday">Saturday</option>
                        <option value="Sunday">Sunday</option>
                    </select>

                </div>
            </div>
            
            
            
            
            
            
            <div class="form-group">
                <label for="activityName"><h4 style="color: #ffbd50" >Enter Previous Activity Name:</h4></label>
                <input type="text" class="activityName" id="preActivityName" name="preActivityName" placeholder="Enter Previous Activity Name" required>
            </div>
            
            
            <div class="form-group">
                <label for="activityName"><h4 style="color: #ffbd50" >Enter New Activity Name:</h4></label>
                <input type="text" class="activityName" id="newActivityName" name="newActivityName" placeholder="Enter New Activity Name" required>
            </div>
            
            
            <div class="text-center">
                <button type="submit" class="btn btn-custom" name="action" value="changeActivityName">Apply Changes</button>
                
            </div>
        </form>
    
            <div id="error-alert" class="alert alert-danger"
                style=" margin-top: 20px; justify-self: center; width:500px;   display: <%= request.getAttribute("errorMessage") != null ? "block" : "none" %>;">
                <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
            </div>
    
    
    
    
    
        

        
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
    <script src="js/displayTableScript.js"></script>
    <!-- Custom scripts -->
    
    
  </body>
</html>











  