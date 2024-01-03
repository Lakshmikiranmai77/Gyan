


<%@ include file="check.html" %>
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
            function mysubmit()
            {
                
             var i=0;   
             var str="You must select ";   
             if(document.getElementById("language").value=='Select')
                {i=1; str=str+"a language";}
             if(document.getElementById("category").value=='Select')
                {i=1; str=str+",a category";}
             if(i==0)
                document.forms["myform"].submit();
             else
                 document.getElementById("test").innerHTML=str;  
            }
        </script>
        
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
                 
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">
                <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:60px; z-index:2">
                <p id="test" style="color:red; text-align: center"></p>
               
                <pre style="font-size:20px">

                <form id="myform" action="test.jsp" method="post">    
         PF Number             :<%=(String)session.getAttribute("pfno")%>  
 <%try{
     String lname=(String)session.getAttribute("pfno"); 
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st = con.prepareStatement("select lname,grade,name from mysql.register where pfno='"+lname+"'");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs=st.executeQuery();
while(rs.next())
    {%> 
         User Name             :<input type="text"  value="<%=rs.getString("name")%>" name="name"  readonly/>
         
         LI Name               :<input type="text"  value="<%=rs.getString("lname")%>" name="lname" readonly/>
         
         Grade                 :<input type="text" value="<%=rs.getString("grade")%>" name="grade" readonly/>                       
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
         Select Language       :<select id="language" name="lang">
                                   <option>Select</option>
                                   
                     <%

try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st = con.prepareStatement("select * from language");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs=st.executeQuery();
while(rs.next())
    {%>
          <option><b><%=rs.getString("lang")%></b></option>
                                           
                               
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
</select> 
       
         Select Category       :<select id="category" name="category">
                                   <option>Select</option>
                                    <%


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
          <option><font color="blue"><%=rs1.getString("topic")%></font></b></option>
                                           
                               
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
</select> 

         Select No Of Questions:<B><select name="qno">  
                         <option value="5">5</option>    
                          <option value="10">10</option>
                
                                <option value="15">15</option>
                                <option value="20">20</option>
                                <option value="25">25</option>
                                <option value="30">30</option>
                                <option value="35">35</option>
                                <option value="40">40</option>
                                <option value="45">45</option>
                                <option value="50">50</option>
                                </select></B><br/>
                        <input style="font-weight:bold;font-size:30px; height:50px; width:220px; color:blue" type="button" value="START TEST" size="50" onclick="mysubmit()"/>                                
               </form>                 
                </pre>
                
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

