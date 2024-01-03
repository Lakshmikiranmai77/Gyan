package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"./css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("      \n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("       var cat='");
      out.print( request.getParameter("category"));
      out.write("';\n");
      out.write("       var qno=");
      out.print( request.getParameter("qno"));
      out.write(";\n");
      out.write("       var lang='");
      out.print( request.getParameter("lang"));
      out.write("';\n");
      out.write("       var pf='");
      out.print( session.getAttribute("pfno"));
      out.write("';\n");
      out.write("       var lname='");
      out.print( request.getParameter("lname"));
      out.write("';\n");
      out.write("       var grade='");
      out.print( request.getParameter("grade"));
      out.write("';\n");
      out.write("       var name='");
      out.print( request.getParameter("name"));
      out.write("';\n");
      out.write("       var obj,tot,curnum=0,ans,pfno,tim,date1,h=0,crct,cans=0,qsec=60,count;      \t\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" src=\"script.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    ");

    String name=request.getParameter("name");
    out.println(name);

      out.write("\n");
      out.write("    <body onload=\"quesget()\"  onbeforeunload=\"window.document.location.href='./logout.jsp'\">\n");
      out.write("        \n");
      out.write("        <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                                 <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-30px; margin-left: -60px\"/></center>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\">\n");
      out.write("                <div style=\"float:left\"><img src=\"./images/logoback1.png\" style=\"position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px\"/></div>\n");
      out.write("                <div style=\"position:absolute; margin-left:0px; z-index:2\">\n");
      out.write("                <p id=\"test\"></p>\n");
      out.write("            <div id=\"quotPan\">\n");
      out.write("                <h3><span>Total time:</span><span id=\"time\" ></span></h3>\n");
      out.write("    <input name=\"submit\" type=\"button\" class=\"btn\" value=\"NEXT\" style=\"margin-left:35px\" onclick=\"nextques()\"/>\n");
      out.write("    <h3 style=\"float:right\"><span>Question time:</span><span id=\"questime\"></span></h3>\n");
      out.write("   </div>\n");
      out.write("   <div id=\"content_sup\">\n");
      out.write("       <table width=\"750\" height=\"275\" align=\"center\" cellspacing=\"25px\" style=\"color:white; font-size:14px; margin-left:30px;\">\n");
      out.write(" \n");
      out.write(" <tr> \n");
      out.write(" \n");
      out.write("  <td align=left colspan=\"8\" height=\"86\" style=\"background-repeat:no-repeat; width:700px; background-image:url(./images/ques.jpg); \"><p id=\"ques\" style=\"padding-left:30px; font-size:15px\"></p></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr></tr>\n");
      out.write(" \n");
      out.write(" <tr>\n");
      out.write(" \n");
      out.write("     <td  width=\"300\" height=\"53\" background=\"./images/normal.jpg\"  id=\"A\" ><p id=\"optA\" style=\"padding-left:35px; font-size:14px\" onmouseover=\"Amover()\" onmouseout=\"Amout()\" onclick=\"Aclickfun()\"></p></td>\n");
      out.write("  \n");
      out.write("  <td></td>\n");
      out.write("\n");
      out.write("  <td id=\"B\" background=\"./images/normal.jpg\" colspan=\"2\" ><p id=\"optB\" style=\"padding-left:30px; font-size:14px\" onmouseover=\"Bmover()\" onmouseout=\"Bmout()\" onclick=\"Bclickfun()\"></p></td> \n");
      out.write("  \n");
      out.write(" </tr>\n");
      out.write(" <tr></tr>\n");
      out.write(" <tr>\n");
      out.write("  <td height=\"54\"  background=\"./images/normal.jpg\" id=\"C\"><p id=\"optC\" style=\"padding-left:30px; font-size:14px\" onmouseover=\"Cmover()\" onmouseout=\"Cmout()\" onclick=\"Cclickfun()\"></p></td>\n");
      out.write("  <td></td>  \n");
      out.write("  <td id=\"D\"  background=\"./images/normal.jpg\" colspan=\"2\"><p id=\"optD\" style=\"padding-left:30px; font-size:14px\" onmouseover=\"Dmover()\" onmouseout=\"Dmout()\" onclick=\"Dclickfun()\" ></p></td>\n");
      out.write("</tr>\n");
      out.write(" </table>\n");
      out.write("     </div>\n");
      out.write(" </div>\n");
      out.write("</div>     \n");
      out.write("         \n");
      out.write("     </div>\n");
      out.write("        <div id=\"foot\">\n");
      out.write("            <div id=\"foot_cen\">\n");
      out.write("                \n");
      out.write("                <p style=\"font-size:16px; text-decoration:underline; color:Silver\">ELECTRIC TRACTION TRAINING CENTRE</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
