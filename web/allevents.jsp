<%-- 
    Document   : fetch
    Created on : 15 Feb, 2019, 8:27:33 AM
    Author     : 3P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
         <style>
        
        
        
        
            
             body{
            background-color: powderblue;
            padding-top:20px;
            
            margin-left: 50px;
            margin-right: 50px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1.2rem;
            line-height: 20px;
        }
       h1{
            background-color: coral;
            padding-top: 20px;
            padding-bottom: 20px;
            margin-left: 0;
            font-size: 30px;
        }
        a{
            text-decoration: none;
        } 
            
      
        
        
        
    </style>
        
    </head>
    <body>
        <%!  Connection con=null;%>
        <%
       // Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select * from event2");
            

            %>
            <center>
                <h1>All Events</h1>
            <table border=1 cellspacing=0 cellpadding="15">
                <tbody bgcolor=#f1e3dd>
                    <tr>
                    <th>Event id</th>
                            <th>Event Name</th>
                                    <th>Event Type</th>
                                    <th>Venue</th>
                                     <th>Dpartment</th>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Fees</th>
                                    <th>Rules</th>
                    </tr>
                    <% while(rs.next())
                    {
                        %>
                  
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        </tr>
                
                    
                   
                        <%
                            }
                        %>
                </tbody>
            </center>
            </table>
            </body>
</html>
                     