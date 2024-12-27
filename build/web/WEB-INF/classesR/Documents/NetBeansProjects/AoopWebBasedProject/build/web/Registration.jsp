<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="author" content="TimeCode" />

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
    
    <meta property="og:site_name" content="Time Code" />
    <!-- website name -->
    <meta property="og:site" content="" />  
    <!-- website link ^  -->
    <meta property="og:title" content="Registration" />
    <!-- title shown in the actual shared post -->
    <meta property="og:image" content="images/myWebLogo.jpg" />
    <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" />
    <!-- where do you want your post to link to -->
    <meta property="og:type" content="website" />

    <!-- Website Title -->
    <title>SIGNUP  - Time Code</title>

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
  <body
    data-spy="scroll"
    data-target=".fixed-top"
    style="
      background: linear-gradient(
          to bottom right,
          rgba(0, 0, 0, 0.8),
          rgba(0, 0, 0, 0.8)
        ),
        url('../images/header-background.jpg') center center no-repeat;
      background-size: cover;
    "
  >
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <!-- Text Logo - Use this if you don't have a graphic logo -->
      <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Corso</a> -->

      <!-- Image Logo -->
      <a class="navbar-brand logo-image" href="Home.jsp"
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
            <a class="nav-link page-scroll" href="Registration.jsp"
              >SIGNUP <span class="sr-only">(current)</span></a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="Login.jsp">LOGIN</a>
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
              <a class="dropdown-item" href="Details.jsp"
                ><span class="item-text">BENEFITS</span></a
              >
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="Terms-Conditions.jsp"
                ><span class="item-text">TERMS CONDITIONS</span></a
              >
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="Terms-Conditions.jsp"
                ><span class="item-text">PRIVACY POLICY</span></a
              >
            </div>
          </li>
          <!-- end of dropdown menu -->

          <li class="nav-item">
            <a class="nav-link page-scroll" href="DownloadPage.jsp">DOWNLOAD</a>
          </li>
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

    <!-- Registration -->
    <div id="register" class="form-1" >
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="text-container">
              <h2>Register Using The Form</h2>
              <p>
                It's easy to register, just fill out the form and
                click submit. Then you will be able to use
                your own TimeTable maker.
              </p>
              <ul class="list-unstyled li-space-lg">
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <strong>Your information</strong> is required to complete
                    the registration
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <strong>It's safe with us</strong> and will not be used for
                    marketing
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <strong>You will receive</strong> a confirmation email in
                    less then 1h
                  </div>
                </li>
              </ul>
            </div>
            <!-- end of text-container -->
          </div>
          <!-- end of col -->
          <div class="col-lg-6">
            <!-- Registration Form -->
            <div class="form-container">
              <form
                id="registrationForm"
                data-toggle="validator"
                data-focus="false"
                action="SignupServlet" 
                method="post"
              >
                  
                  
                  <div id="error-alert" class="alert alert-danger" role="alert" 
                style="display: <%= request.getAttribute("errorMessage") != null ? "block" : "none" %>;">
                <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
            </div>
                  
                  
                  
                  
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control-input"
                    id="rname"
                    name="rname"
                    placeholder="Enter Your Name"
                    required
                  />
                </div>
                <div class="form-group">
                  <input
                    type="email"
                    class="form-control-input"
                    id="remail"
                    name="remail"
                    placeholder="Enter Email Adress"
                    required
                  />
                </div>
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control-input"
                    id="rpass"
                    name="rpass"
                    placeholder="Enter Password"
                    required
                  />
                </div>
                <div class="form-group checkbox">
                  <input
                    type="checkbox"
                    id="rterms"
                    value="Agreed-to-Terms"
                    name="rterms"
                    required
                  />I've read and agree to TimeCode's written
                  <a href="privacy-policy.html">Privacy Policy</a> and
                  <a href="terms-conditions.html">Terms & Conditions</a>
                  <div class="help-block with-errors"></div>
                </div>
                <div class="form-group">
                  <button type="submit" class="form-control-submit-button">
                    REGISTER
                  </button>
                </div>
                <div class="form-message">
                  <div id="rmsgSubmit" class="h3 text-center hidden"></div>
                </div>
              </form>
            </div>
            <!-- end of form-container -->
            <!-- end of registration form -->
          </div>
          <!-- end of col -->
        </div>
        <!-- end of row -->
      </div>
      <!-- end of container -->
    </div>
    <!-- end of form-1 -->
    <!-- end of registration -->

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
                    <a href="Terms-Conditions.jsp">Terms & Conditions</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="Terms-Conditions.jsp">Privacy Policy</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="Details.jsp">Services Details</a>
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
                    <a href="Details.jsp">Article Details</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="Terms-Conditions.jsp">Terms & Conditions</a>
                  </div>
                </li>
                <li class="media">
                  <i class="fas fa-square"></i>
                  <div class="media-body">
                    <a href="Terms-Conditions.jsp">Privacy Policy</a>
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
    <!-- Custom scripts -->
    
  </body>
</html>
