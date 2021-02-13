<%-- 
    Document   : appup
    Created on : 9 Nov, 2019, 10:14:09 PM
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
      PreparedStatement ps=null;
       if(s1!=null&&!s1.isEmpty())
       {
            ps=con.prepareStatement("update appointment set pid=? where apt_no=?");
            ps.setString(1,s1);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s2!=null&&!s2.isEmpty())
       {
            ps=con.prepareStatement("update appointment set apt_date=? where apt_no=?");
            ps.setString(1,s2);
            ps.setString(2,s7);
            ps.execute();
       }
       if(s3!=null&&!s3.isEmpty())
       {
            ps=con.prepareStatement("update appointment set apt_time=? where apt_no=?");
            ps.setString(1,s3);
            ps.setString(2,s7);
            ps.execute();
       }
       int i=ps.executeUpdate();
       if(i>0)
       {
          %> 
    <center><h1>APPOINTMENT UPDATED</h1></center>
    <form action="appoint.jsp" method="post"><center><button class="btn success">VIEW APPOINTMENT DETAILS</button></center></form>
    <%}
else
{
out.println("data not updated");
}
%>
    </body>
</html>
