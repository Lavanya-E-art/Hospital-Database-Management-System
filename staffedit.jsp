<%-- 
    Document   : staffedit
    Created on : 9 Nov, 2019, 7:28:39 PM
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
background-image: url("i4_1.png");
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
        <form action="sup.jsp" method="post">
        <table align="center">
            <tr>
                <th colspan="2" style="padding: 20px;"><h1><u>CHANGE/UPDATE STAFF DETAILS</u></h1></th>
            </tr>
            <tr>
                <td> <font size="5">Staff Id</font></td><td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td><font size="5"> Staff Name</font></td><td><input type="text" name="p1"></td>
            </tr>
            <tr>
                <td><font size="5"> Doctor ID</font></td><td><input type="text" name="p2"></td>
            </tr>
            <tr>
                <td> <font size="5">Staff Gender</font></td><td>Male<input type="radio" name="p3" value="M">Female<input type="radio" name="p3" value="F"></td>
            </tr>
            
            <tr>
                <td> <font size="5">Staff Address</font></td><td><input type="text" name="p4"></td>
            </tr>
            <tr>
                <td> <font size="5">Staff Phone No.</font></td><td><input type="text" name="p5"></td>
            </tr>
            
            <tr>
            
                <td></td><td style="padding: 20px;"><center><button class="btn success">UPDATE STAFF</button></center></td>
           
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
