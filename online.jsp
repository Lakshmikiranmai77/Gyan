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
            
               var counter=setInterval(loadpf,4000);
               var obj,xmlhttp;  
               function loadpf()
               {
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
                  obj=eval("("+xmlhttp.responseText+")");
                  var tot=parseInt(obj.num);
                  document.getElementById("online").innerHTML="";
                  if(tot==1)
                      document.getElementById("online").innerHTML=obj.pfno;
                  else 
                  for(var i=0;i<tot;i++)                    
                    {
                        document.getElementById("online").innerHTML=document.getElementById("online").innerHTML+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+obj.pfno[i];   
                    }   
                   }
                  }
           
                xmlhttp.open("POST","online",true);
                xmlhttp.send();
          }
            
           
        </script>    
    </head>
    
    <body onbeforeunload="window.document.location.href='./logout.jsp'" onload="loadpf()">
        
        <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                                 <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left: -60px"/></center>
                               <%@ include file="adminmenu.html" %> 
                </div>
            </div>
        </div>
        <div id="content">
            <div id="content_cen">  
            <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:160px; z-index:2">
                <center><h3 style="color:black">Online Status</h3></center> </br>
               <center> <div id="online" style="background-color:white; margin-top:50px;width:500px; height:auto; color:green; font-weight:bold"></div></center>
            </div>
    </div></div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTRE</p>
            </div>
        </div>
    </body>
</html>

