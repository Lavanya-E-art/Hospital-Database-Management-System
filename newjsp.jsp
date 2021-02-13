<%-- 
    Document   : newjsp
    Created on : 2 Nov, 2019, 2:46:19 PM
    Author     : Lavanya
--%>

<%@page import="java.sql.DriverManager"%>
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
background-image: url("i6.jpg");
background-color: white;
background-repeat: no-repeat;
background-size:100%;
}
*{
    margin: 0;
    padding: 0;
    font-family: Century Gothic;
}
ul{
    float : next;
    list-style-type: none;
    
}
ul li{
    text-align: center;
    padding: 60px;
     padding-left: 400px;
     padding-bottom: 10px;
     padding-right: 0px;
     padding-top: 10px;
    display: inline-table;
}
ul li a{
    size: 300px;
    text-decoration: none;
    color: #000;
    font-weight: bold;
    padding: 5px 20px;
    border: 1px solid #fff;
    transition: 0.5s ease;
}
p{
    padding: 30px;
}
ul li a:hover{
    background-color: #fff;
    color: #000;
}
.main{
    max-width: 1200px;
    margin: auto;
}
.logo img{
    
    width: 50px;
    height: 50px;
    border-radius: 50%;
    overflow: hidden;
    position: absolute;
   
}
img.center{
    text-align: center;
    display: block;
    padding-left: 350px;
}
</style>
    <body>
        
       <% String s=request.getParameter("t1");
          String s1=request.getParameter("t2");
          String s2="lavanya";
          String s3="12345";
          if(s.equals(s2) && s1.equals(s3))
          { 
               try
               {
                   Class.forName("oracle.jdbc.driver.OracleDriver");
                   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lavanya","12345");
                   session.setAttribute(s2,s3);
               }
               catch(Exception e)
               {
                   out.println(e);
               }
               
            %>
            <p style="text-align:center;">
                <font size="20"><font color="green"><u>HOSPITAL DETAILS</u></font></font>
          </p>
            <header>
                <div class="main">
                    <ul>
                        <div class="header">
                           <img src="patient.png" alt="Logo" class="center"/>
                                <li><a href="patient.jsp">PATIENT DETAILS</a></li>
                        </div>
                        <div class="header">
                            <img src="doctor.png" alt="Logo" class="center"/>
                         <li><a href="doctor.jsp">DOCTOR DETAILS</a></li>
                          </div>  
                         <div class="header">
                             <img src="appointment.png" alt="Logo" class="center"/>   
                         <li><a href="appoint.jsp">APPOINTMENT DETAILS</a></li>
                        </div>
                        <div class="header">
                            <img src="searchpatient.png" alt="Logo" class="center"/> 
                        <li><a href="staff.jsp">STAFF DETAILS</a></li>
                        </div> 
                    </ul>
                    
                </div>
            </header>
            
                   
          
              
          
                 
          <% }
          else
          { %>
          <p style="text-align: center" style="padding: 40px;"><B><font color="black"> <font size="50">AUTHENTICATION FAILED</font></font></B> </p> 
         
          <% }
          %>
       
      
       
        
    </body>
</html>


