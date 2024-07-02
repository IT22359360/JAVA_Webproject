<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GUIDE ME:booking</title>
<style>

.error {
        background-color: #ff9999; /* Background color for error messages */
        border: 1px solid #ff3333; /* Border style */
        padding: 3px; /* Padding to create spacing around the error messages */
        margin: 10px 0; /* Margin to separate error messages from other content */
        color: #ff0000; /* Text color for error messages */
        border-radius: 5px;
    }

    .error ul {
        list-style-type: disc; /* Style for the bullet points in the error message list */
    }

.container1 {
    background-color: #f4f4f4; 
    padding: 20px; 
    border: 1px solid #ccc; 
    border-radius: 5px; 
    margin: 20px auto; 
    max-width: 800px; 
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); 
    text-align: left; }

form {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
   
}

/* Style form labels */
label {
    display: block;
    margin-bottom: 7px;
    font-weight: bold;
}


input[type="text"],
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}


input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
input[type="reset"] {

    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="reset"]:hover {
    background-color: #45a049;
}

input[type="submit"]:hover {
    background-color: #45a049;
}


a {
    color: #1e90ff;
    text-decoration: none;
}


a:hover {
    text-decoration: underline;
}




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


<br><br><br><br><hr>
<div style="background-color:white;">
<h3>CUSTOMIZE YOUR TOUR</h3>
<p>We offer you the option of custom designing your own holiday. You are a unique individual, with your own taste and desires. We recognize that not everybody enjoys the same thing. We have the expertise to help you create your own package incorporating your preferences and hopefully exceed your expectation</p><br>

<%@ page import="java.util.List" %>
<% 
  List<String> errors = (List<String>) request.getAttribute("errors");
if (errors != null && !errors.isEmpty()) { 
%>
<div class="error">
    <ul>
    <% for (String error : errors) { %>
        <li><%= error %></li>
    <% } %>
    </ul>
</div>
<% } %>
<div class ="container1">
    <legend>Booking:</legend> 
<form action="insert" method="post">
<br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name">
    
    

    <label for="email">Email:</label>
    <input type="email" id="email" name="email"><br><br>

   

    <label for="Country">Country:</label>
    <input type="text" id="Country" name="Country"><br><br>
    

    <label for="place">Pickup place:</label>
    <input type="text" id="place" name="place">
    
    
  <label for="date">Arrival Date:</label>
    <input type="text" id="date" value ="(yyyy-MM-dd)"name="date"><br><br>

 <label for="noAdults">Number of adults:</label>
  <input type="text" id="noAdults" name="noAdults"  >

<label for="noChild">Number of children:</label>
  <input type="text" id="noChild" name="noChild"  ><br><br>

 <label for="duration">Tour Duration(Days):</label>
  <input type="number" id="quantity" name="quantity"  ><br><br>

    <label for="accomodation">preferred accommodation:</label>
<select id="accomodation" name="accomodation">
  <option value="Villa">Villa</option>
  <option value="Boutique">Boutique</option>
  <option value="Deluxe">Deluxe</option>
  <option value="Superior">Superior</option>
</select><br><br>
  

   <label for="interest">Your Interest</label><br>
  <input type="checkbox" id="interest1" name="interest1" value="Culture">
  <label for="interest1"> History and Culture</label><br>

  <input type="checkbox" id="interest2" name="interest2" value="Wild">
  <label for="interest2"> Wild life</label><br>

  <input type="checkbox" id="interest3" name="interest3" value="Beach">
  <label for="interest3"> Beach escapes</label><br>

  <input type="checkbox" id="interest4" name="interest4" value="family" >
  <label for="interest4"> Family travel</label><br>

   <input type="checkbox" id="interest5" name="interest5" value="Honeymoon">
  <label for="interest5"> Perfect honeymoon</label><br><br>

    
    <input type="submit" value="Book">
     <input type="reset" value="Reset">
  </form>

</div>
<br><br><hr><br><br>





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