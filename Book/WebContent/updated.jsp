<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %> 
<%@ page import="servlet.bookdet" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GUIDE ME</title>
<style>

.error {
        background-color: #ff9999; 
        border: 1px solid #ff3333; /* Border style */
        padding: 3px; /* Padding to create spacing around the error messages */
        margin: 10px 0; /* Margin to separate error messages from other content */
        color: #ff0000; /* Text color for error messages */
        border-radius: 5px;
    }

 .error ul {
        list-style-type: disc; 
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
 table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background-color: #f5f5f5;
    }

    th {
        background-color: #333;
        color: white;
    }
    h1 {
        color: #008000; /* Green text color */
        font-size: 24px; /* Adjust font size as needed */
        text-align: center; /* Center-align the text */
        margin-top: 20px; /* Add space at the top */
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
<div class="container">
<br><br>
<h1>Updated</h1>
<h2>You can update only once</h2>
<br><br><br>
<hr>
<h2><center>Booking Details</center></h2>
  
<% bookdet lastBooking = (bookdet) request.getAttribute("lastBooking"); %>

<%try{
	%>

<form action="deletebook" method="post">

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Pickup Place</th>
            <th>Tour Duration</th>
            <th>No. of Adults</th>
            <th>Arrival Date</th>
            <th>Email</th>
        </tr>
        <tr>
        <td><input type="text" name="id" value="<%= lastBooking.getId() %>"></td>
            <td><input type="text" name="name" value="<%= lastBooking.getName() %>"></td>
            <td><input type="text" name="pickupPlace" value="<%= lastBooking.getPickupplace() %>"></td>
            <td><input type="text" name="tourDuration" value="<%= lastBooking.getTourduration() %>"></td>
            <td><input type="text" name="noOfAdults" value="<%= lastBooking.getNoOfadults() %>"></td>
            <td><input type="text" name="arrivalDate" value="<%= lastBooking.getDate() %>"></td>
            <td><input type="text" name="email" value="<%= lastBooking.getEmail() %>"></td>
        </tr>
    </table>
    <input type="submit" value="Delete">

</form>
<% } catch(Exception e){
	 e.printStackTrace();
	    out.println("An error occurred: " + e.getMessage());
} %>
<br><br><br><br>
<hr>
</div>
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