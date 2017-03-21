<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebUI.Administration.Dashbord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/amcharts/amcharts.js"></script>
    <script src="../../Scripts/amcharts/pie.js"></script>
    <script src="../../Scripts/amcharts/serial.js"></script>

    <script type="text/javascript">
        AmCharts.makeChart("chartdiv",
            {
                "type": "pie",
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                "titleField": "category",
                "valueField": "column-1",
                "allLabels": [],
                "balloon": {},
                "legend": {
                    "enabled": true,
                    "align": "center",
                    "markerType": "circle"
                },
                "titles": [],
                "dataProvider": [
                    {
                        "category": "category 1",
                        "column-1": 8
                    },
                    {
                        "category": "category 2",
                        "column-1": 6
                    },
                    {
                        "category": "category 3",
                        "column-1": 2
                    }
                ]
            }
        );
    </script>
    <!--Chart Div Deux  -->
    <script type="text/javascript">
        AmCharts.makeChart("chartdivdeux",
            {
                "type": "pie",
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                "titleField": "category",
                "valueField": "column-1",
                "allLabels": [],
                "balloon": {},
                "legend": {
                    "enabled": true,
                    "align": "center",
                    "markerType": "circle"
                },
                "titles": [],
                "dataProvider": [
                    {
                        "category": "category 1",
                        "column-1": 8
                    },
                    {
                        "category": "category 2",
                        "column-1": 6
                    },
                    {
                        "category": "category 3",
                        "column-1": 2
                    }
                ]
            }
        );
    </script>
    <!-- colonne -->
    <script type="text/javascript">
        AmCharts.makeChart("chartdivcol",
				{
				    "type": "serial",
				    "categoryField": "category",
				    "startDuration": 1,
				    "categoryAxis": {
				        "gridPosition": "start"
				    },
				    "trendLines": [],
				    "graphs": [
						{
						    "balloonText": "[[title]] of [[category]]:[[value]]",
						    "fillAlphas": 1,
						    "id": "AmGraph-1",
						    "title": "graph 1",
						    "type": "column",
						    "valueField": "column-1"
						},
						{
						    "balloonText": "[[title]] of [[category]]:[[value]]",
						    "fillAlphas": 1,
						    "id": "AmGraph-2",
						    "title": "graph 2",
						    "type": "column",
						    "valueField": "column-2"
						}
				    ],
				    "guides": [],
				    "valueAxes": [
						{
						    "id": "ValueAxis-1",
						    "title": "Axis title"
						}
				    ],
				    "allLabels": [],
				    "balloon": {},
				    "legend": {
				        "enabled": true,
				        "useGraphSettings": true
				    },
				    "titles": [
						{
						    "id": "Title-1",
						    "size": 15,
						    "text": "Chart Title"
						}
				    ],
				    "dataProvider": [
						{
						    "category": "category 1",
						    "column-1": 8,
						    "column-2": 5
						},
						{
						    "category": "category 2",
						    "column-1": 6,
						    "column-2": 7
						},
						{
						    "category": "category 3",
						    "column-1": 2,
						    "column-2": 3
						}
				    ]
				}
			);
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ws-wsp-container" style="overflow: auto;">

        <div class="ws-wsp-header">
            <div class="row">
                <div class="col-md-8 col-sm-7 col-xs-6">
                    <div class="ws-title ">
                        Tableau de Bord
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-6">
                </div>
            </div>
        </div>

        <div class="ws-wsp-body">
            <div class="ws-body ws-list-message ws-scroll-container" style="padding: 16px 0px">
                <div class="row">
                    <div class="col-md-6 col-xs-6">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <h4>test</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-6">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <h4>test</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div id="chartdivdeux" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row" style="padding-bottom: 20px;">
                    <div class="col-md-12 col-xs-12">
                        <div id="chartdivcol" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                    </div>
                </div>


            </div>
        </div>




    </div>
</asp:Content>
