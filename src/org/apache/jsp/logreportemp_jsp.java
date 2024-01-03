package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.util.Date;
import java.util.Calendar;
import java.net.URL;
import java.lang.String;
import java.text.*;

public final class logreportemp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/check.html");
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
      out.write("\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("         <script type=\"text/javascript\">\n");
      out.write("            function FnPrint()\n");
      out.write("            {\n");
      out.write("                but.style.display=\"none\";\n");
      out.write("                window.print();\n");
      out.write("                but.style.display=\"block\";\n");
      out.write("            }\n");
      out.write("            </script> \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("     ");

                         Date date1 = Calendar.getInstance().getTime();
                         DateFormat formatter44 = new SimpleDateFormat("dd/M/yyyy");
                         String pr = formatter44.format(date1);  
                         String pfno=(String)session.getAttribute("pfno");                         
                         
                         
                                    
    
      out.write("\n");
      out.write("    <body onbeforeunload=\"window.document.location.href='./logout.jsp'\" >\n");
      out.write("     <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-70px; margin-left:-60px \"/></center>\n");
      out.write("                 \n");
      out.write("            \t\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\">   \n");
      out.write("             <form name=\"printpage\">\n");
      out.write("               \n");
      out.write("        <font color=\"\" >\n");
      out.write("             <div style=\"float:left\"><img src=\"./images/logoback1.png\" style=\"position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px\"/></div>\n");
      out.write("                <div style=\"position:absolute; margin-left:180px; z-index:2\">\n");
      out.write("             <h3 style=\"color:black; float:right; margin-right:0px\">");
      out.print( pr);
      out.write("</h3>\n");
      out.write("             <h3 style=\"color:black; float:left; margin-left:0px\">PF Number:");
      out.print( pfno);
      out.write("</h3>  \t\n");
      out.write("                     \n");
      out.write("        <center>\n");
      out.write("            <br>\n");
      out.write("            <table border=\"2\" width=\"90%\" cellspacing=\"1\" cellpadding=\"1\" > &nbsp;&nbsp;\n");
      out.write("           \n");
      out.write("           <tr>\n");
      out.write("               <th>PF NUMBER</th><th>Time</th><th>Date Of Exam</th><th>Category</th><th>No.of Questions</th><th>Percentage</th><th>Score</th>\n");
      out.write("            </tr>\n");
      out.write("       \n");
      out.write("       ");
      
          try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
              ResultSet rs;
              Statement st=con.createStatement();
              rs=st.executeQuery("select * from mysql.store where pfno='"+pfno+"'");
              
          
            while(rs.next())
                {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("pfno"));
      out.write("</td>\n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("time"));
      out.write("</td>\n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("date"));
      out.write("</td>\n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("category"));
      out.write("</td>\n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("ques"));
      out.write("</td>\n");
      out.write("              <td align=\"center\">");
      out.print(rs.getString("percentage"));
      out.write("%</td>\n");
      out.write("            <td align=\"center\">");
      out.print(rs.getString("score"));
      out.write("</td>\n");
      out.write("            \t</tr>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("    ");

        }
      }
      catch(Exception e)
    {
         out.println(e);
    }
    
      out.write("\n");
      out.write("      \n");
      out.write("  </table>\n");
      out.write("  </center>\n");
      out.write("  <div id=\"but\">\n");
      out.write("      <center>            <input type=\"button\" value=\"   Print   \" class=\"button\"\n");
      out.write("                               name=\"butPrev\" onclick=\"FnPrint()\"></center>\n");
      out.write("                                 <br><center><a style='font-size:28px' href='emphome.jsp'>Home</a><p id='test' style='color:green'></p></center> \n");
      out.write("                 \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("</font>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
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
