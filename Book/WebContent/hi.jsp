<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GUIDE ME Package details</title>
<style>



.navbar-brand{
    font-family: 'Exo 2', sans-serif;
    font-size: 1rem;
}
.nav-link{
    font-size: 1.1rem;
    font-weight: 500;
}
.form-oval {
    position: relative;
}
.form-oval input[type="search"] {
    border-radius: 20px;
}
.form-oval button {
    border-radius: 20px;
}

       
        .container {
            display: flex;
            justify-content: space-between;
        }

        .column {
            flex: 1;
            padding: 20px;
            
            margin: 10px;
            text-align: center;
        }
    .tour-package {
    background-color: #fff;
    padding: 20px;
  
}


form{
background-color:white;
}

footer {
                background-color: #092C4C;
                padding: 20px 0;
                text-align: center;
                color: white;
            }
            footer a b{
                color: white;
            }

            .social-links {
                margin-top: 10px;
            }

</style>
</head>
<!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
        <!-- google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@700&display=swap" rel="stylesheet">
                    
        <!-- FONT AWESOME -->
        <script src="https://kit.fontawesome.com/44a4f6260d.js" crossorigin="anonymous"></script>
        <!-- <script src="https://kit.fontawesome.com/9ea173159c.js" crossorigin="anonymous"></script> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>


<body style=" background-color: #092C4C;">



<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
                    <a class="navbar-brand" href="#"><h2>GUIDE ME</h2></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"                   
                          data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        
                      <ul class="navbar-nav ml-auto">
                        <form class="form-inline my-2 my-lg-0 form-oval">
                            <input class="form-control mr-sm-2" type="search" placeholder="Where are you going?" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>

                        <li class="nav-item active">
                          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">FAQ</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Contact Us</a>
                        </li>
                      </ul>
                      <div class="ml-2">
                        <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Logout</button>
                        <button class="btn btn-dark ml-2 my-2 my-sm-0" type="submit">Profile</button>
                      </div>
                      
                    </div>
                </nav>
<br>
<br>
<br><br>


<div style="background-color:white;">
        <h1><center>Featured Tour Packages</center></h1>

   <div class="container">
    <div class="column">
        <div class="tour-package">
            <h3>SriLanka Island tour</h3>
            <img src="C:\Users\HP\eclipse-workspace\Book\WebContent\img\to.jpeg" width="300" height="200">
            <p>Description of the tour package.</p>
            <p>Price: Rs350,000</p>
            <a class="btn btn-outline-dark my-2 my-sm-0" href="kavi.html"style="border: 1px solid #0056b3; 
    border-radius: 5px;">Book now</a>
        </div>
    </div>

    <div class="column">
        <div class="tour-package">
            <h3>Honeymoon package</h3>
            <img src="C:\Users\HP\eclipse-workspace\Book\WebContent\img\si.jpeg" width="300" height="200">
            <p>Description of the tour package.</p>
            <p>Price: Rs250,000</p>
            <a class="btn btn-outline-dark my-2 my-sm-0" href="kavi.html"style="border: 1px solid #0056b3; 
    border-radius: 5px;">Book now</a>
        </div>
    </div>

    <div class="column">
        <div class="tour-package">
            <h3>Adventure package</h3>
            <img src="C:\Users\HP\eclipse-workspace\Book\WebContent\img\ad.jpeg" width="300" height="200">
            <p>Description of the tour package.</p>
            <p>Price: Rs100,000</p>
            <a class="btn btn-outline-dark my-2 my-sm-0" href="kavi.html"style="border: 1px solid #0056b3; 
    border-radius: 5px;">Book now</a>
        </div>
    </div>
    
</div>
      <center><a href="index.jsp"  class="btn btn-outline-dark my-2 my-sm-0" >Customize your own package</a></center>
    <br><br><br>
 </div>
 





<!-- footer -->
            <footer id="contact">
                <div class="container">
                  <p>&copy; 2023 <a href="home.html"><b>GUIDE ME</b></a> . All rights reserved.</p>
            
                  <!-- Contact Information -->
                  <p>Contact us: <a href="mailto:info@yourcompany.com">info@guideme.com</a></p>
            
                  <!-- Social Links -->
                  <div class="social-links">
                    <a href="#" target="_blank" title="Facebook"><i class="fab fa-facebook" style="color: #fff;"></i></a>
                    <a href="#" target="_blank" title="Twitter"><i class="fab fa-twitter" style="color: #fff;"></i></a>
                    <a href="#" target="_blank" title="LinkedIn"><i class="fab fa-linkedin" style="color: #fff;"></i></a>
                    <!-- Add more social links as needed -->
                  </div>
            
                  <!-- Privacy Policy Link -->
                  <p><a href="/privacy-policy">Privacy Policy</a></p>
                </div>
            </footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
