// JavaScript Document
  
     
 

    
    
     var obj,tot,curnum=0,ans,pfno,tim,date1; 
      var h=0;	  
      var crct=0;
      var cans=0;
      var qsec=60;
      var count,millisec,date;
      
     function quesget()  
	 {
             
           normal();  
           var counter=setInterval(timer, 1000); //1000 will  run it every 1 second	
           var counter1=setInterval(questime, 1000);
           var d=new Date();
           millisec=d.getTime();
           tim=d.getHours()+":"+d.getMinutes();
           date=d.getDate()+"/"+(d.getMonth()+1)+"/"+d.getFullYear();
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
           tot=parseInt(obj.num);
           count=tot*60;
                              
          // document.getElementById("ques").innerHTML=obj.ques[curnum];
           nextques();
	   	  		
          }  
         }
              
       //document.getElementById("test").innerHTML=cat+" "+qno+" "+lang;
       
       xmlhttp.open("POST","Retrive?lang="+lang+"&name="+name+"&category="+cat+"&qno="+qno,true);
       xmlhttp.send();
	 }
         
   function nextques()
    {
     normal();
     if(curnum<tot)
       {           
      ans=obj.right[curnum]; 
     document.getElementById("ques").innerHTML=(curnum+1)+"."+obj.ques[curnum];
     document.getElementById("optA").innerHTML="A."+obj.opta[curnum];
     document.getElementById("optB").innerHTML="B."+obj.optb[curnum];
     document.getElementById("optC").innerHTML="C."+obj.optc[curnum];
     document.getElementById("optD").innerHTML="D."+obj.optd[curnum];
     if(curnum!=0)
       qsec=60;
     curnum++;
     h=0;crct=0;
       }
     else
        score();         
     }
	  
	
   
   function normal()
     {
      document.getElementById("A").style.background='url("./images/normal.jpg") no-repeat';
      document.getElementById("B").style.background='url("./images/normal.jpg") no-repeat';      
      document.getElementById("C").style.background='url("./images/normal.jpg") no-repeat';
      document.getElementById("D").style.background='url("./images/normal.jpg") no-repeat'; 
     }
      
       
        
      
     function timer()
      { 	   
	   var c=count;
	   var m=Math.floor(c/60);
	   var s=c-(m*60);
	   var time;
           
	   if(m<10)	    
           time="0"+m;   
	   else
	       time=m;
	   if(s<10)
	       time=time+":"+"0"+s;
	   else
	       time=time+":"+s;  
		
	  
	  document.getElementById("time").innerHTML=time;
	   

      count=count-1;
      if (count <= 0)
       {
     clearInterval(counter);
//     counter ended, do something here
     return;
       }
      }
	 
 
  function questime()
     {
           var c=qsec;
	   var m=Math.floor(c/60);
	   var s=c-(m*60);
	   var time;
	     
	   if(m<10)	    
           time="0"+m;   
	   else
	       time=m;
	   if(s<10)
	       time=time+":"+"0"+s;
	   else
    	       time=time+":"+s; 	   	           	    
	  
	     document.getElementById("questime").innerHTML=time;	 
	     
	 qsec=qsec-1;
     if (count <= 0)
      {
     clearInterval(counter1);
  //   counter ended, do something here
     return;
       }
	 if(qsec==0)
	    nextques();  
   }
   
 	function score()
        { 
          var per=Math.round((cans/tot)*100);
          
          var result="<center style='font-size:30px;margin-top:100px'>Total questions:"+tot+"<br/>Correct answers:"+cans+"<br/><span >Wrong answers:"+(tot-cans)+"<br/>Percentage:"+per+"%</center>";
           document.getElementById("content_cen").innerHTML=result+"</br><center><a style='font-size:28px' href='emphome.jsp'>Home</a><p id='test' style='color:green'></p></center>" ; 
          
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
              document.getElementById("test").innerHTML=xmlhttp.responseText;		
           }  
         }
        // document.getElementById("test").innerHTML="Store?pfno="+pf+"&category="+cat+"&qno="+tot+"&score="+cans+"&time="+tim+"&date="+date1;
        xmlhttp.open("GET","Store?pfno="+pf+"&category="+cat+"&lname="+lname+"&name="+name+"&grade="+grade+"&qno="+tot+"&cans="+cans+"&time="+tim+"&per="+per+"&millisec="+millisec+"&date="+date,true);
       xmlhttp.send();
           
           
        }
  
         

      
  
	
	 
	function Amover()
	  {  
	  if(h==0)                
		      document.getElementById("A").style.background='url("./images/hover.jpg") no-repeat';
	        	  
		   } 
	 function Amout()
	  {
		 if(h==0)
		     document.getElementById("A").style.background='url("./images/normal.jpg") no-repeat';
	       	  
		   } 
		   	      
	function Aclickfun()
	  {  h=1;
	     if(crct==0) 	       
	      {
		   crct=1;	  
		  if(ans.match("A"))
                      {
                       cans++;                       
		     document.getElementById("A").style.background='url("./images/right.gif") no-repeat';                     
                     }
	          else
                    {
                        
		     document.getElementById("A").style.background='url("./images/wrong.gif") no-repeat';
                     document.getElementById(ans).style.background='url("./images/right.gif") no-repeat';
                    }
		   }
	 }
        	 
    function Bmover()
	  {
		 if(h==0)
		     document.getElementById("B").style.background='url("./images/hover.jpg") no-repeat';
	       	  
		   } 
	 function Bmout()
	  {
		 if(h==0)
		     document.getElementById("B").style.background='url("./images/normal.jpg") no-repeat';
	       	  
		   } 
		   	      
	function Bclickfun()
	  {  h=1;
	     if(crct==0) 	       
	      {
		   crct=1;	  
		  if(ans.match("B"))
                      {cans++; 
		     document.getElementById("B").style.background='url("./images/right.gif") no-repeat';
                     
                     }
	      else
		    {
                        
                       document.getElementById("B").style.background='url("./images/wrong.gif") no-repeat';
                       document.getElementById(ans).style.background='url("./images/right.gif") no-repeat';
                    }
                 }
          }
	 
       function Cmover()
	  {
		 if(h==0)
		     document.getElementById("C").style.background='url("./images/hover.jpg") no-repeat';
	       	  
		   } 
	 function Cmout()
	  {
		 if(h==0)
		     document.getElementById("C").style.background='url("./images/normal.jpg") no-repeat';
	       	  
		   } 
		   	      
	function Cclickfun()
	  {  h=1;
	     if(crct==0) 	       
	      {
		   crct=1;	  
		  if(ans.match("C"))
                    {
                     cans++; 
		     document.getElementById("C").style.background='url("./images/right.gif") no-repeat';
                     
                     }
	      else
                  {
		     document.getElementById("C").style.background='url("./images/wrong.gif") no-repeat';		  
                     document.getElementById(ans).style.background='url("./images/right.gif") no-repeat';
                  }
		   }
	 }
       function Dmover()
	  {
		 if(h==0)
		     document.getElementById("D").style.background='url("./images/hover.jpg") no-repeat';
	       	  
		   } 
	 function Dmout()
	  {
		 if(h==0)
		     document.getElementById("D").style.background='url("./images/normal.jpg") no-repeat';
	       	  
		   } 
		   	      
	function Dclickfun()
	  {  h=1;
	     if(crct==0) 	       
	      {
		   crct=1;	  
		  if(ans.match("D"))
                      {
                         cans++;                       
		     document.getElementById("D").style.background='url("./images/right.gif") no-repeat';                     
                     }
	      else
                  {
		             document.getElementById("D").style.background='url("./images/wrong.gif") no-repeat';		  
                     document.getElementById(ans).style.background='url("./images/right.gif") no-repeat';
                  }
		   }
	 }
       
  