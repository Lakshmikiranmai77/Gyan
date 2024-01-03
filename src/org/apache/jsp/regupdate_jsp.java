package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class regupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
 
  if(session.getAttribute("pfno")==null)
  response.sendRedirect("index.jsp");  

      out.write(" \n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("   \n");
      out.write("\n");
      out.write("<head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>GAME</title>\n");
      out.write("        <link href=\"./css/styles.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"dropdown-menu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("         \n");
      out.write("        <!--  STEP ONE: insert path to SWFObject JavaScript -->\n");
      out.write("        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->\n");
      out.write("         \n");
      out.write("      ");

if(request.getParameter("submit")!=null)
{


try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
Statement st = con.createStatement();
String emp = request.getParameter("n3").toString();
String pfno = request.getParameter("n4").toString();
String desg = request.getParameter("n5").toString();
String dept = request.getParameter("n6").toString();
String loc = request.getParameter("n7").toString();
String lname = request.getParameter("n8").toString();
String grade = request.getParameter("n9").toString();


String qry = "update register set password='"+pfno+"',name='"+emp+"',pfno='"+pfno+"',desg='"+desg+"',dept='"+dept+"',loc='"+loc+"',lname='"+lname+"',grade='"+grade+"' where pfno='"+pfno+"'";
String qry1 = "update store set name='"+emp+"',pfno='"+pfno+"',lname='"+lname+"',grade='"+grade+"' where pfno='"+pfno+"'";
//String qry1= "insert into store(pfno,lname,grade) values('"+pfno+"','"+lname+"','"+grade+"')";
//out.println("qry : " + qry);

int val = st.executeUpdate(qry);
int val1 = st.executeUpdate(qry1);
 

if(val>0 || val1>0) 
{
out.println("<center><font color=white>User is Updated Successfully..</font></center>");
}
/*if(val1>0)
{
out.println("<center><font color=white>User is Registered Successfully..</font></center>");
}*/
}

catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
}
}


      out.write("  \n");
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
      out.write("            <div id=\"content_cen\">   \n");
      out.write("            <div style=\"float:left\"><img src=\"./images/logoback1.png\" style=\"position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px\"/></div>\n");
      out.write("                <div style=\"position:absolute; margin-left:-20px; z-index:2\">\n");
      out.write("             <form method=\"POST\" action=\"\">\n");
      out.write("<table align=\"center\" border=\"0\" cellpadding=1 cellspacing=1 align=\"center\" style=\"margin-left:200px; margin-top:30px\">\n");
      out.write("    <caption><h2>REGISTRATION FORM</h2></caption>\n");
      out.write("       <tr><th align=\"left\"></br>PF No:</th><td></br>&nbsp&nbsp<input type=\"text\" name=\"n4\" size=\"25\"></td></tr>\n");
      out.write("        <tr><th align=\"left\"></br>Employee Name:</th><td></br>&nbsp&nbsp<input type=\"text\" name=\"n3\" size=\"25\"></br></td></tr>\n");
      out.write("\t<tr>\n");
      out.write("\t<th align=\"left\"></br>Designation:</th>\n");
      out.write("\t<td></br>&nbsp&nbsp<input type=\"text\" name=\"n5\" size=25></td>\n");
      out.write("\t</tr>\n");
      out.write(" <tr>\n");
      out.write("\t<th align=\"left\"></br>Loco Inspector:</th>\n");
      out.write("          <td> </br>&nbsp&nbsp<select name=\"n8\">\n");
      out.write("              \n");
      out.write("          <br> <option>Select Loco Inspector Name</option>    ");



try{
 Class.forName("com.mysql.jdbc.Driver");
 System.out.println("driver loaded");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
 if(con!=null)
     System.out.println("connected");
 else
      System.out.println("not connected");
 try{
PreparedStatement st1 = con.prepareStatement("select * from loco");

//String query="select topic from generate"
//String qry = "select * from lang ";

//out.println("qry : " + qry);

ResultSet rs1=st1.executeQuery();
while(rs1.next())
    {
      out.write("\n");
      out.write("          <option value='");
      out.print(rs1.getString("topic"));
      out.write('\'');
      out.write('>');
      out.print(rs1.getString("topic"));
      out.write("</option>\n");
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
      out.write("\t</select> </td></tr>\n");
      out.write("\t\n");
      out.write("     <tr>\n");
      out.write("\t<th align=\"left\"></br>Grade:</th>\n");
      out.write("        <td></br>&nbsp&nbsp<select name=\"n9\"><option>Select The Following Grade</option><option>A</option></br>\n");
      out.write("           <option>B</option><option>C</option> </select></td>\n");
      out.write("\t</tr>\n");
      out.write("       <tr>\n");
      out.write("\t<th align=\"left\"></br>Depot :</th>\n");
      out.write("\t<td></br>&nbsp&nbsp<input type=\"text\" name=\"n6\" size=25></br></td>\n");
      out.write("\t</tr>\n");
      out.write("       <tr>\n");
      out.write("\t<th align=\"left\"></br>Division:</th>\n");
      out.write("\t<td></br>&nbsp&nbsp<input type=\"text\" name=\"n7\" size=25></br></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t<td align=\"center\"></br>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("\t<td align=\"center\"></br><input type=\"submit\" name=\"submit\" value=\"Update\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"reset\" name=\"reset\" value=\"Reset\"/></td>\n");
      out.write("\t</tr>\n");
      out.write("        \n");
      out.write("\t</table>\n");
      out.write("    </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"foot\">\n");
      out.write("            <div id=\"foot_cen\">\n");
      out.write("                <div id=\"foot\">\n");
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
