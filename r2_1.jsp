<%@page import="java.sql.*" import="java.io.*,java.util.*,java.util.Date,java.util.Calendar" import="java.net.URL" import="java.lang.String" import="java.text.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        
         <script type="text/javascript">
            function FnPrint()
            {
                but.style.display="none";
                window.print();
                but.style.display="block";
            }
            </script> 
        <style type="text/css">a {text-decoration: none}</style>
    </head>
     <%
                         Date date1 = Calendar.getInstance().getTime();
                         DateFormat formatter44 = new SimpleDateFormat("dd/M/yyyy");
                         String pr = formatter44.format(date1);  
                         String pfno=request.getParameter("n8");                         
                         
                         
                                    
    %>
    <body onbeforeunload="window.document.location.href='./logout.jsp'" >
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
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:130px; z-index:2">
             <form name="printpage">
               
        <font color="" >
            
                             
        <center>
            <br>
            <table border="2" width="90%" cellspacing="1" cellpadding="1" > &nbsp;&nbsp;
           
           <tr>
               <th>PF NUMBER</th><th>Name</th><th>Time</th><th>Date Of Exam</th><th>Category</th><th>No.of Questions</th><th>Percentage</th><th>Score</th><th>Loco Inspector</th><th>Grade</th>
            </tr>
       
       <%      
          try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
              ResultSet rs;ResultSet rs1;
              Statement st=con.createStatement();
              rs=st.executeQuery("select pfno,time,date,category,ques,score,lname,name,grade,percentage from mysql.store where lname='"+pfno+"' order by percentage desc");
          
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
           <td align="center"><%=rs.getString("percentage")%>%</td>
              <td align="center"><%=rs.getString("score")%></td>
              <td align="center"><%=rs.getString("lname")%></td>
              <td align="center"><%=rs.getString("grade")%></td>
            
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
      <center>          <br>  <input type="button" value="   Print   " class="button"
                               name="butPrev" onclick="FnPrint()"></center>
             <br><center><a style='font-size:28px' href='adminhome.jsp' style="text-decoration:none">Home</a><p id='test' style='color:green'></p></center>        
        </div>

</font>
  </form>
               
          </div>
  </div></div>
        
 
    </body>
</html>

