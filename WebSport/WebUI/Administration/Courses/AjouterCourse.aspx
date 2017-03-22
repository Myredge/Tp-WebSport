<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AjouterCourse.aspx.cs" Inherits="WebUI.PagesWeb.Administration.Courses.AjouterCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ws-wsp-container" style="overflow: auto;">

        <div class="ws-wsp-header">
            <div class="row">
                <div class="col-md-8 col-sm-7 col-xs-6">
                    <div class="ws-title ">
                        Ajouter une course
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-6">
                </div>
            </div>
        </div>

        <div class="ws-wsp-body">
            <div class="ws-body ws-list-message ws-scroll-container" style="padding: 16px 0px">
                <div class="ws-card">
                    <div id="map" style="height: 500px; width:500px;"></div>
                </div>
            </div>
        </div>
    </div>

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



</asp:Content>
