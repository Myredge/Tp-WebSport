<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Participant/MasterPageParticipant.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebUI.PagesWeb.Participant.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/amcharts/amcharts.js"></script>
    <script src="../../Scripts/amcharts/pie.js"></script>
    <script src="../../Scripts/amcharts/serial.js"></script>
    <script src="../Scripts/amcharts/themes/light.js"></script>
    <script type="text/javascript">


        var data = '<%=DonneStatsCourses()%>';
        var DataProvider = JSON.parse(data);

        AmCharts.makeChart("chartdivdeux",
            {
                "type": "pie",
                "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                "titleField": "category",
                "valueField": "value",
                "allLabels": [],
                "balloon": {},
                "legend": {
                    "enabled": true,
                    "align": "center",
                    "markerType": "circle"
                },
                "titles": [
                    {
                        "id": "title",
                        "text": "Courses Disponibles par Ville"
                    }
                ],
                "dataProvider": DataProvider
            }
        );
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                    <div class="col-md-12 col-xs-12">
                        <div id="chartdivdeux" style="width: 100%; height: 400px; background-color: #FFFFFF;"></div>
                    </div>

                </div>
           


            </div>
        </div>




    </div>
</asp:Content>
