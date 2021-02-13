<%-- 
    Document   : staffdel
    Created on : 9 Nov, 2019, 7:12:50 PM
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
background-image: url("i4_1.jpg");
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
h1 {
  color: blue;
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
       <form action="sdel.jsp" method="post">
        <table align="center">
            <tr>
                <td> <h1><font size="5">Enter Staff Id</font></td><td><input type="text" name="p1"></h1></td>
            </tr>
            <tr>
            
                <td style="padding: 20px;"><center><button class="btn success">DELETE STAFF</button></center></td>
           
            </tr>
        </table>
        </form>
    </body>
</html>
