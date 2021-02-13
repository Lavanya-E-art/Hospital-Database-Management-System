<%-- 
    Document   : docedit
    Created on : 9 Nov, 2019, 2:00:22 PM
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
background-image: url("i7.jpg");
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
        <form action="docup.jsp" method="post">
        <table align="center">
            <tr>
                <th colspan="2" style="padding: 20px;"><h1><u>CHANGE/UPDATE DOCTOR DETAILS</u></h1></th>
            </tr>
            <tr>
                <td> Doctor Id</td><td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td> Doctor First Name</td><td><input type="text" name="p1"></td>
            </tr>
            <tr>
                <td> Doctor Last Name</td><td><input type="text" name="p2"></td>
            </tr>
            <tr>
                <td> Doctor Gender</td><td>Male<input type="radio" name="p3" value="M">Female<input type="radio" name="p3" value="F"></td>
            </tr>
            <tr>
                <td> Doctor Address</td><td><input type="text" name="p4"></td>
            </tr>
            <tr>
                <td> Doctor Specialization</td><td><input type="text" name="p5"></td>
            </tr>
            <tr>
                <td> Doctor Phone No.</td><td><input type="text" name="p6"></td>
            </tr>
            
            <tr>
            
                <td style="padding: 20px;"><center><button class="btn success">UPDATE DOCTOR</button></center></td>
           
            </tr>
        </table>
             </form>
    </body>
</html>
