<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ListeMembres.aspx.cs" Inherits="WebUI.PagesWeb.Administration.Membres.ListeMembres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="container" >
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <asp:Label ID="LBL_TITRE" runat="server" Text="Liste des membres"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <asp:GridView runat="server" ID="GV_LISTE_MEMBRE">
              
            </asp:GridView>
        </div>
    </div>
</asp:Content>
