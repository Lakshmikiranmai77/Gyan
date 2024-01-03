<%-- 
    Document   : verify
    Created on : Apr 7, 2014, 2:49:58 PM
    Author     : eworld
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="check.html" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
   

<%@page language="java" import="java.sql.*" %>

<%
if(request.getParameter("submit")!=null)
{


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
Statement st = con.createStatement();
String emp = request.getParameter("n3").toString();
String pfno = request.getParameter("n4").toString();
String desg = request.getParameter("n5").toString();
String dept = request.getParameter("n6").toString();
String loc = request.getParameter("n7").toString();
String lname = request.getParameter("n8").toString();
String grade = request.getParameter("n9").toString();



String qry1= "insert into mysql.store(password,name,pfno,desg,dept,loc,lname,grade) values('"+pfno+"','"+emp+"','"+pfno+"','"+desg+"','"+dept+"','"+loc+"','"+lname+"','"+grade+"')";
//out.println("qry : " + qry);


int val1 = st.executeUpdate(qry1);
con.close();
/*if(val1>0)
{
out.println("<center><font color=white>User is Registered Successfully..</font></center>");
}*/
if(val1>0)
{
out.println("<center><font color=white>User is Registered Successfully..</font></center>");
}

}

catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
}
}

%>