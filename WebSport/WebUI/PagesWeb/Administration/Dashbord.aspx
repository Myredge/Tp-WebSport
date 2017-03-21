<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="WebUI.PagesWeb.Administration.Dashbord" %>

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
    <!--Colonne -->
    <script type="text/javascript">
        AmCharts.makeChart("chartdivcolonne",
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

    <div id="container" style="padding-left: 50px;">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <asp:Label ID="LBL_TITRE" runat="server" Text="Tableau de bord"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 col-xs-6">
                <div class="row">
                    <h4>test</h4>
                </div>
                <div class="row">
                    <div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                </div>
            </div>
            <div class="col-md-6 col-xs-6">
                <div class="row">
                    <h4>test</h4>
                </div>
                <div class="row">
                    <div id="chartdivdeux" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <h4>Nombre de course par mois</h4>
        </div>
        <div class="row">
            <div id="chartdivcolonne" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
        </div>

    </div>
</asp:Content>
