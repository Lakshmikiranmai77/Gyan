<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
        <script type="text/javascript">
           
           var old,pass,pass1,n,xmlhttp;  
           function validate()
            {
                
             // document.getElementById("note").innerHTML="username or password is wrong";   
              old=document.getElementById("old").value;
              pass=document.getElementById("new").value;
              pass1=document.getElementById("new1").value;
              var pfno="<%=session.getAttribute("pfno")%>";
               var lname="<%=session.getAttribute("lname")%>";
                var grade="<%=session.getAttribute("grade")%>";
              if(pass==pass1)
                {  
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
                 document.getElementById("note").innerHTML="Password changed successfully";            
               else
                document.getElementById("note").innerHTML="Entered password is wrong";           
                   }
                }
           
          xmlhttp.open("POST","changepassword?pfno="+pfno+"&old="+old+"&new="+pass,true);
          xmlhttp.send();
                }
            else
               document.getElementById("note").innerHTML="Passwords didn't match"                
          }
            
            function reset()
             {
                 document.getElementById("uname").value="";
                 document.getElementById("pass").value="";
             }
        </script>    
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
                     <%@ include file="empmenu.html" %>
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">  
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:180px; z-index:2">
            <div> </div>
                <div style="float:right; margin-top:100px; margin-right:250px; background-image:url(./images/loginback.jpg) ">   
               <fieldset style="display:inline-block"> 
                   <center><b><u> <legend>Change Password</legend></u></b></center>  
                   <center><b><p id="note" style="color:red"></p></b></center>
                  
                <pre>   

    <span style="font-weight:bold; font-size:16px">Enter Old Password    :</span>   <input size="20" id="old" type="password"/>
    
    <span style="font-weight:bold; font-size:16px">Enter New Password    :</span>   <input size="20" id="new" type="password" />  
    
    <span style="font-weight:bold; font-size:16px">Re enter New Password :</span>   <input size="20" id="new1" type="password" />
    
                    <input type="button" value="submit" onclick="validate()"/>        <input type="reset" onclick="reset()"/>
                   
                </pre>
               </fieldset> 
                </div>     
            </div>
    </div></div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTRE</p>
            </div>
        </div>
    </body>
</html>

