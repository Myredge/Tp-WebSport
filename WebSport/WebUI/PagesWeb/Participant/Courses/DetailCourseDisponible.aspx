<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Participant/MasterPageParticipant.Master" AutoEventWireup="true" CodeBehind="DetailCourseDisponible.aspx.cs" Inherits="WebUI.PagesWeb.Participant.Courses.DetailCourseDisponible" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 47.2176443291074, lng: -1.55181884765625 },
                zoom: 8
            });
        }

    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDA-JChzjcHkh7yfkPOLuMuFWiJuUSXbe8&callback=initMap">
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="ws-wsp-container" style="overflow: auto;">

        <div class="ws-wsp-header">
            <div class="row">
                <div class="col-md-8 col-sm-7 col-xs-6">
                    <div class="ws-title ">
                        Détail de la course
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-6">
                </div>
            </div>
        </div>

        <div class="ws-wsp-body">
            <div class="ws-body ws-list-message ws-scroll-container" style="padding: 16px 0px">
                <%--  <div class="ws-card">
                    <div id="map" style="height: 500px; width:500px;"></div>
                </div>--%>

                <div class="ws-card">
                    <div style="padding: 10px 10px 10px 10px;">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_TITRE" Text="Titre:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_TITRE_VALUE"></asp:Label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DESCRIPTION" Text="Description:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DESCRIPTION_VALUE"></asp:Label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_VILLE" Text="Ville:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_VILLE_VALUE"></asp:Label>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DATE_DEBUT" Text="Date debut:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DATE_DEBUT_VALUE"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DATE_FIN" Text="Date fin:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DATE_FIN_VALUE"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <div id="map" style="height: 400px;"></div>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-6">
                                                <asp:Label runat="server" ID="LBL_DEPART" Text="Départ:"></asp:Label>
                                            </div>
                                            <div class="col-md-6 col-xs-6">
                                                <%-- A PAS FAIRE --%>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 col-xs-6">
                                                 <asp:Label runat="server" ID="LBL_ARRIVE" Text="Arrivé:"></asp:Label>
                                            </div>
                                            <div class="col-md-6 col-xs-6">
                                                  <%-- A PAS FAIRE --%>
                                            </div>

                                        </div>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col-md-2 offset-md-10 col-xs-2 offset--xs-5">
                                        <%--                                        <asp:Button runat="server" CssClass="btn btn-primary" Text="Enregistrer" OnClick="enregistrerClick" />--%>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
