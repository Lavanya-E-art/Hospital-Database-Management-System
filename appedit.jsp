<%-- 
    Document   : appedit
    Created on : 9 Nov, 2019, 10:10:52 PM
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
        <form action="appup.jsp" method="post">
                 <table align="center">
            <tr>
                <th colspan="2" style="padding: 20px;"><h1><u>CHANGE APPOINTMENT DETAILS</u></h1></th>
            </tr>
            <tr>
                <td> <font size="5">Appointment No.</font></td><td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td><font size="5"> Patient ID</font></td><td><input type="text" name="p1"></td>
            </tr>
            <tr>
                <td> <font size="5">Appointment Date/Time</font></td><td><input type="text" name="p2"></td>
            </tr>
            <tr>
                <td> <font size="5">Doctor ID</font></td><td><input type="text" name="p3"></td>
            </tr>
            <tr>
            
                <td></td><td style="padding: 20px;"><center><button class="btn success">CHANGE APPOINTMENT</button></center></td>
           
            </tr>
        </table>
                       </form>
                 
    </body>
</html>
