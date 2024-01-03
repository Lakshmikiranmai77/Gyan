
<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <%@page language="java" import="java.sql.*" %>
  
        
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
         
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
         
        
    </head>
    
    <body  onbeforeunload="window.document.location.href='./logout.jsp'">
     <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left:-60px "/></center>
                               <%@ include file="adminmenu.html" %> 
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">   
             <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:10px; z-index:2">
                <form action="reportbynumberdb.jsp" method="post">
             </br></br><center><font size="3"><b><i>Report by Number</b></i></font></center></br>        
             <table style="margin-left:165px" border="0">
               <tr>    
                   <td> <span><b><i>Enter the PF Number:</i\></b></span><input type="text" name="pfno"/></td>
               </tr> 
               <tr>
                   <td align="right"></br><pre><input type="submit" value="search" />       </pre></td>
               </tr>
              </table>   
              </form>
        
        </div></div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTER</p>
            </div>
        </div>
 
    </body>
</html>

