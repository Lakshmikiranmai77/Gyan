 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="check.html" %>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
            
      <script type="text/javascript">
       var cat='<%= request.getParameter("category")%>';
       var qno=<%= request.getParameter("qno")%>;
       var lang='<%= request.getParameter("lang")%>';
       var pf='<%= session.getAttribute("pfno")%>';
       var lname='<%= request.getParameter("lname")%>';
       var grade='<%= request.getParameter("grade")%>';
       var name='<%= request.getParameter("name")%>';
       var obj,tot,curnum=0,ans,pfno,tim,date1,h=0,crct,cans=0,qsec=60,count;      	
        </script>
        <script type="text/javascript" src="script.js"></script>
        
    </head>
    <%
    String name=request.getParameter("name");
    out.println(name);
%>
    <body onload="quesget()"  onbeforeunload="window.document.location.href='./logout.jsp'">
        
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
                <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:0px; z-index:2">
                <p id="test"></p>
            <div id="quotPan">
                <h3><span>Total time:</span><span id="time" ></span></h3>
    <input name="submit" type="button" class="btn" value="NEXT" style="margin-left:35px" onclick="nextques()"/>
    <h3 style="float:right"><span>Question time:</span><span id="questime"></span></h3>
   </div>
   <div id="content_sup">
       <table width="750" height="275" align="center" cellspacing="25px" style="color:white; font-size:14px; margin-left:30px;">
 
 <tr> 
 
  <td align=left colspan="8" height="86" style="background-repeat:no-repeat; width:700px; background-image:url(./images/ques.jpg); "><p id="ques" style="padding-left:30px; font-size:15px"></p></td>
 </tr>
 <tr></tr>
 
 <tr>
 
     <td  width="300" height="53" background="./images/normal.jpg"  id="A" ><p id="optA" style="padding-left:35px; font-size:14px" onmouseover="Amover()" onmouseout="Amout()" onclick="Aclickfun()"></p></td>
  
  <td></td>

  <td id="B" background="./images/normal.jpg" colspan="2" ><p id="optB" style="padding-left:30px; font-size:14px" onmouseover="Bmover()" onmouseout="Bmout()" onclick="Bclickfun()"></p></td> 
  
 </tr>
 <tr></tr>
 <tr>
  <td height="54"  background="./images/normal.jpg" id="C"><p id="optC" style="padding-left:30px; font-size:14px" onmouseover="Cmover()" onmouseout="Cmout()" onclick="Cclickfun()"></p></td>
  <td></td>  
  <td id="D"  background="./images/normal.jpg" colspan="2"><p id="optD" style="padding-left:30px; font-size:14px" onmouseover="Dmover()" onmouseout="Dmout()" onclick="Dclickfun()" ></p></td>
</tr>
 </table>
     </div>
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
