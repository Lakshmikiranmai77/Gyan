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
<html> 
    <head>
   
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
       
         
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->   
    <script type="text/javascript"> 
        var n=0; 
        var lang="<%=request.getParameter("lang")%>";
        function change(element)
         {
            if(n==0)
              {  
             var id=element.name;
             var value;
             var s=9;
             n=1;
             value=document.getElementById(id+"-ques").innerHTML;             
             document.getElementById(id+"-questd").innerHTML="<textarea rows='3' id='"+id+"-ques' cols='34'>"+value+"</textarea>";
             
             value=document.getElementById(id+"-a").innerHTML;             
             document.getElementById(id+"-atd").innerHTML="<input type='text' id='"+id+"-a' size='"+s+"' value='"+value+"'/>";
             
             value=document.getElementById(id+"-b").innerHTML;             
             document.getElementById(id+"-btd").innerHTML="<input type='text' id='"+id+"-b' size='"+s+"' value='"+value+"'/>";
             
             value=document.getElementById(id+"-c").innerHTML;             
             document.getElementById(id+"-ctd").innerHTML="<input type='text' id='"+id+"-c' size='"+s+"' value='"+value+"'/>";
             
             value=document.getElementById(id+"-d").innerHTML;             
             document.getElementById(id+"-dtd").innerHTML="<input type='text' id='"+id+"-d' size='"+s+"' value='"+value+"'/>";
             
             value=document.getElementById(id+"-cat").innerHTML;             
             document.getElementById(id+"-cattd").innerHTML="<input type='text' id='"+id+"-cat' size='7' value='"+value+"'/>";
             
             value=document.getElementById(id+"-ans").innerHTML;             
             document.getElementById(id+"-anstd").innerHTML="<input type='text' id='"+id+"-ans' size='1' value='"+value+"'/>";
              }
             else
               document.getElementById("test").innerHTML="Only one question can be updated at a time";                 
           }
            
            function mysubmit(element)
            {
              var ques,a,b,c,d,cat,ans;  
              var type=element.value;
              var id=element.name;
              if(n==1){
               ques=document.getElementById(id+"-ques").value;
               a=document.getElementById(id+"-a").value;
               b=document.getElementById(id+"-b").value;
               c=document.getElementById(id+"-c").value;
               d=document.getElementById(id+"-d").value;
               cat=document.getElementById(id+"-cat").value;
               ans=document.getElementById(id+"-ans").value;
              }
              else
                {
               ques=document.getElementById(id+"-ques").innerHTML;
               a=document.getElementById(id+"-a").innerHTML;
               b=document.getElementById(id+"-b").innerHTML;
               c=document.getElementById(id+"-c").innerHTML;
               d=document.getElementById(id+"-d").innerHTML;
               cat=document.getElementById(id+"-cat").innerHTML;
               ans=document.getElementById(id+"-ans").innerHTML;  
                }  
              //document.getElementById("test").innerHTML=ques;   
              
             
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
                   document.getElementById(id+"-questd").innerHTML=type+"d";
                   document.getElementById(id+"-atd").innerHTML=type+"d";
                   document.getElementById(id+"-btd").innerHTML=type+"d";
                   document.getElementById(id+"-ctd").innerHTML=type+"d";
                   document.getElementById(id+"-dtd").innerHTML=type+"d";
                   document.getElementById(id+"-cattd").innerHTML=type+"d";
                   document.getElementById(id+"-anstd").innerHTML=type+"d";
                   n=0;
                 }
                 }
               var url="updateques?id="+id+"&ques="+ques+"&a="+a+"&b="+b+"&c="+c+"&d="+d+"&cat="+cat+"&ans="+ans+"&type="+type+"&lang="+lang;
               url=encodeURI(url);
               document.getElementById("note").innerHTML=url;
              xmlhttp.open("POST",url,true);
              xmlhttp.send(); 
                 
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
        <div id="content" style="height:auto">
            <div id="content_cen"> 
       





<form action="updateques1.jsp" method="post">
<center></br><span style="margin-left:-70px"><b>Select Category:</b><select name="category">
            <option>Select</option>
            <option value="all">All</option><%


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
</select></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Select Language:</b><select name="lang">
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
                      </select></center></br></br>
                      <center><input style="width:50px; height:30px; font-weight:bold; font-size:14; color:blue" type="submit" value="Get"/> </center>                     
                      </form>
                       
                       <center><p id="test" style="color:red"></p></center>
                       <center><p id="note" style="color:green"></p></center>
                       <table border='1' width='900' style="margin-left:-100px">
                                <tr> 
                                     <th>ID</th>                                   
                                     <th>QUESTION</th>
                                     <th>A</th>
                                     <th>B</th>
                                     <th>C</th>
                                     <th>D</th>
                                     <th>CATEGORY</th>
                                     <th>ANSWER</th>
                                     <th>Edit<pre>      </pre></th>
                                     <th>Update<pre>      </pre></th>
                                     <th>Delete<pre>      </pre></th>
                                 </tr>
 <%
        Connection con;
        Statement stmt;
        ResultSet rs;
        String cat=request.getParameter("category").toString();        
        String lang=request.getParameter("lang").toString();        
        String sql;
        int n=0;
        try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
if(con==null)
    out.close();
stmt = con.createStatement();
if(cat.equals("all"))
    sql="Select * from mysql.techobjective"+lang;
else
    sql="Select * from mysql.techobjective"+lang+" where Topic='"+cat+"'"; 

 rs = stmt.executeQuery(sql);


while(rs.next())
{
  int id=rs.getInt("ID");
  String ques=rs.getString("Quest");
  String a=rs.getString("A");
  String b=rs.getString("B");
  String c=rs.getString("C");
  String d=rs.getString("D");
  String topic=rs.getString("Topic");
  String ans=rs.getString("Answer");
%>
<td><span id='<%=id%>-idtd'><p id='<%=id%>-id'><%=id%></p></span></td>           
<td><span id='<%=id%>-questd'><p id='<%=id%>-ques'><%=ques%></p></span></td>
<td><span id='<%=id%>-atd'><p id='<%=id%>-a'><%=a%></p></span></td>
<td><span id='<%=id%>-btd'><p id='<%=id%>-b'><%=b%></p></span></td>
<td><span id='<%=id%>-ctd'><p id='<%=id%>-c'><%=c%></p></span></td>
<td><span id='<%=id%>-dtd'><p id='<%=id%>-d'><%=d%></p></span></td>
<td><span id='<%=id%>-cattd'><p id='<%=id%>-cat'><%=topic%></p></span></td>
<td><span id='<%=id%>-anstd'><p id='<%=id%>-ans'><%=ans%></p></span></td>
<td align='center'><input type='button' value='Edit' name="<%=id%>" onclick='change(this)'/></td>
<td align='center'><input type='button' value='Update' name="<%=id%>"  onclick='mysubmit(this)'/></td>
<td align='center'><input type='button' value='Delete' name="<%=id%>"  onclick='mysubmit(this)'/></td>
</tr>

<%}


 stmt.close();
 con.close();
  } 
   catch(Exception e)
     {
       //out.println(e+"\n");
       e.printStackTrace();
       out.close();
      }
        finally { 
            out.close();
        }
                      %>
                             </table>
                  
          </div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTER</p>
            </div>
        </div>
 
    </body>
</html>

