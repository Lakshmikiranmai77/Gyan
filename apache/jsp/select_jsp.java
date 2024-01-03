package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class select_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
      out.write("        \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"./css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"dropdown-menu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function mysubmit()\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("             var i=0;   \n");
      out.write("             var str=\"You must select \";   \n");
      out.write("             if(document.getElementById(\"language\").value=='Select')\n");
      out.write("                {i=1; str=str+\"a language\";}\n");
      out.write("             if(document.getElementById(\"category\").value=='Select')\n");
      out.write("                {i=1; str=str+\",a category\";}\n");
      out.write("             if(i==0)\n");
      out.write("                document.forms[\"myform\"].submit();\n");
      out.write("             else\n");
      out.write("                 document.getElementById(\"test\").innerHTML=str;  \n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body  onbeforeunload=\"window.document.location.href='./logout.jsp'\">\n");
      out.write("     <div id=\"head\">\n");
      out.write("            <div id=\"head_cen\">\n");
      out.write("                <div id=\"head_sup\" class=\"head_height\">\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <p style=\"\">&nbsp;</p>\n");
      out.write("                    <center><img src=\"./images/title.jpg\" style=\"width:940px; margin-top:-70px; margin-left:-60px \"/></center>\n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div id=\"content_cen\">\n");
      out.write("                <div style=\"float:left\"><img src=\"./images/logoback1.png\" style=\"position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px\"/></div>\n");
      out.write("                <div style=\"position:absolute; margin-left:60px; z-index:2\">\n");
      out.write("                <p id=\"test\" style=\"color:red; text-align: center\"></p>\n");
      out.write("               \n");
      out.write("                <pre style=\"font-size:20px\">\n");
      out.write("\n");
      out.write("                <form id=\"myform\" action=\"test.jsp\" method=\"post\">    \n");
      out.write("         PF Number             :");
      out.print((String)session.getAttribute("pfno"));
      out.write("  \n");
      out.write(" ");
try{
     String lname=(String)session.getAttribute("pfno"); 
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st = con.prepareStatement("select lname,grade,name from mysql.register where pfno='"+lname+"'");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs=st.executeQuery();
while(rs.next())
    {
      out.write(" \n");
      out.write("         User Name             :<input type=\"text\"  value=\"");
      out.print(rs.getString("name"));
      out.write("\" name=\"name\"  readonly/>\n");
      out.write("         \n");
      out.write("         LI Name               :<input type=\"text\"  value=\"");
      out.print(rs.getString("lname"));
      out.write("\" name=\"lname\" readonly/>\n");
      out.write("         \n");
      out.write("         Grade                 :<input type=\"text\" value=\"");
      out.print(rs.getString("grade"));
      out.write("\" name=\"grade\" readonly/>                       \n");

 }
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
} 
      out.write(" \n");
      out.write("         Select Language       :<select id=\"language\" name=\"lang\">\n");
      out.write("                                   <option>Select</option>\n");
      out.write("                                   \n");
      out.write("                     ");


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st = con.prepareStatement("select * from language");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs=st.executeQuery();
while(rs.next())
    {
      out.write("\n");
      out.write("          <option><b>");
      out.print(rs.getString("lang"));
      out.write("</b></option>\n");
      out.write("                                           \n");
      out.write("                               \n");

                              
   

}
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
} 
      out.write(" \n");
      out.write("</select> \n");
      out.write("       \n");
      out.write("         Select Category       :<select id=\"category\" name=\"category\">\n");
      out.write("                                   <option>Select</option>\n");
      out.write("                                    ");



try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st1 = con.prepareStatement("select * from topic");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs1=st1.executeQuery();
while(rs1.next())
    {
      out.write("\n");
      out.write("          <option><font color=\"blue\">");
      out.print(rs1.getString("topic"));
      out.write("</font></b></option>\n");
      out.write("                                           \n");
      out.write("                               \n");


}
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
} 
      out.write(" \n");
      out.write("</select> \n");
      out.write("\n");
      out.write("         Select No Of Questions:<B><select name=\"qno\">  \n");
      out.write("                         <option value=\"5\">5</option>    \n");
      out.write("                          <option value=\"10\">10</option>\n");
      out.write("                \n");
      out.write("                                <option value=\"15\">15</option>\n");
      out.write("                                <option value=\"20\">20</option>\n");
      out.write("                                <option value=\"25\">25</option>\n");
      out.write("                                <option value=\"30\">30</option>\n");
      out.write("                                <option value=\"35\">35</option>\n");
      out.write("                                <option value=\"40\">40</option>\n");
      out.write("                                <option value=\"45\">45</option>\n");
      out.write("                                <option value=\"50\">50</option>\n");
      out.write("                                </select></B><br/>\n");
      out.write("                        <input style=\"font-weight:bold;font-size:30px; height:50px; width:220px; color:blue\" type=\"button\" value=\"START TEST\" size=\"50\" onclick=\"mysubmit()\"/>                                \n");
      out.write("               </form>                 \n");
      out.write("                </pre>\n");
      out.write("                \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("        <div id=\"foot\">\n");
      out.write("            <div id=\"foot_cen\">\n");
      out.write("                \n");
      out.write("                <p style=\"font-size:16px; text-decoration:underline; color:Silver\">ELECTRIC TRACTION TRAINING CENTRE</p>\n");
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
