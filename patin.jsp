<%-- 
    Document   : newjsp6
    Created on : 5 Nov, 2019, 4:07:09 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
background-image: url("i5.jpg");
margin:0;
background-repeat: no-repeat;
background-size:100%;
}
            .btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}
.success {
  border-color: #4CAF50;
  color: green;
}

.success:hover {
  background-color: #4CAF50;
  color: white;
}
h1{
    padding-top: 50px;
}
        </style>
    </head>
    
        <%  try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
   Statement st=con.createStatement();
   
          String s1=request.getParameter("p1");
          String s2=request.getParameter("p2");
          String s3=request.getParameter("p3");
          String s4=request.getParameter("p4");
          String s5=request.getParameter("p5");
          String s6=request.getParameter("p6");
          String s7=request.getParameter("p7");
          
          PreparedStatement ps=con.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");
          ps.setString(1,s1);
          ps.setString(2,s2);
          ps.setString(3,s3);
          ps.setString(4,s4);
          ps.setString(5,s5);
          ps.setString(6,s6);
          ps.setString(7,s7);
          ps.execute();
          %>
          <h1><center><font size="20"><font color="white">PATIENT DATA INSERTED SUCCESSFULLY</font></font></center></h1>
          <%
        }
        catch(Exception e)
        {
            out.println("INSERTION UNSUCCESSFULL");
        }
  %>
          <form action="patient.jsp" method="post">
  <center><button class="btn success">VIEW PATIENT DETAILS</button></center>
          </form>
 
</html>
