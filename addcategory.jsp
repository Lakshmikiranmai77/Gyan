
<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<%@ include file="check.html" %>


<%

if(request.getParameter("submit")!=null)
{


try{
 Class.forName("com.mysql.jdbc.Driver");
 //System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
Statement st = con.createStatement();
String topic = request.getParameter("cat").toString();




String qry = "insert into topic(topic) values('"+topic+"')";
//out.println("qry : " + qry);


int val = st.executeUpdate(qry);

con.close();
if(val>0)
{
 out.println("<center><span style='color:green;'>Category inserted successfully</span></center>");
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
<html> 
    <head>
   
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
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
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left:-60px "/></center>
                      <%@ include file="adminmenu.html" %> 
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen"> 
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:0px; z-index:2">
                <script type="text/javascript">
           function validate()
            {
             var cat=document.getElementById("cat").value;    
             var reg=new RegExp("[\x21-\x2F]|[\x3A-\x40]|[\x5B-\x60]|[\x7B-\x7E]");
             if(cat=="")
                 document.getElementById("note").innerHTML="Enter a category";
             if(reg.test(cat))
                 document.getElementById("note").innerHTML="Your category name violated the rule";  
             else 
                  return true;
             return false; 
             
               }
                 </script>
                <form action="" method="post" onsubmit="return validate()"> 
             </br></br><center><font size="3"><b><i style="position:absolute; margin-left:-30px">Add Category</b></i></font></center></br>  
             <center><span id="note"  style="color:red"></span></center></br>

             <table style="margin-left:165px" border="0">
               <tr>    
                   <td> <span><b><i>Enter the Category&nbsp;&nbsp;&nbsp;:</i\></b></span><input type="text" id="cat" name="cat"/></td>
               </tr> 
               <tr>
                   <td align="center"></br><pre><input name="submit" type="submit" value="Add" />                  </pre></td>
               </tr>
               <tr>
                   <td>
                     <b style="color:red"><u>Note:</u></b>The category should only contain alpahabets{A-Z}/{a-z},numbers{0-9} and probably white spaces{" "} 
                   </td>
               </tr>
              </table>   
              </form>
        
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

