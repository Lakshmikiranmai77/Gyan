<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="check.html" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />     
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="./js/amcharts.js" type="text/javascript"></script>
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
          <script type="text/javascript">
            
            var chart;

            var chartData = [
                  <%
                      String pfno=(String)session.getAttribute("pfno");
                     try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                        Statement st=con.createStatement();
                        Statement st1=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct topic from mysql.topic ");                      
                        String topic;
                        ResultSet rs1;
                        while(rs.next())
                          {
                          topic=rs.getString("topic");                          
                          rs1=st1.executeQuery("select avg(percentage) as percent from mysql.store where category='"+topic+"' and pfno='"+pfno+"'");
                          rs1.next();
                          %>
                          {
                           country: "<%=topic%>",
                           visits: <%=rs1.getInt(1)%>,
                           color:"red"
                           },
                          <%
                          }   
                        }
                     catch(Exception e)
                       {
                       out.println(e);  
                        }
                     
                      %>  

               ];


            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "country";
                chart.startDuration = 1;

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.labelRotation = 45; // this line makes category values to be rotated
                categoryAxis.gridAlpha = 0;
                categoryAxis.fillAlpha = 1;
                categoryAxis.fillColor = "#FAFAFA";
                categoryAxis.gridPosition = "start";

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.dashLength = 5;
                valueAxis.title = "Visitors from country"
                valueAxis.axisAlpha = 0;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.valueField = "visits";
                graph.colorField = "color";
                graph.balloonText = "[[category]]: [[value]]";
                graph.type = "column";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
                chart.addGraph(graph);

                // WRITE
                chart.write("chartdiv");
            });
        </script>
    </head>
    
    <body onbeforeunload="window.document.location.pathname='./logout.jsp'">
        
        <div id="head">
            <div id="head_cen">
                <div id="head_sup" class="head_height">
                     <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <p style="">&nbsp;</p>
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-40px; margin-left: -60px"/></center>
              <%@ include file="empmenu.html" %>
                </div>
            </div>       
        </div>
        <div id="content">
            <div id="content_cen">
                <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:180px; z-index:2">
          <div id="chartdiv" style="padding-top:30px; margin-bottom:50px ; margin-left:-30px;  width: 500px; height:350px; margin: 0 auto"></div> 
             </div>
            </div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTER</p>
            </div>
        </div>
    </body>
</html>

