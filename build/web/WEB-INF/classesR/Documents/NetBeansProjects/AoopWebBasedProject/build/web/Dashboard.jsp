<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

 

   

    <!-- Website Title -->
    <title>Dashboard  - Time Code</title>

    <!-- Styles -->
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,600,700,700i&display=swap"
      rel="stylesheet"
    />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />

    <!-- Favicon  -->
    <link rel="icon" href="images/favicon.png" />
  </head>
  <body data-spy="scroll" data-target=".fixed-top">
      
      
      
      <% 
     
    if (session == null || session.getAttribute("UserID") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
    String userID = (String) session.getAttribute("UserID");
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
        <span class="nav-item social-icons">
          <span class="fa-stack">
            <a href="#your-link">
              <i class="fas fa-circle fa-stack-2x"></i>
              <i class="fab fa-facebook-f fa-stack-1x"></i>
            </a>
          </span>
          <span class="fa-stack">
            <a href="#your-link">
              <i class="fas fa-circle fa-stack-2x"></i>
              <i class="fab fa-twitter fa-stack-1x"></i>
            </a>
          </span>
        </span>
      </div>
    </nav>
    <!-- end of navbar -->
    <!-- end of navigation -->

    <!-- Header -->
    <header id="header" class="header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="text-container">
              <div class="countdown">
                <span id="clock"></span>
              </div>
              <h1>Make TimeTables</h1>
              <p class="p-large">
                Manage your time efficiently by using our desktop app and also on the web app, and enjoy your days without 
                being late by following your own TimeTable.
              </p>
             
            </div>
            <!-- end of text-container -->
          </div>
          <!-- end of col -->
        </div>
        <!-- end of row -->
      </div>
      <!-- end of container -->

      <!-- end of image slider -->
    </header>
    <!-- end of header -->
    <!-- end of header -->

    <!-- Contact -->
    <div id="contact" class="form-3">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="text-container">
              <h2>Contact Details</h2>
              <p>
                For registration questions please get in touch using the contact
                details below. For any questions use the form.
              </p>
              <ul class="list-unstyled li-space-lg">
                
                <li class="media">
                  <i class="fas fa-mobile-alt"></i>
                  <div class="media-body">
                    +92 68 554 332, &nbsp;&nbsp;<i class="fas fa-mobile-alt"></i
                    >&nbsp; +92 31 276 112
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-envelope"></i>
                  <div class="media-body">
                    <a class="light-gray" href="mailto:contact@zigo.com"
                      >contact@timecode.com</a
                    >
                    
                  </div>
                </li>
              </ul>
            </div>
            <!-- end of text-container -->
          </div>
          <!-- end of col -->
          <div class="col-lg-6">
            <!-- Contact Form -->
            <form id="contactForm" data-toggle="validator" data-focus="false">
              <div class="form-group">
                <input
                  type="text"
                  class="form-control-input"
                  id="cname"
                  placeholder="Name"
                  required
                />
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <input
                  type="email"
                  class="form-control-input"
                  id="cemail"
                  placeholder="Email"
                  required
                />
                
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <textarea
                  class="form-control-textarea"
                  id="cmessage"
                  required
                ></textarea>
                <label class="label-control" for="cmessage">Your message</label>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group checkbox">
                <input
                  type="checkbox"
                  id="cterms"
                  value="Agreed-to-Terms"
                  required
                />I have read and agree to Time Code's stated
                <a href="privacy-policy.html">Privacy Policy</a> and
                <a href="terms-conditions.html">Terms Conditions</a>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <button type="submit" class="form-control-submit-button">
                  SUBMIT
                </button>
              </div>
              <div class="form-message">
                <div id="cmsgSubmit" class="h3 text-center hidden"></div>
              </div>
            </form>
            <!-- end of contact form -->
          </div>
          <!-- end of col -->
        </div>
        <!-- end of row -->
      </div>
      <!-- end of container -->
    </div>
    <!-- end of form-3 -->
    <!-- end of contact -->

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
    <script type="text/javascript">

    <!-- Custom scripts -->
        
    
  </body>
</html>
