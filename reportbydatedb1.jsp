
<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" import="java.io.*,java.util.*,java.util.Date,java.util.Calendar" import="java.net.URL" import="java.lang.String" import="java.text.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
   
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
         <script type="text/javascript">
            function FnPrint()
            {
                but.style.display="none";
                window.print();
                but.style.display="block";
            }
            </script> 
        
    </head>
     <%
                         Date date1 = Calendar.getInstance().getTime();
                         DateFormat formatter44 = new SimpleDateFormat("dd/M/yyyy");
                         String pr = formatter44.format(date1);  
                         String pfno=request.getParameter("pfno");                         
                       
                         
                                    
    %>
    <body >
     <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left:-60px "/></center>
                 
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">   
             <form name="printpage">
               
        <font color="" >
            
             <h3 align="right" style="color:black; float:right"><%= pr%></h3>
             <h2 style="margin-left:40px;color:black"><%= pfno%></h2>  	 
                     
        <center>
            <br>
            <table border="2" width="90%" cellspacing="1" cellpadding="1" > &nbsp;&nbsp;
           
           <tr>
               <th>PF NUMBER</th><th>Name</th><th>Time</th><th>Date Of Exam</th><th>Category</th><th>No.of Questions</th><th>Percentage</th><th>Score</th>
            </tr>
       
       <%      
          try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
              ResultSet rs;
              Statement st=con.createStatement();
              rs=st.executeQuery("select * from mysql.store where pfno='"+pfno+"' order by percentage desc");
              
          
            while(rs.next())
                {
            %>
            <tr>
            
            
            <td align="center"><%=rs.getString("pfno")%></td>
            <td align="center"><%=rs.getString("name")%></td>
            <td align="center"><%=rs.getString("time")%></td>
            <td align="center"><%=rs.getString("date")%></td>
            <td align="center"><%=rs.getString("category")%></td>
            <td align="center"><%=rs.getString("ques")%></td>
             <td align="center"><%=rs.getString("Percentage")%>%</td>
            <td align="center"><%=rs.getString("score")%></td>
            	</tr>
		
		
    <%
        }
      }
      catch(Exception e)
    {
         out.println(e);
    }
    %>
      
  </table>
  </center>
  <div id="but">
      <center>         <br>   <input type="button" value="   Print   " class="button"
                               name="butPrev" onclick="FnPrint()"></center>
      <br><center><a style='font-size:28px' href='emphome.jsp'>Home</a><p id='test' style='color:green'></p></center>    
        </div>

</font>
  </form>
               
         
 
    </body>
</html>

