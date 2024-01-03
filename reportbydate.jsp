
<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <%@page language="java" import="java.sql.*" %>
    <%!String  lan;%>
        
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="themes/aqua_2.css" />
        <link rel="stylesheet" href="themes/layouts/big.css" />
        <script type="text/javascript" src="src/calendar.js"></script>
        <script type="text/javascript" src="lang/calendar-en.js"></script>
         <script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
        <script type="text/javascript">
          function mysubmit()
             {
                 var from=document.getElementById("calendar1").value;
                 var from1=from.split("/");                
                 var to=document.getElementById("calendar2").value;
                 var to1=to.split("/");
                 
                 var fromsec=new Date(from1[2],(from1[1]-1),from1[0]);
                 var tosec=new Date(to1[2],(to1[1]-1),to1[0]);
                 var d=new Date();
                 //document.write(from1+" "+to1);
                 //document.write(fromsec.getTime()+" "+tosec.getTime()+" "+d.getTime());
                 document.getElementById("calendar1").value=fromsec.getTime();
                 document.getElementById("calendar2").value=tosec.getTime();
                 return;
             }
            
        </script>
        
    </head>
    
    <body onbeforeunload="window.document.location.href='./logout.jsp'" >
     <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left:-60px "/></center>
                               <%@ include file="adminmenu.html" %> 
                </div>^
            </div>
        </div>
        <div id="content">
            <div id="content_cen">   
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:80px; z-index:2">
                <form action="reportbydatedb.jsp" method="post" onsubmit="return mysubmit()">
             </br></br><center><font size="3"><b><i>Report by Date</b></i></font></center></br>        
            <center>
                 <table align="center" border="0">
                     <tbody>
                         <tr><td> <font size="4">Select From Date:</font><input type="text" id="calendar1" id="from" name="from" value="click me" />
                                <script type="text/javascript">//<![CDATA[
                                    Zapatec.Calendar.setup({
                                        firstDay          : 1,
                                        weekNumbers       : false,
                                        showOthers        : true,
                                        electric          : false,
                                        inputField        : "calendar1",
                                        button            : "trigger",
                                        ifFormat          : "%d/%m/%Y",
                                        daFormat          : "%d/%m/%Y"
                                    });
                                    //]]>
    </script></td><td>&nbsp;&nbsp;&nbsp;</td><td> <font size="4">Select To Date:</font><input type="text" id="calendar2" id="to" name="to" value="click me" />
                                <script type="text/javascript">//<![CDATA[
                                    Zapatec.Calendar.setup({
                                        firstDay          : 1,
                                        weekNumbers       : false,
                                        showOthers        : true,
                                        electric          : false,
                                        inputField        : "calendar2",
                                        button            : "trigger",
                                        ifFormat          : "%d/%m/%Y",
                                        daFormat          : "%d/%m/%Y"
                                    });
                                    //]]></script></td></tr>
        <tr><center><td align="center" colspan="3"></br></br><input type="submit" value="Search" name="search"/></center></td></tr>
                     </tbody>
                 </table>
                 </center>
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

