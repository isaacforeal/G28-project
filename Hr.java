package servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import connection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author USER
 */
public class Hr extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
        
        
        // where to store what has been captured
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gend");
        String line = request.getParameter("productline");
        
        
       try {
                  DBConnection conn =new DBConnection();
                  Connection con =conn.getConnection();
        Statement s = con.createStatement();
        s.executeUpdate("insert into staff(first_name,last_name,Email,Contact,Age,Gender,productline) values ('"+fname+"','"+lname+"','"+email+"','"+contact+"','"+age+"','"+gender+"', '"+line+"')");
         
        response.sendRedirect("RecruitmentPage.jsp");
        
        
        
        out.println("<h1> </h1>");
            //long term products
            int m = parseInt(request.getParameter("products"));
            
            //Mid term products
            int n = 2*m;
            
            //Short term
            int r = 5*n;
            
            out.println("<h1>The Long Term Products are "+m+"</h1>");
            out.println("<h1>The Mid Term Products are "+n+"</h1>");
            out.println("<h1>The Short Term Products are "+r+"</h1>");
            
            //initialising the number of employees
            //emplooyees working on the long term products            
            int a = parseInt(request.getParameter("longterm"));
            //emplooyees working on the mid term products
            int b = parseInt(request.getParameter("midtermp"));
            //emplooyees working on the short term products
            int c = parseInt(request.getParameter("shortterm"));
            
            
            //since the assumption is that no product line remain with no employee
            if(m<n || m<r){
                a=m-6;
                b=n+3;
                c=r+3;
                out.println("<h1>Six Employees were relocated to the different productlines equivalently "+a+" remained on the long term products </h1>");
            }else{
                out.println("<h1>Product lines have equal demand</h1>");
            }
            
         
       }catch(SQLException e ){
           out.println("Error got " + e.getMessage());
       }
                
        }

         
       
    }