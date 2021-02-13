<%-- 
    Document   : newjsp8
    Created on : 5 Nov, 2019, 11:12:02 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String id=request.getParameter("id");
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from patient where pid="+id);

   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
background-image: url("i7.png");
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
}
input[type="text"] {
    width: 200px;
    height: 25px;
}
        </style>
    </head>
        <body>
         
            <form action="patup.jsp" method="post">
                 <table align="center">
            <tr>
                <th colspan="2" style="padding: 20px;"><h1><u>CHANGE/UPDATE PATIENT DETAILS</u></h1></th>
            </tr>
            <tr>
                <td> <font size="5">Patient Id</font></td><td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td> <font size="5">Patient First Name</font></td><td><input type="text" name="p1"></td>
            </tr>
            <tr>
                <td> <font size="5">Patient Last Name</font></td><td><input type="text" name="p2"></td>
            </tr>
            <tr>
                <td> <font size="5">Patient Gender</font></td><td>Male<input type="radio" value="M" name="p3">Female<input type="radio" value="F" name="p3"></td>
            </tr>
            <tr>
                <td> <font size="5">Patient Address</font></td><td><input type="text" name="p4"></td>
            </tr>
            <tr>
                <td> <font size="5">Patient Phone Number</font></td><td><input type="text" name="p5"></td>
            </tr>
            <tr>
                <td> <font size="5">Doctor Id</font></td><td><input type="text" name="p6"></td>
            </tr>
            <tr>
            
                <td style="padding: 20px;"><center><button class="btn success">UPDATE PATIENT</button></center></td>
           
            </tr>
        </table>
                       </form>
                 
        <%}
        catch(Exception e)
        {
            out.println(e);
        }
        %>
        </body>
   
</html>
