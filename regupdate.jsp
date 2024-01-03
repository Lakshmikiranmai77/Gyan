<%-- 
    Document   : regupdate
    Created on : May 24, 2014, 3:42:56 PM
    Author     : eworld
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="check.html" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
   

<%@page language="java" import="java.sql.*" %><head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
         
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
         
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


String qry = "update register set password='"+pfno+"',name='"+emp+"',pfno='"+pfno+"',desg='"+desg+"',dept='"+dept+"',loc='"+loc+"',lname='"+lname+"',grade='"+grade+"' where pfno='"+pfno+"'";
String qry1 = "update store set name='"+emp+"',pfno='"+pfno+"',lname='"+lname+"',grade='"+grade+"' where pfno='"+pfno+"'";
//String qry1= "insert into store(pfno,lname,grade) values('"+pfno+"','"+lname+"','"+grade+"')";
//out.println("qry : " + qry);

int val = st.executeUpdate(qry);
int val1 = st.executeUpdate(qry1);
 

if(val>0 || val1>0) 
{
out.println("<center><font color=white>User is Updated Successfully..</font></center>");
}
/*if(val1>0)
{
out.println("<center><font color=white>User is Registered Successfully..</font></center>");
}*/
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
                <div style="position:absolute; margin-left:-20px; z-index:2">
             <form method="POST" action="">
<table align="center" border="0" cellpadding=1 cellspacing=1 align="center" style="margin-left:200px; margin-top:30px">
    <caption><h2>REGISTRATION FORM</h2></caption>
       <tr><th align="left"></br>PF No:</th><td></br>&nbsp&nbsp<input type="text" name="n4" size="25"></td></tr>
        <tr><th align="left"></br>Employee Name:</th><td></br>&nbsp&nbsp<input type="text" name="n3" size="25"></br></td></tr>
	<tr>
	<th align="left"></br>Designation:</th>
	<td></br>&nbsp&nbsp<input type="text" name="n5" size=25></td>
	</tr>
 <tr>
	<th align="left"></br>Loco Inspector:</th>
          <td> </br>&nbsp&nbsp<select name="n8">
              
          <br> <option>Select Loco Inspector Name</option>    <%


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st1 = con.prepareStatement("select * from loco");

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
	
     <tr>
	<th align="left"></br>Grade:</th>
        <td></br>&nbsp&nbsp<select name="n9"><option>Select The Following Grade</option><option>A</option></br>
           <option>B</option><option>C</option> </select></td>
	</tr>
       <tr>
	<th align="left"></br>Depot :</th>
	<td></br>&nbsp&nbsp<input type="text" name="n6" size=25></br></td>
	</tr>
       <tr>
	<th align="left"></br>Division:</th>
	<td></br>&nbsp&nbsp<input type="text" name="n7" size=25></br></td>
	</tr>
	<tr>
	<td align="center"></br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td align="center"></br><input type="submit" name="submit" value="Update"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="Reset"/></td>
	</tr>
        
	</table>
    </form>
          </div>
        </div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTRE</p>
            </div>
        </div>
 
    </body>
</html>

