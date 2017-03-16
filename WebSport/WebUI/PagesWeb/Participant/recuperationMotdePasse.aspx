<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Participant/MasterPageParticipant.Master" AutoEventWireup="true" CodeBehind="recuperationMotdePasse.aspx.cs" Inherits="WebUI.PagesWeb.Participant.recuperationMotdePasse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <h1>Recuperation du mot de passe</h1>

    <div class="form-group">
    <label for="exampleInputPassword1">Mot de passe :</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
  </div>

    <div class="form-group">
    <label for="exampleInputPassword1">Confirmation mot de passe :</label>
    <input type="password" class="form-control" id="confirmpassword" placeholder="Password"/>
  </div>

     <button type="submit" class="btn btn-succes">Submit</button>
        </div>
</asp:Content>
