﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="WebUI.PagesWeb.Connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container">

      
        <h2 class="form-signin-heading">Please sign in</h2>
        
          <div class="col-md-12 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_EMAIL"  Text="Email:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-group" placeholder="Email address" ID="TB_EMAIL_VALUE"></asp:TextBox>
                                    </div>
                                </div>

              <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_PASSWORD" Text="Password:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" type="password" CssClass="form-group" ID="TB_PASSWORD_VALUE"></asp:TextBox>
                                    </div>
                                </div>


               <div class="row">
                          <div class="col-md-2 offset-md-10 col-xs-2 offset--xs-5">
              <asp:Button runat="server" CssClass="btn btn-primary" Text="Se connecter" OnClick="LoginClick" />
                                    </div>
                                </div>
              </div>
        
      

    </div> <!-- /container -->




</asp:Content>
