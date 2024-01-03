package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

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

      out.write("<!-- \n");
      out.write("    Document   : select\n");
      out.write("    Created on : Dec 21, 2012, 10:03:02 PM\n");
      out.write("    Author     : Praveen\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
            String ipaddr = request.getHeader("X-FORWARDED-FOR");
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

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"./css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("           \n");
      out.write("            var uname,pass,n,xmlhttp;  \n");
      out.write("            function validate()\n");
      out.write("            {   \n");
      out.write("                // document.getElementById(\"note\").innerHTML=\"username or password is wrong\";   \n");
      out.write("                uname=document.getElementById(\"uname\").value;\n");
      out.write("                pass=document.getElementById(\"pass\").value;\n");
      out.write("                //document.getElementById(\"note\").innerHTML=uname+\" \"+pass;\n");
      out.write("                if (window.XMLHttpRequest)\n");
      out.write("                {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("                    xmlhttp=new XMLHttpRequest();\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {// code for IE6, IE5\n");
      out.write("                    xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("                xmlhttp.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("                    { \n");
      out.write("                        //document.getElementById(\"note\").innerHTML=xmlhttp.responseText;\n");
      out.write("                        n=parseInt(xmlhttp.responseText);  \n");
      out.write("                \n");
      out.write("                        if(n==1)\n");
      out.write("                            window.document.location.href=\"./adminhome.jsp\";     \n");
      out.write("                        else if(n==2)\n");
      out.write("                            window.document.location.href=\"./emphome.jsp\";\n");
      out.write("                        else if(n==3)\n");
      out.write("                            document.getElementById(\"note\").innerHTML=\"username or password is wrong\";    \n");
      out.write("                        else\n");
      out.write("                            document.getElementById(\"note\").innerHTML=\"Error!</br>Please restart the session\";   \n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                // document.getElementById(\"note\").innerHTML=\"login?uname=\"+uname+\"&pass=\"+pass; \n");
      out.write("                xmlhttp.open(\"GET\",\"login?uname=\"+uname+\"&pass=\"+pass,true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function reset()\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"uname\").value=\"\";\n");
      out.write("                document.getElementById(\"pass\").value=\"\";\n");
      out.write("            }\n");
      out.write("    </script>      </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-30px; margin-left: -60px\"/></center>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\">  \n");
      out.write("                <div style=\"float:left\"><img src=\"./images/logoback.png\" style=\"width:200px; height:200px; margin-top:100px; margin-left: -60px\"/></div>\n");
      out.write("                <div style=\"float:right; margin-top:100px; margin-right:100px; background-image:url(./images/loginback.jpg) \">   \n");
      out.write("                    <fieldset style=\"display:inline-block\"> \n");
      out.write("                        <center><b><u> <legend>LOGIN</legend></u></b></center>  \n");
      out.write("                        <center><b><p id=\"note\" style=\"color:red\"></p></b></center>\n");
      out.write("                        \n");
      out.write("                        <pre>   \n");
      out.write("\n");
      out.write("    <span style=\"font-weight:bold; font-size:16px\">Login-id :</span>   <input size=\"20\" id=\"uname\" type=\"text\"/>  \n");
      out.write("                \n");
      out.write("    \n");
      out.write("    <span style=\"font-weight:bold; font-size:16px\">Password :</span>   <input size=\"20\" id=\"pass\" type=\"password\" />  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("                    <input type=\"button\" value=\"submit\" onclick=\"validate()\"/>        <input type=\"reset\" onclick=\"reset()\"/>\n");
      out.write("                   \n");
      out.write("                        </pre>\n");
      out.write("                    </fieldset> \n");
      out.write("                </div>     \n");
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
