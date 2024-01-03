<!-- 
    Document   : select
    Created on : Dec 21, 2012, 10:03:02 PM
    Author     : Praveen
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<%@ include file="check.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>GAME</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="dropdown-menu.css" media="screen" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="./js/jquery.min.js"></script>
        
        <!--  STEP ONE: insert path to SWFObject JavaScript -->
        <!--  STEP TWO: configure SWFObject JavaScript and embed CU3ER slider -->
        <script type="text/javascript">
           <%String pfno=(String)session.getAttribute("pfno");
                     try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select date from mysql.store where pfno='"+pfno+"'");
                        rs.next();
                        %>
                var date="<%=rs.getString("date")%>";            
                        <%
                        
                        con.close();
                        st.close();
                        }
                       catch(Exception e){}
           %>  
           var d=date.split("/");   
           $(function () {
           var chart;
           $(document).ready(function() {
           chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                zoomType: 'x',
                spacingRight: 20
            },
            title: {
                text: 'Analysis based on Date'
            },
            subtitle: {
                text: document.ontouchstart === undefined ?
                    'Click and drag in the plot area to zoom in' :
                    'Drag your finger over the plot to zoom in'
            },
            xAxis: {
                type: 'datetime',
                maxZoom: 14 * 24 * 3600000, // fourteen days
                title: {
                    text: null
                }
            },
            yAxis: {
                title: {
                    text: 'Percentage'
                },
                showFirstLabel: false
            },
            tooltip: {
                shared: true
            },
            legend: {
                enabled: false
            },
            plotOptions: {
                area: {
                    fillColor: {
                        linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1},
                        stops: [
                            [0, Highcharts.getOptions().colors[0]],
                            [1, 'rgba(2,0,0,0)']
                        ]
                    },
                    lineWidth: 1,
                    marker: {
                        enabled: false,
                        states: {
                            hover: {
                                enabled: true,
                                radius: 5
                            }
                        }
                    },
                    shadow: false,
                    states: {
                        hover: {
                            lineWidth: 1
                        }
                    },
                    threshold: null
                }
            },
    
            series: [{
                type: 'area',
                name: 'Percentage',
                pointInterval: 24 * 3600 * 1000,
                pointStart: Date.UTC(d[2],(d[1]-1),d[0]),
                data: [
                     <%
                     try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","mysql123");
                        Statement st=con.createStatement();
                        Statement st1=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct date from mysql.store where pfno='"+pfno+"'"); 
                        ResultSet rs1;                                              
                        String date;   
                        while(rs.next())
                          {
                            date=rs.getString("date");
                            rs1=st1.executeQuery("select avg(percentage) as percent from mysql.store where date='"+date+"' and pfno='"+pfno+"'");
                            rs1.next();
                          %>                          
                          <%=rs1.getInt("percent")%>,
                          <%  
                          }
                        con.close();
                        st.close();
                        }
                     catch(Exception e){}
                     %>
                       ]
               }]
          });
      });
    
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
                    <center><img src="./images/title.jpg" style="width:940px; margin-top:-70px; margin-left: -60px"/></center>
                    <%@ include file="empmenu.html" %>
                </div>
            </div>       
        </div>
        <div id="content">
            <div id="content_cen">
                <div style="float:left"><img src="./images/logoback1.png" style="position:absolute; z-index:1; width:600px; height:400px; margin-top:0px; margin-left:70px"/></div>
                <div style="position:absolute; margin-left:180px; z-index:2">
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<div id="container" style=" margin-left:-150px; padding-top:50px ; margin-bottom:50px ; width: 750px; height:350px;"></div>  
              
             </div>
            </div>
        </div>
        <div id="foot">
            <div id="foot_cen">
                
                <p style="font-size:16px; text-decoration:underline; color:Silver">ELECTRIC TRACTION TRAINING CENTRE</p>
            </div>
        </div>
    </body>
</html>

