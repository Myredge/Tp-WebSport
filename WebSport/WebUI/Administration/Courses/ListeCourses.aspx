﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ListeCourses.aspx.cs" Inherits="WebUI.PagesWeb.Administration.Courses.ListeCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="ws-wsp-container" style="overflow: auto;">

        <div class="ws-wsp-header">
            <div class="row">
                <div class="col-md-8 col-sm-7 col-xs-6">
                    <div class="ws-title ">
                        Liste des courses
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-6">
                </div>
            </div>
        </div>

        <div class="ws-wsp-body">
            <div class="ws-body ws-list-message ws-scroll-container" style="padding: 16px 0px">

                <div class="ws-card">
                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <asp:GridView runat="server" ID="GV_LISTE_COURSE" AutoGenerateColumns="false" AllowPaging="true"
                                OnPageIndexChanging="OnPageIndexChanging" PageSize="100" CssClass="table table-bordered">
                                <Columns>
                                    <asp:BoundField ItemStyle-Width="30%" DataField="Titre" HeaderText="Titre" />
                                    <asp:BoundField ItemStyle-Width="30%" DataField="Description" HeaderText="Description" />
                                    <asp:BoundField ItemStyle-Width="30%" DataField="Ville" HeaderText="Ville" />
                                    <asp:BoundField ItemStyle-Width="30%" DataField="DateDebut" HeaderText="Date Debut" />
                                    <asp:BoundField ItemStyle-Width="10%" DataField="DateFin" HeaderText="Date Fin" />
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
