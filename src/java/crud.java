/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author rahul
 */
public class crud extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int f_id = Integer.parseInt(request.getParameter("f_id"));
        String f_name = request.getParameter("f_name");
        String f_department =request.getParameter("f_department");
//        int s_dept = Integer.parseInt(request.getParameter("cname"));
//        int s_credits = Integer.parseInt(request.getParameter("credits"));
//        int  = Integer.parseInt(request.getParameter("tot"));
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ffcs_crud","root","");  
            Statement stmt = con.createStatement();
            stmt.executeUpdate("insert into faculty values('"+f_id+"','"+f_name+"','"+f_department+"')");
            out.println("Updated to the Database");
            response.sendRedirect(request.getContextPath() + "/home.jsp");
        }
        
        catch(ClassNotFoundException |SQLException e){
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
//        PrintWriter out = response.getWriter();
//        int f_id = Integer.parseInt(request.getParameter("f_id"));
//        String f_name = request.getParameter("f_name");
//        String f_department =request.getParameter("f_department");
////        int s_dept = Integer.parseInt(request.getParameter("cname"));
////        int s_credits = Integer.parseInt(request.getParameter("credits"));
////        int  = Integer.parseInt(request.getParameter("tot"));
// try{
//            Class.forName("com.mysql.cj.jdbc.Driver");  
//            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ffcs_crud","root","");  
//            Statement stmt = con.createStatement();
//            stmt.executeUpdate("insert into faculty values('"+f_id+"','"+f_name+"','"+f_department+"')");
//            out.println("Updated to the Database");
//            response.sendRedirect(request.getContextPath() + "/home.jsp");
//        }
//        
//        catch(ClassNotFoundException |SQLException e){
//            out.println(e);
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
