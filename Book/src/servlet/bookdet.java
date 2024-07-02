package servlet;

public class bookdet {


private int id;
private String name;
private String pickupplace;
private String tourduration;
private String noOfadults;
private String date;
private String email;


public bookdet(int id,String name, String pickupplace, String tourduration, String noOfadults, String date, String email) {
	
	this.id=id;
	this.name = name;
	this.pickupplace = pickupplace;
	this.tourduration = tourduration;
	this.noOfadults = noOfadults;
	this.date = date;
	this.email = email;
}

public int getId() {
	return id;
}

public String getName() {
	return name;
}


public String getPickupplace() {
	return pickupplace;
}


public String getTourduration() {
	return tourduration;
}


public String getNoOfadults() {
	return noOfadults;
}


public String getDate() {
	return date;
}


public String getEmail() {
	return email;
}




}
