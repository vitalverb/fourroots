
<!--
 @Author Anil Rawat
Created on 03 April 2020
It will registered organisation.
Redirect to desire page after successfull registration.
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>How to</title>	
</head>
<body>

	
	<%@ page
		import="fourroots.Mailer"%>




		<%

	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String budget=request.getParameter("budget");
	String project=request.getParameter("project");
	Integer counsellingId=0;
	
	
	try
	{
		String adminMsg="Quotation request for Vital Verb- <br> <b>Name :</b>"+name+" <br><b>Email :</b>"+email+" <br> <b>Phone :</b>"+phone+" <br> <b>Budget :</b>"+budget+" <br> <b>Project :</b>"+project;
    	
    	Mailer.send("mail.vitalverb@gmail.com", "Quotation Request Received on "+java.time.LocalDate.now(), adminMsg);
    	
	}
	catch(Exception e){}
    


%>

<script>
         alert("Thanks, we will contact you soon");
            window.location.href = 'index.html';
         
      </script>
      
 
</body>
</html>