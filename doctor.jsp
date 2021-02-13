<%-- 
    Document   : newjsp2
    Created on : 2 Nov, 2019, 3:15:07 PM
    Author     : Lavanya
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table,th,td{
          
            border: 1px solid black;
        }
        th,td{
            padding: 10px;
        }
    </style>
    </head>
    <style>
body{
background-image: url("image1.jpg");
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
<center><B><font color="purple"><font size="20"><u>DOCTOR DETAILS</u></font></font></B></center>
<body>
    <nav class="menu">
        <ul>
            <li><a href="dreg.html">ADD DOCTOR</a></li>
            <li><a href="docdel.jsp">DELETE DOCTOR</a></li>
            <li><a href="docedit.jsp">EDIT DOCTOR</a></li>
        </ul>
    </nav> 
</body>             
            
   <%try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from doctor");
   %>
   <table cellpadding="15" border="1">
         <tr>
                <th>DOCTOR ID</th>
                <th>DOCTOR FIRST NAME</th>
                <th>DOCTOR LAST NAME</th>
                <th>DOCTOR GENDER</th>
                <th>DOCTOR ADDRESS</th>
                <th>SPECIALIZATION</th>
                <th>DOCTOR PHONE</th>        
               
            </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
                <td><%= rs.getInt(1) %>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                <td><%=rs.getString(6)%>
                <td><%=rs.getString(7)%> </td> 
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
