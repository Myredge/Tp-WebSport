<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebUI.Administration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #map {
            height: 100%;
        }
    </style>
</head>
<body>
    <div id="map" style="height:500px; width:500px;"></div>
    <script type="text/javascript">

        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }

    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDA-JChzjcHkh7yfkPOLuMuFWiJuUSXbe8&callback=initMap">
    </script>
</body>
</html>
