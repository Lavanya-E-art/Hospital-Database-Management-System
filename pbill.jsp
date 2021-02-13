<%-- 
    Document   : pbill
    Created on : 9 Nov, 2019, 1:04:45 PM
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
        </style>
    </head>
    <body>
        <form action="patb.jsp" method="post">
        <table align="center">
            <tr>
                <td> <font size="5"><font color="white">Enter Patient Id</font></font></td><td><input type="text" name="p1"></td>
            </tr>
            <tr>
            
                <td style="padding: 20px;"><center><button class="btn success">VIEW PATIENT BILL</button></center></td>
           
            </tr>
        </table>
        </form>
    </body>
</html>
