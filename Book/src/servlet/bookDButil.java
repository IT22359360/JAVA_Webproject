package servlet;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class bookDButil {

	//com.mysql.jdbc.Driver
	
	public static boolean inserbooking(String name,String pickupplace,String duration,String noOfa,String arrDate,String email) {
	
		boolean issuccess=false;
		
		 String url="jdbc:mysql://localhost:3306/kavi";
		 String userName="root";
		 String password="IT22359360";
		
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con =DriverManager.getConnection(url,userName,password);
			 Statement stmt=con.createStatement();
			 String sql="Insert into booking (Name,pickupplace,tourduration,noOfadults,arrivalDate,email)values('"+name+"','"+pickupplace+"','"+duration+"','"+noOfa+"','"+arrDate+"','"+email+"')";
			 int rs =stmt.executeUpdate(sql);
			 
			 if(rs>0) {
				 issuccess=true;
			 }else {
				 issuccess=false;
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		
		
		return issuccess;
		
	}
	public static bookdet viewbooking() {
	    bookdet b = null;

	    String url = "jdbc:mysql://localhost:3306/kavi";
	    String userName = "root";
	    String password = "IT22359360";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection(url, userName, password);
	        Statement stmt = con.createStatement();
	        String sql = "SELECT * FROM booking ORDER BY timestamp DESC LIMIT 1";
	        ResultSet rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	            String name = rs.getString("Name");
	            String pickuplace = rs.getString("pickupplace");
	            String tourduration = rs.getString("tourduration");
	            String noofadults = rs.getString("noOfadults");
	            String d_ta = rs.getString("arrivalDate");
	            String ema = rs.getString("email");
                int id=rs.getInt("timestamp");
	            b = new bookdet(id,name, pickuplace, tourduration, noofadults, d_ta, ema);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return b;
	}
	
	public static boolean updatebooking(String id, String name, String pickupPlace, String tourDuration, String noOfAdults, String arrivalDate, String email) {
		 
		String url = "jdbc:mysql://localhost:3306/kavi";
	    String userName = "root";
	    String password = "IT22359360";
	    PreparedStatement pstmt = null;
	    boolean isIpdated=false;
		try {
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        Connection con = DriverManager.getConnection(url, userName, password);
		        String sql = "UPDATE booking SET Name=?, pickupplace=?, tourduration=?, noOfadults=?, arrivalDate=?, email=? WHERE timestamp=?";
		        pstmt = con.prepareStatement(sql);
		        pstmt.setString(1,name);
		        pstmt.setString(2, pickupPlace);
	            pstmt.setString(3, tourDuration);
	            pstmt.setString(4, noOfAdults);
	            pstmt.setString(5, arrivalDate);
	            pstmt.setString(6, email);
	            pstmt.setString(7, id);
		        
		        int rs = pstmt.executeUpdate();
		        
		if(rs>0) {
			isIpdated=true;
		}
		 
		 }catch (Exception e) {
		        e.printStackTrace();
		    }
		return isIpdated;
		
	}
	public static boolean deletebooking(String id) {
		String url = "jdbc:mysql://localhost:3306/kavi";
	    String userName = "root";
	    String password = "IT22359360";
	    PreparedStatement pstmt = null;
	    
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, userName, password);
            String sql = "DELETE FROM booking WHERE timestamp=?";
       
        
        pstmt=con.prepareStatement(sql);
        pstmt.setString(1,id);
        
        int rowsAffected =pstmt.executeUpdate();
        if(rowsAffected>0) {
        	return true;
        }
	    }catch (Exception e) {
	        e.printStackTrace();
	        
	    }finally {
	    	try {
	    		if(pstmt !=null) {
	    			pstmt.close();
	    		}
	    		
	    	}catch(SQLException e) {
	    		e.printStackTrace();
	    	}
	    }
	    return false;
	}
	

	

}
