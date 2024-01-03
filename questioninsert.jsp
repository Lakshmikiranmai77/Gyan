<%-- 
    Document   : questioninsert
    Created on : 15-Jan-2013, 05:06:05
    Author     : Praveen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="check.html" %>
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
String Quest = request.getParameter("Quest").toString();
String A = request.getParameter("A").toString();
String B = request.getParameter("B").toString();
String C = request.getParameter("C").toString();
String D = request.getParameter("D").toString();
String Answer = request.getParameter("Answer").toString();
String QuestNumber=request.getParameter("QuestNumber");
String Topic=request.getParameter("Topic");
String lang=request.getParameter("lang");
//out.println("<span style='color:white'>"+Quest+" "+A+" "+B+" "+C+" "+D+" "+Answer+" "+QuestNumber+" "+Topic+" "+lang+"</span>");
String qry = "insert into mysql.techobjective"+lang+" (QuestNumber,Quest,A,B,C,D,Topic,Answer) values("+QuestNumber+",'"+Quest+"','"+A+"','"+B+"','"+C+"','"+D+"','"+Topic+"','"+Answer+"')";

//out.println("qry : " + qry);

int val = st.executeUpdate(qry);

con.close();
if(val>0)
{
out.println("<center><span style='color:green'>Question Inserted Successfully..</span></center>");
}

}

catch(SQLException ex){
out.println("<font color='white'>SQL statement not found<font>");
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
        <div id="content" style="height:500px">
            <div id="content_cen"> 
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:150px; z-index:2">
                <script type="text/javascript">
           function validateForm(theForm){

if(theForm.quest.value==""){
//Please enter username
alert("Please enter Question.");
theForm.quest.focus();
return false;
}

       return true;
           }
                 </script>
               <center>

<table border="0" width="450px" bgcolor="" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<form method="POST" action="" onsubmit="return validateForm(this);">

<h3 align="center"><font style="color:black; margin-left:140px">Insert Question</font></h3>
</tr>
<table border="1" width="400px" cellspacing="2" cellpadding="4">
    <tr><td><b>Select Category:</b></td><td><select name="Topic">
            <option>Select</option>   <%


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st1 = con.prepareStatement("select * from topic");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs1=st1.executeQuery();
while(rs1.next())
    {%>
          <option value='<%=rs1.getString("topic")%>'><%=rs1.getString("topic")%></option>
                                           
                               
<%
                              
   

}
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
} %> 
</select> </td></tr>
<tr><td><b>Select Language:</b></td><td><select name="lang">
            <option>Select</option>   <%


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st1 = con.prepareStatement("select * from language");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs1=st1.executeQuery();
while(rs1.next())
    {%>
          <option value='<%=rs1.getString("lang")%>'><%=rs1.getString("lang")%></option>
                                           
                               
<%
                              
   

}
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
} %> 
</select> </td></tr>
    <tr><td><b>Enter Question No.</b></td>
        <td><input type="text" name="QuestNumber" size="40"/> </td> 
       </tr>
<tr>
<td width="50%"><b>Enter Question:</b></td>
<td width="50%"><textarea rows="3" cols="33" name="Quest"></textarea> </td>
</tr>
<tr>
<td width="50%"><b>Enter Answer(A.):</b></td>
<td width="50%"><input type="text" name="A" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Answer(B.):</b></td>
<td width="50%"><input type="text" name="B" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Answer(C.):</b></td>
<td width="50%"><input type="text" name="C" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Answer(D.):</b></td>
<td width="50%"><input type="text" name="D" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Correct Answer:</b></td>
<td width="50%"><input type="text" name="Answer" size="10"/> </td>
</tr> 

</table>
<center>
<p><input type="submit" value="Insert" name="submit">
<input type="reset" value="Reset" name="reset">
</p>
</center> 
</form>
</td>
</tr>
</table>
</center>
          </div>
          </div></div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTER</p>
            </div>
        </div>
 
    </body>
</html>

