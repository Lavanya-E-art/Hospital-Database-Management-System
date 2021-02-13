<%-- 
    Document   : docdel
    Created on : 9 Nov, 2019, 2:00:02 PM
    Author     : Lavanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
background-image: url("i4.jpg");
background-color: white;
background-repeat: no-repeat;
background-size:100%;
}
.btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 14px 28px;
  padding-top: 10px;
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
  color: skyblue;
  font-family: verdana;
  font-size: 200%;
  padding-top: 10px;
}
input[type="text"] {
    width: 200px;
    height: 25px;
    padding-top: 10px;
}
        </style>
    </head>
    <body>
       <form action="ddel.jsp" method="post">
        <table align="center">
            <tr>
                <td> <font size="5"><h1>Enter Doctor Id</font></td><td><input type="text" name="p1"></h1></td>
            </tr>
            <tr>
            
                <td style="padding: 20px;"><center><button class="btn success">DELETE DOCTOR</button></center></td>
           
            </tr>
        </table>
        </form>
    </body>
</html>
