package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class start_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/check.html");
    _jspx_dependants.add("/empmenu.html");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"dropdown-menu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body onbeforeunload=\"window.document.location.href='./logout.jsp'\">\n");
      out.write("        \n");
      out.write("        <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                                 <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                        <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-70px; margin-left: -60px\"/></center>\n");
      out.write("               ");
      out.write("     <ul id=\"navigation\" class=\"nav-main\" style=\"color:white; width:560px;margin-left:150px\">\n");
      out.write("\t         <li><a href=\"emphome.jsp\">Home</a></li>\n");
      out.write("                 <li><a href=\"profile.jsp\">Profile</a></li>                     \n");
      out.write("                 <li><a href=\"start.jsp\">Take Quiz</a></li>\n");
      out.write("                 <li class=\"list\"><a href=\"#\">Reports</a>\n");
      out.write("\t            <ul class=\"nav-sub\">\n");
      out.write("                          <li><a href=\"logreportemp.jsp\">Test log</a></li>\n");
      out.write(" \t                  <li><a href=\"analysisbydate.jsp\">Analysis by Date</a></li>\n");
      out.write("                          <li><a href=\"analysisbycat.jsp\">Analysis by Category</a></li>\n");
      out.write("\t             </ul>\n");
      out.write("            \t</li>\n");
      out.write("                <li><a href=\"settings.jsp\">ChangePassword</a></li>\n");
      out.write("                <li><a href=\"logout.jsp\">Logout</a></li> \n");
      out.write("              </ul>");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\">\n");
      out.write("                <div style=\"float:left\"><img src=\"./images/logoback.png\" style=\"width:200px; height:200px; margin-top:0px; margin-left: 60px\"/></div>\n");
      out.write("               <table style=\"margin-top: 100px\">\n");
      out.write("        <tr><td></td></tr>\n");
      out.write("    </table>\n");
      out.write("     <form action=\"select.jsp\">\n");
      out.write("          <center><table>\n");
      out.write("          <tr><td><td>      </td><h1 style=\"font-size:60px; margin-top:40px\"><i>GYAN KASOUTI</i></h1><td></tr>\n");
      out.write("<tr> <td><input style=\"font-size:28px;font-weight:bold; height:50px; width:100px\" type=\"Submit\" name=\"\" value=\"Start\"></td>\n");
      out.write("</tr>\n");
      out.write("</table></center>     \n");
      out.write("    <br><br><br><br><br><br><br><br>\n");
      out.write("    \n");
      out.write("\n");
      out.write("</form>        \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"foot\">\n");
      out.write("            <div id=\"foot_cen\">\n");
      out.write("                \n");
      out.write("                <p style=\"font-size:16px; text-decoration:underline; color:Silver\">ELECTRIC TRACTION TRAINING CENTRE</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
