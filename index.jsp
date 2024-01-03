
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<%            String ipaddr = request.getHeader("X-FORWARDED-FOR");
            if (ipaddr == null) {
                ipaddr = request.getRemoteAddr();
            }
            //out.println(ipaddr);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "mysql123");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select count(*) as val from mysql.ipaddress where ipaddr='" + ipaddr + "'");
                rs.next();
                if (rs.getInt("val") <= 0) {
                    response.sendRedirect("error.html");
                }
                con.close();
                st.close();
            } catch (Exception e) {
            }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript">
           
            var uname,pass,n,xmlhttp;  
            function validate()
            {   
                // document.getElementById("note").innerHTML="username or password is wrong";   
                uname=document.getElementById("uname").value;
                pass=document.getElementById("pass").value;
                //document.getElementById("note").innerHTML=uname+" "+pass;
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
                        //document.getElementById("note").innerHTML=xmlhttp.responseText;
                        n=parseInt(xmlhttp.responseText);  
                
                        if(n==1)
                            window.document.location.href="./adminhome.jsp";     
                        else if(n==2)
                            window.document.location.href="./emphome.jsp";
                        else if(n==3)
                            document.getElementById("note").innerHTML="username or password is wrong";    
                        else
                            document.getElementById("note").innerHTML="Error!</br>Please restart the session";   
                    }
                }
                // document.getElementById("note").innerHTML="login?uname="+uname+"&pass="+pass; 
                xmlhttp.open("GET","login?uname="+uname+"&pass="+pass,true);
                xmlhttp.send();
            }
            
            function reset()
            {
                document.getElementById("uname").value="";
                document.getElementById("pass").value="";
            }
    </script>      </head>
    
    <body>
        
        <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-30px; margin-left: -60px"/></center>
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">  
                <div style="float:left"><img src="./images/logoback.png" style="width:200px; height:200px; margin-top:100px; margin-left: -60px"/></div>
                <div style="float:right; margin-top:100px; margin-right:100px; background-image:url(./images/loginback.jpg) ">   
                    <fieldset style="display:inline-block"> 
                        <center><b><u> <legend>LOGIN</legend></u></b></center>  
                        <center><b><p id="note" style="color:red"></p></b></center>
                        
                        <pre>   

    <span style="font-weight:bold; font-size:16px">Login-id :</span>   <input size="20" id="uname" type="text"/>  
                
    
    <span style="font-weight:bold; font-size:16px">Password :</span>   <input size="20" id="pass" type="password" />  
    
    
                    <input type="button" value="submit" onclick="validate()"/>        <input type="reset" onclick="reset()"/>
                   
                        </pre>
                    </fieldset> 
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

