package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bking
 */
@WebServlet("/Bking")
public class Bking extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Bking() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("Country");
        String pickupPlace = request.getParameter("place");
        String arrivalDate = request.getParameter("date");
        String noAdults = request.getParameter("noAdults");
        String noChild = request.getParameter("noChild");
        String tourDuration = request.getParameter("quantity");
        String accommodation = request.getParameter("accomodation");
        String[] interests = request.getParameterValues("interest");

        List<String> errors = new ArrayList<String>();
        
        if (name.isEmpty()) {
            errors.add("Name is required.");
        }
        if (email.isEmpty()) {
            errors.add("Email is required.");
        }
        if (country.isEmpty()) {
            errors.add("Country is required.");
        }
        if (pickupPlace.isEmpty()) {
            errors.add("Pickup place is required.");
        }
        if (arrivalDate.isEmpty()) {
            errors.add("Arrival date is required.");
        }else {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            dateFormat.setLenient(false);

            try {
                Date date = dateFormat.parse(arrivalDate);
                
            } catch (ParseException e) {
               
                errors.add("Enter a valid date");
            }
        }
        if (noAdults.isEmpty()) {
            errors.add("Number of adults is required.");
        }else {
        	try {
        	    
        	    int number = Integer.parseInt(noAdults); 
        	    if (number >= 1 && number <= 20) {
        	      
        	        
        	    } else {
        	       errors.add("Enter a valid number.");
        	    }
        	} catch (NumberFormatException e) {
        	    // The string is not a valid number
        		errors.add("Enter a valid number.");
    	    }
        	}
	
        if (noChild.isEmpty()) {
            errors.add("Number of children is required.");
        }else {
        	try {
        	    
        	    int duration = Integer.parseInt(tourDuration); 
        	 
        	    if (duration >= 0 && duration <= 50) {
        	       
        	        
        	    } else {
        	       errors.add("Enter a valid number.");
        	    }
        	} catch (NumberFormatException e) {
        	    
        		errors.add("Enter a valid number.");
    	    }
        	}
        
        if (tourDuration.isEmpty()) {
            errors.add("Tour duration is required.");
        }else {
        	try {
        	    
        	    int duration = Integer.parseInt(tourDuration); 
        	 
        	    if (duration >= 1 && duration <= 50) {
        	       
        	        
        	    } else {
        	       errors.add("Enter a valid number.");
        	    }
        	} catch (NumberFormatException e) {
        	    
        		errors.add("Enter a valid number.");
    	    }
        	}
        if (accommodation == null || accommodation.isEmpty()) {
            errors.add("Preferred accommodation is required.");
        }
      
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            
             boolean isTrue;
             
        	isTrue=bookDButil.inserbooking(name, pickupPlace, tourDuration,noAdults,arrivalDate,email);
        	
          if(isTrue==true) {
        	  bookdet lastBooking = bookDButil.viewbooking();
              request.setAttribute("lastBooking", lastBooking);
        	  
        	 RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
        	 dis.forward(request, response);
          }else {
        	  RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
         	 dis2.forward(request, response);
          }
            
        }
       
	     
	 }	
}



