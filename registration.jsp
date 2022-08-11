<%-- 
    Document   : registration
    Created on : 9 Aug 2022, 10:49:35
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
            <%@page import="java.sql.ResultSet"%> 
            <%@page import="java.sql.Statement"%>
            <%@page import="java.sql.SQLException"%>
            <%@page import="java.sql.ResultSet"%>
            <%@page import="java.sql.Connection"%>
            <%@page import="java.sql.DriverManager"%>
            
             
            <%
                    String u,e,p,l,g;
           u=request.getParameter("username");
           e=request.getParameter("email");
           p=request.getParameter("password");
           l=request.getParameter("location");
           g=request.getParameter("gender");


                       Statement st = null;
                        
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/meatking","root","");
                
                
                                st = con.createStatement();
                                st.executeUpdate("insert into users set   username='"+u+"',email='"+e+"',password='"+p+"',location='"+l+"',gender='"+g+"'");
                                request.setAttribute("error", "Welcome to Meatking!");
                                request.getRequestDispatcher("/login.jsp").forward(request, response);
                                response.sendRedirect(request.getContextPath() + "/login.jsp");
                                return;
                            
                
                
                            }catch(ClassNotFoundException | SQLException ex) {
                            out.println(ex.getMessage());
                            }
                 
                    
                

            
            
            
            
            %>
            
            
            
            
       
    </body>
</html>
