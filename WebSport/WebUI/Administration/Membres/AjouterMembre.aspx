<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AjouterMembre.aspx.cs" Inherits="WebUI.Administration.Membres.AjouterMembre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ws-wsp-container" style="overflow: auto;">

        <div class="ws-wsp-header">
            <div class="row">
                <div class="col-md-8 col-sm-7 col-xs-6">
                    <div class="ws-title ">
                        Ajouter un membre
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-6">
                </div>
            </div>
        </div>

        <div class="ws-wsp-body">
            <div class="ws-body ws-list-message ws-scroll-container" style="padding: 16px 0px">

                <div class="ws-card">
                    <div style="padding: 10px 10px 10px 10px;">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_NOM" Text="Nom:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-group" ID="TB_NOM_VALUE"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_PRENOM" Text="Prénom:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-group" ID="TB_PRENOM_VALUE"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_EMAIL" Text="Email:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-group" ID="TB_EMAIL_VALUE"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_TEL" Text="Téléphone:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" CssClass="form-group" ID="TB_TEL_VALUE"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_DATE_NAISS" Text="Date de naissance:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server" type="date" CssClass="form-group" ID="TB_DATE_NAISS_VALUE"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_SEXE" Text="Sexe:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <div class="form-group">
                                            <asp:DropDownList runat="server" ID="DDL_SEXE">
                                                <asp:ListItem Value="Homme">Homme</asp:ListItem>
                                                <asp:ListItem Value="Femme">Femme</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                     <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_MOT_DE_PASSE" Text="Mot de Passe:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:TextBox runat="server"  CssClass="form-group" ID="TB_MOT_DE_PASSE_VALUE"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <asp:Label runat="server" ID="LBL_B_ACTIF" Text="Activé le compte du membre:"></asp:Label>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <asp:CheckBox ID="CB_ACTIVE" runat="server" />

                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2  col-xs-2 offset-xs-5">
                                        <asp:LinkButton runat="server" PostBackUrl="~/Administration/Membres/ListeMembres.aspx" Text="Annuler" CssClass="btn btn-danger"></asp:LinkButton>
                                    </div>
                                    <div class="col-md-2 offset-md-8 col-xs-2 offset-xs-5">
                                        <asp:Button runat="server" CssClass="btn btn-primary" Text="Enregistrer" OnClick="enregistrerClick" />
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
