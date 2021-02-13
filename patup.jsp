<%-- 
    Document   : patup
    Created on : 6 Nov, 2019, 10:06:27 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
             body{
background-image: url("i5.jpg");
background-color: white;
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
h1 {
  color: blue;
  font-family: verdana;
  font-size: 200%;
  padding-top: 10px;
}
        </style>
    </head>
    <body>
        <%Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
        %>
       <%String s7 = request.getParameter("id");
       String s1=request.getParameter("p1");
       String s2=request.getParameter("p2");
       String s3=request.getParameter("p3");
       String s4=request.getParameter("p4");
       String s5=request.getParameter("p5");
       String s6=request.getParameter("p6");
      PreparedStatement ps=null;
       if(s1!=null&&!s1.isEmpty())
       {
            ps=con.prepareStatement("update patient set fname=? where pid=?");
            ps.setString(1,s1);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s2!=null&&!s2.isEmpty())
       {
            ps=con.prepareStatement("update patient set lname=? where pid=?");
            ps.setString(1,s2);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s3!=null&&!s3.isEmpty())
       {
            ps=con.prepareStatement("update patient set gender=? where pid=?");
            ps.setString(1,s3);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s4!=null&&!s4.isEmpty())
       {
            ps=con.prepareStatement("update patient set address=? where pid=?");
            ps.setString(1,s4);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s5!=null&&!s5.isEmpty())
       {
            ps=con.prepareStatement("update patient set phno=? where pid=?");
            ps.setString(1,s5);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s6!=null&&!s6.isEmpty())
       {
            ps=con.prepareStatement("update patient set did=? where pid=?");
            ps.setString(1,s6);
            ps.setString(2,s7);
            ps.execute();
       }
       int i=ps.executeUpdate();
       if(i>0)
       {
          %> 
    <center><h1>PATIENT DATA UPDATED SUCCESSFULLY</h1></center>
    <form action="patient.jsp" method="post"><center><button class="btn success">VIEW PATIENT DETAILS</button></center></form>
    <%}
else
{
out.println("data not updated");
}
%>
       
    </body>
</html>
