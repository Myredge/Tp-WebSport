<%@ Page Title="" Language="C#" MasterPageFile="~/PagesWeb/Participant/MasterPageParticipant.Master" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="WebUI.PagesWeb.Participant.Inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">

        $('.datenaissance').datepicker();
    </script>
    <div class="container">
    <div class="form-group">
        <label for="input nom">Nom:</label>
        <input type="text" class="form-control" id="nom" placeholder="Nom " />
     </div>

   <div class="form-group">
        <label for="input nom">Prenom:</label>
        <input type="text" class="form-control" id="Prenom" placeholder="Prenom " />
   </div>

        <div class="form-group">
        <label for="input nom">Date de naissance:</label> 
        <input type="date" class="form-control" id="dateDeNaissance" placeholder="01/12/1990"/>
   </div>

  
  <div class="form-group">
    <label for="exampleInputEmail1">Address Email :</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" />
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mot de passe :</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
  </div>

    <div class="form-group">
    <label for="exampleInputPassword1">Confirmation mot de passe :</label>
    <input type="password" class="form-control" id="confirmpassword" placeholder="Password"/>
  </div>
  
  
  
  
  <button type="submit" class="btn btn-success">Submit</button>

    </div>

</asp:Content>
