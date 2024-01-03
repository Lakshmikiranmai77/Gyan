
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
    
    <body onbeforeunload="window.document.location.pathname='./logout.jsp'">
        
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
               <table style="margin-top: 100px">
        <tr><td></td></tr>
    </table>
   
 
          <center><table>
          <tr><td></td><td><h1 style="font-size:60px"><i><center>WELCOME</center><center>TO</center><center>GYAN KASOUTI</center></i></h1></td></tr>
<tr> <td></td>
</tr>
</table></center>     
    <br><br><br><br><br><br><br><br>
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

