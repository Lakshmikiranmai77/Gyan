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
            var chartData = [];
            var chartCursor;

            AmCharts.ready(function () {
                // generate some data first
                generateChartData();

                // SERIAL CHART    
                chart = new AmCharts.AmSerialChart();
                chart.pathToImages = "./js/images/";
                chart.zoomOutButton = {
                    backgroundColor: '#000000',
                    backgroundAlpha: 0.15
                };
                chart.dataProvider = chartData;
                chart.categoryField = "date";
                chart.balloon.bulletSize = 5;

                // listen for "dataUpdated" event (fired when chart is rendered) and call zoomChart method when it happens
                chart.addListener("dataUpdated", zoomChart);

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
                categoryAxis.minPeriod = "DD"; // our data is daily, so we set minPeriod to DD
                categoryAxis.dashLength = 1;
                categoryAxis.gridAlpha = 0.15;
                categoryAxis.position = "top";
                categoryAxis.axisColor = "#DADADA";

                // value                
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.axisAlpha = 0;
                valueAxis.dashLength = 1;
                chart.addValueAxis(valueAxis);

                // GRAPH
                var graph = new AmCharts.AmGraph();
                graph.title = "red line";
                graph.valueField = "visits";
                graph.bullet = "round";
                graph.bulletBorderColor = "#FFFFFF";
				graph.bulletBorderThickness = 2; 
                graph.lineThickness = 2;
                graph.lineColor = "#5fb503";
                graph.negativeLineColor = "#efcc26";
                graph.hideBulletsCount = 50; // this makes the chart to hide bullets when there are more than 50 series in selection
                chart.addGraph(graph);

                // CURSOR
                chartCursor = new AmCharts.ChartCursor();
                chartCursor.cursorPosition = "mouse";
                chartCursor.pan = true; // set it to fals if you want the cursor to work in "select" mode
                chart.addChartCursor(chartCursor);

                // SCROLLBAR
                var chartScrollbar = new AmCharts.ChartScrollbar();
                chart.addChartScrollbar(chartScrollbar);

                // WRITE
                chart.write("chartdiv");
            });

            // generate some random data, quite different range
            function generateChartData() {
                   <%
                    String pfno=(String)session.getAttribute("pfno");
                     try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                        Statement st=con.createStatement();
                        Statement st1=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct date from mysql.store where pfno='"+pfno+"' ORDER BY date"); 
                        ResultSet rs1;                                              
                        String date;
                        
                        while(rs.next())
                          {
                            date=rs.getString("date");
                            rs1=st1.executeQuery("select avg(percentage) as percent from mysql.store where date='"+date+"' and pfno='"+pfno+"'");
                            rs1.next();
                           String parts[]=date.split("/");
                           int mon=Integer.parseInt(parts[1]);
                           mon=mon-1; 
                          %>    
                          chartData.push({        
                          date: new Date(<%=parts[2]%>, <%=mon%> , <%=parts[0]%>) ,
                          visits: <%=rs1.getInt("percent")%> 
                          });
                          <%  
                          }
                        con.close();
                        st.close();
                        }
                     catch(Exception e){
                     out.println(e);}
                     %>
              
            }

            // this method is called when chart is first inited as we listen for "dataUpdated" event
            function zoomChart() {
                // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                chart.zoomToIndexes(chartData.length - 40, chartData.length - 1);
            }
            
            // changes cursor mode from pan to select
            function setPanSelect() {
                if (document.getElementById("rb1").checked) {
                    chartCursor.pan = false;
                    chartCursor.zoomable = true;
                } else {
                    chartCursor.pan = true;
                }
                chart.validateNow();
            }   
			            
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
<div id="chartdiv" style=" margin-left:-150px; width: 750px; height:350px;"></div>
        <div >
            <input type="radio" name="group" id="rb1" onclick="setPanSelect()">Select&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" checked="true" name="group" id="rb2" onclick="setPanSelect()">Pan
        </div>  
              
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

