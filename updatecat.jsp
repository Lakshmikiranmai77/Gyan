
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
        <script type="text/javascript">  
            var n=0;            
            function change(element)
            {
             n=1;
             var sno=element.id;   
             var lang=element.innerHTML;
             document.getElementById(sno+"td").innerHTML="<input type='text' id='"+sno+"t' value='"+lang+"'/>";
             //document.getElementById("note").innerHTML=sno+"t";
                
            }
            
            function mysubmit(element)
            { 
               
              var type=element.value;
              var sno=element.name;
              if(n==0)
                 var cat=document.getElementById(sno).innerHTML;
              else
                 var cat=document.getElementById(sno+"t").value; 
                 
              var reg=new RegExp("[\x21-\x2F]|[\x3A-\x40]|[\x5B-\x60]|[\x7B-\x7E]");
              if(cat=="")
                 document.getElementById("note1").innerHTML="Enter a category";             
              else if(reg.test(cat))
                 document.getElementById("note1").innerHTML="Your category name violated the rule";
             else{
              //document.getElementById("note").innerHTML=type+" "+sno+" "+text;
              var xmlhttp;
              if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp=new XMLHttpRequest();
                 }
               else
               {// code for IE6, IE5
                 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
               xmlhttp.onreadystatechange=function()
                  {
              if (xmlhttp.readyState==4 && xmlhttp.status==200)
                 { 
                   document.getElementById("note").innerHTML=xmlhttp.responseText;
                   document.getElementById(sno+"td").innerHTML="<p id='"+sno+"' onclick='change(this)'>"+cat+"</p>";   
                   n=0;
                 }
                 }
         
              xmlhttp.open("POST","updatecategory?sno="+sno+"&type="+type+"&cat="+cat,true);
              xmlhttp.send();       
             }              
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
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen"> 
             <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:150px; z-index:2">
                
              <center>  <table align="center" border="0" style="width:400px;">
                <tr>
                    <th>SNO</th>
                    <th><pre>    </pre></th>
                    <th>CATEGORY</th>
                </tr>                  
                <%
                try{
                 Connection con;
                 Statement stmt;                   
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                   if(con==null)
                         out.close();
                    stmt = con.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from mysql.topic");
                    while(rs.next())
                    {
                     int sno=rs.getInt("sno");
                     String lang=rs.getString("topic");                       
                     %>
                     <tr>                         
                         <td align="center"><%=sno%></td>
                         <td><pre>    </pre></td>
                         <td align="center"><span id='<%=sno%>td'><p id='<%=sno%>' onclick="change(this)"><%=lang%></p></span></td>
                         
                         <td align="center"><input type="button" value="update" name='<%=sno%>' onclick="mysubmit(this)"/></td>
                         <td align="center"><input type="button" value="delete" name='<%=sno%>'  onclick="mysubmit(this)"/></td>
                     </tr>
                     <%   
                    
                    
                     }
                    }
                catch(Exception e)
                    {
                     out.println(e);
                     }
                 
                %>
                <tr>
                <td colspan="5" align="center"> <b style="color:red"><u>Note:</u></b></br></br>The category should only contain alpahabets{A-Z}/{a-z},numbers{0-9} and probably white spaces{" "} </td> 
                </tr> 
                <tr>
                    <td align="center" colspan="5">
                        <p id="note" style="color:green"></p>
                        <p id="note1" style="color:red"></p>
                    </td>
                </tr>
            </table> 
        </center>
</div></div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTER</p>
            </div>
        </div>
 
    </body>
</html>

