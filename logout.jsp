<%-- 
    Document   : logout
    Created on : 15-Jan-2013, 23:11:32
    Author     : Praveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <%@page language="java" import="java.sql.*" %>
<%@ include file="check.html" %>
<%
String pfno=(String)session.getAttribute("pfno");
try{
            //String pfno=(String)arg0.getSession().getAttribute("pfno");
            Connection con;
            Statement st;
            Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");          
             st = con.createStatement();
             st.executeUpdate("delete from mysql.online where pfno='"+pfno+"'");
             con.close();
             st.close();
        }
        catch(Exception e)
        {
            
        }
session.invalidate();
response.sendRedirect("index.jsp");
%>
