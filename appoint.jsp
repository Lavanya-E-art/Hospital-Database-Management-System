<%-- 
    Document   : newjsp3
    Created on : 2 Nov, 2019, 3:18:02 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
body{
background-image: url("i4_1.jpg");
margin: 0;
background-color: white;
background-repeat: no-repeat;
background-size:100%;
}
.menu{
    width:100%;
    overflow:auto;
}
.menu ul{
    margin:0;
    padding: 0;
    list-style: none;
    line-height: 60px;
}
.menu li{
    float: left;
    padding: 20px;
}
.menu ul li a{
    background: #142b47;
    text-decoration: none;
    width: 130px;
    display: box;
    text-align: center;
    color: #f2f2f2;
    font-size: 18px;
    font-family: sans-serif;
    letter-spacing: 0.5px;
}
.menu li a:hover{
    color: #fff;
    opacity: 0.5;
    font-size: 19px;
}
 button {
  float: right;
  background: orange;
  color: white;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  position: relative;
  padding:7px;
  font-family: sans-serif;
  border: none;
    font-size: 16px;
}
</style>
<center><B><font color="purple"><font size="20"><u>APPOINTMENT DETAILS</u></font></font></B></center>
    <body>
        <nav class="menu">
        <ul>
            <li><a href="appreg.html">SET APPOINTMENT</a></li>
            <li><a href="appdel.jsp">DELETE APPOINTMENT</a></li>
            <li><a href="appedit.jsp">EDIT APPOINTMENT</a></li>
        </ul>
    </nav> 
    </body>
     <%  try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
   Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    ResultSet rs=st.executeQuery("select * from appointment");
     %>
     <table cellpadding="15" border="1">
         <tr padding:20px>
                <th>APPOINTMENT NUMBER</th>
                <th>PATIENT ID</th>
                <th>APPOINTMENT DATE/TIME</th>
                <th>DOCTOR ID</th>
              
         </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
                <td><%= rs.getInt(1) %>
                <td><%=rs.getInt(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getInt(5)%> </td> 
                
            </tr>
            
    <%}
       }
          catch(Exception e)
          {
             out.println(e);
           }
    %>
   
    </table>
      
</html>
