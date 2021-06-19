<!--
 *Performs the Add Book Controller information where it send alert messages
 *DATA STRUCTURE USED:ArrayList<>;
 *Date Base Used: MySQL
 *External Jar Used: jsp-api-2.2.jar
 *Server: Apache Tomcat Version 9.0 
 *Author :Sahil Rajeev Naik
 *Date started: 20/05/2021
 *Date ended: 	12/06/2021
 *Testing :Raksha Udupi 
-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@page import="book_table.Admin_Book_Table_Model"%>
<%@page import="common.Common_Things"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<jsp:useBean id="obj_Book_Use_Bean" class="common_use_bean.Book_Use_Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj_Book_Use_Bean"/>
	
	<%
			
	
	  
	  
	   
	Admin_Book_Table_Model obj_Admin_Book_Table_Model=new Admin_Book_Table_Model();
	     
	   int flag=obj_Admin_Book_Table_Model.insert_book(obj_Book_Use_Bean);
	   
	   if(flag==1){
		   
			
			session.setAttribute("add_book_message","Book Added Successfully");
		
			
			
	   }else{

			 session.setAttribute("add_book_message","Failed");
		 
	   } 
	   
	    
	   
		%>
		
		
		 
		  
		  		 <script type="text/javascript">
						window.location.href="<%=Common_Things.url%>/admin-add-book";
				</script>
	
	
	  
</body>
</html>