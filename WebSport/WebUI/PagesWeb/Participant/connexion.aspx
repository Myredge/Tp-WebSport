<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Participant/MasterPageParticipant.Master" AutoEventWireup="true" CodeBehind="connexion.aspx.cs" Inherits="WebUI.PagesWeb.Participant.connexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Connexion </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h2>Vertical (basic) form</h2>
        
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" />
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password"/>
    </div>
    <div class="checkbox">
      <label>           <input type="checkbox"/> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  
</div>
</asp:Content>
