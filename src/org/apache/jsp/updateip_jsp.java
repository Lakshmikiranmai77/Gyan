package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class updateip_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/check.html");
    _jspx_dependants.add("/adminmenu.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!-- \n");
      out.write("    Document   : select\n");
      out.write("    Created on : Dec 21, 2012, 10:03:02 PM\n");
      out.write("    Author     : Praveen\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write(" \n");
      out.write("  \n");
      out.write("        \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"./css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"dropdown-menu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("         \n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("        <script type=\"text/javascript\">  \n");
      out.write("            var n=0;            \n");
      out.write("            function change(element)\n");
      out.write("            {\n");
      out.write("             n=1;\n");
      out.write("             var sno=element.id;   \n");
      out.write("             var lang=element.innerHTML;\n");
      out.write("             document.getElementById(sno+\"td\").innerHTML=\"<input type='text' id='\"+sno+\"t' value='\"+lang+\"'/>\";\n");
      out.write("             //document.getElementById(\"note\").innerHTML=sno+\"t\";\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function mysubmit(element)\n");
      out.write("            { \n");
      out.write("               \n");
      out.write("              var type=element.value;\n");
      out.write("              var sno=element.name;\n");
      out.write("              if(n==0)\n");
      out.write("                 var cat=document.getElementById(sno).innerHTML;\n");
      out.write("              else\n");
      out.write("                 var cat=document.getElementById(sno+\"t\").value; \n");
      out.write("                 \n");
      out.write("              var reg=new RegExp(\"[\\x20-\\x2F]|[\\x3B-\\x40]|[\\x5B-\\x60]|[\\x7B-\\x7E]|[\\x41-\\x5A]|[\\x61-\\x7A]\");\n");
      out.write("              if(cat==\"\")\n");
      out.write("                 document.getElementById(\"note1\").innerHTML=\"Enter an IP Address\";             \n");
      out.write("              else if(reg.test(cat))\n");
      out.write("                 document.getElementById(\"note1\").innerHTML=\"Your IP Adress  violated the rule\";\n");
      out.write("             else{\n");
      out.write("              //document.getElementById(\"note\").innerHTML=type+\" \"+sno+\" \"+text;\n");
      out.write("              var xmlhttp;\n");
      out.write("              if (window.XMLHttpRequest)\n");
      out.write("                {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("                xmlhttp=new XMLHttpRequest();\n");
      out.write("                 }\n");
      out.write("               else\n");
      out.write("               {// code for IE6, IE5\n");
      out.write("                 xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("               xmlhttp.onreadystatechange=function()\n");
      out.write("                  {\n");
      out.write("              if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("                 { \n");
      out.write("                   document.getElementById(\"note1\").innerHTML=\"\";                     \n");
      out.write("                   document.getElementById(\"note\").innerHTML=xmlhttp.responseText;\n");
      out.write("                   document.getElementById(sno+\"td\").innerHTML=\"<p id='\"+sno+\"' onclick='change(this)'>\"+cat+\"</p>\";   \n");
      out.write("                   n=0;\n");
      out.write("                 }\n");
      out.write("                 }\n");
      out.write("         \n");
      out.write("              xmlhttp.open(\"POST\",\"updateip?sno=\"+sno+\"&type=\"+type+\"&ip=\"+cat,true);\n");
      out.write("              xmlhttp.send();       \n");
      out.write("             }              \n");
      out.write("               }\n");
      out.write("        </script>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body onbeforeunload=\"window.document.location.href='./logout.jsp'\" >\n");
      out.write("     <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-70px; margin-left:-60px \"/></center>\n");
      out.write("                               ");
      out.write("<ul id=\"navigation\" class=\"nav-main\" style=\"color:white\">\r\n");
      out.write("\t<li><a href=\"adminhome.jsp\">Home</a></li>\r\n");
      out.write("    \r\n");
      out.write("    <li class=\"list1\"><a href=\"#\">Registration</a>\r\n");
      out.write("\t<ul class=\"nav-sub\">\r\n");
      out.write("    <li><a href=\"register.jsp\">Registration</a></li>\r\n");
      out.write("    <li><a href=\"regupdate.jsp\">User Update</a></li>\r\n");
      out.write(" \t\t<li><a href=\"addlc.jsp\">Add Loco Inspector</a></li>       \r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</li>\r\n");
      out.write("         <li class=\"list\"><a href=\"#\">Reports</a>\r\n");
      out.write("\t<ul class=\"nav-sub\">\r\n");
      out.write("    <li><a href=\"reportbydate.jsp\">Report by date</a></li>\r\n");
      out.write("    <li><a href=\"r1.jsp\">Loco Inspector wise</a></li>\r\n");
      out.write("    <li><a href=\"r2.jsp\">All Employee Reports</a></li>\r\n");
      out.write("\t<li><a href=\"reportbynumber.jsp\">Report by number</a></li>\r\n");
      out.write("        <li><a href=\"online.jsp\">Online Report</a></li>\t\t\r\n");
      out.write("        <li><a href=\"analysisbydate_admin.jsp\">Analysis By Date</a></li>\r\n");
      out.write("        <li><a href=\"analysisbycat_admin.jsp\">Analysis By Category</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</li>\r\n");
      out.write("        <li class=\"list\"><a href=\"#\">Questions</a>\r\n");
      out.write("\t<ul class=\"nav-sub\">\r\n");
      out.write("    <li><a href=\"questioninsert.jsp\">Insert</a></li>\r\n");
      out.write(" \t\t<li><a href=\"updateques.jsp\">Delete/Update</a></li>       \r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</li>\r\n");
      out.write("          <li class=\"list\"><a href=\"#\">Others</a>\r\n");
      out.write("\t<ul class=\"nav-sub\">\r\n");
      out.write("               <li><a href=\"addcategory.jsp\">Add Topic</a></li>\r\n");
      out.write(" \t\t<li><a href=\"updatecat.jsp\">Delete/Update Topic</a></li>\r\n");
      out.write("\t\t<li><a href=\"addlanguage.jsp\">Add Language</a></li>\r\n");
      out.write("        <li><a href=\"updatelanguage.jsp\">Delete/Update Language</a></li>        \r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</li>\r\n");
      out.write("     <li class=\"list\"><a href=\"#\">Settings</a>\r\n");
      out.write("\t<ul class=\"nav-sub\">\r\n");
      out.write("               <li><a href=\"changepass.jsp\">Change Password</a></li>\r\n");
      out.write(" \t\t<li><a href=\"resetpass.jsp\">Reset Password</a></li>\r\n");
      out.write("                <li><a href=\"addip.jsp\">Add IP Address</a></li>\r\n");
      out.write("                <li><a href=\"updateip.jsp\">Update/Delete IP Address</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</li>\r\n");
      out.write("    <li><a href=\"logout.jsp\">&nbsp;&nbsp;&nbsp;Logout&nbsp;&nbsp;&nbsp;</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write(" \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\"> \n");
      out.write("             <div style=\"float:left\"><img src=\"./images/logoback1.png\" style=\"position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px\"/></div>\n");
      out.write("                <div style=\"position:absolute; margin-left:150px; z-index:2\">\n");
      out.write("                \n");
      out.write("              <center>  <table align=\"center\" border=\"0\" style=\"width:400px;\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>SNO</th>\n");
      out.write("                    <th><pre>    </pre></th>\n");
      out.write("                    <th>IP Address</th>\n");
      out.write("                </tr>                  \n");
      out.write("                ");

                try{
                 Connection con;
                 Statement stmt;                   
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                   if(con==null)
                         out.close();
                    stmt = con.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from mysql.ipaddress");
                    while(rs.next())
                    {
                     int sno=rs.getInt("sno");
                     String lang=rs.getString("ipaddr");                       
                     
      out.write("\n");
      out.write("                     <tr>                         \n");
      out.write("                         <td align=\"center\">");
      out.print(sno);
      out.write("</td>\n");
      out.write("                         <td><pre>    </pre></td>\n");
      out.write("                         <td align=\"center\"><span id='");
      out.print(sno);
      out.write("td'><p id='");
      out.print(sno);
      out.write("' onclick=\"change(this)\">");
      out.print(lang);
      out.write("</p></span></td>\n");
      out.write("                         \n");
      out.write("                         <td align=\"center\"><input type=\"button\" value=\"update\" name='");
      out.print(sno);
      out.write("' onclick=\"mysubmit(this)\"/></td>\n");
      out.write("                         <td align=\"center\"><input type=\"button\" value=\"delete\" name='");
      out.print(sno);
      out.write("'  onclick=\"mysubmit(this)\"/></td>\n");
      out.write("                     </tr>\n");
      out.write("                     ");
   
                    
                    
                     }
                    }
                catch(Exception e)
                    {
                     out.println(e);
                     }
                 
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                <td colspan=\"5\" align=\"center\"> <b style=\"color:red\"><u>Note:</u></b></br></br>The IP Address should only contain ,numbers{0-9} and probably \":\" symbol </td> \n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\" colspan=\"5\">\n");
      out.write("                        <p id=\"note\" style=\"color:green\"></p>\n");
      out.write("                        <p id=\"note1\" style=\"color:red\"></p>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table> \n");
      out.write("        </center>\n");
      out.write("</div></div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"foot\">\n");
      out.write("            <div id=\"foot_cen\">\n");
      out.write("                \n");
      out.write("                <p style=\"font-size:16px; text-decoration:underline; color:Silver\">ELECTRIC TRACTION TRAINING CENTER</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write(" \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
