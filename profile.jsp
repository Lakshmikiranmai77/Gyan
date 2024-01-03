<%-- 
    Document   : profile
    Created on : 15-Jan-2013, 23:57:14
    Author     : Eworld
--%>
     
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
    </head>
    
    <body onbeforeunload="window.document.location.href='./logout.jsp'">
        
        <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                     <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left: -60px"/></center>
               <%@ include file="empmenu.html" %>
                </div>
            </div>       
        </div>
        <div id="content">
            <div id="content_cen">
              <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:180px; z-index:2">  
                
              <%
                try{
                    String pfno=(String)session.getAttribute("pfno");
                    //String pfno="09KN1A0545";
                 Connection con;
                 Statement stmt;                   
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                   if(con==null)
                         out.close();
                    stmt = con.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from mysql.register where pfno='"+pfno+"'");
                     rs.next();                      
                     %>
                     </br></br></br>
                     <font size="5">
                     <table align="center" style="margin-left:60px">
                         <tr> 
                         <td><label><b>PF Number      </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("pfno")%></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><label><b>Name           </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("name")%></td>
                        </tr>
                         <tr></tr>
                        <tr>
                        <td><label><b>Designation    </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("desg")%></td>
                     </tr> <tr></tr>
                     <tr>
                         <td> <label><b>Loco Inspector       </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("lname")%></td>
                       </tr> <tr></tr>
                     <tr>
                         <td> <label><b>Grade       </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("grade")%></td>
                       </tr> <tr></tr>
                         <td> <label><b>Depot \ Division     </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("dept")%></td>
                      </tr>  <tr></tr>
                    
                      <tr>
                         <td> <label><b>Location       </b></label></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=rs.getString("loc")%></td>
                       </tr> 
                       
                     </table>
                 </font>
                     <%   
                    
                    
                     
                    }
                catch(Exception e)
                    {
                     out.println(e);
                     }
                 
                %>
                </div>
            </div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTRE</p>
            </div>
        </div>
    </body>
</html>

