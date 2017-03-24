<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="WebUI.PagesWeb.Inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/css/signin.css" rel="stylesheet" />
    <link href="../Style/css/Site.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body class="body-connect">
    <div class="container">
        <form id="form1" runat="server">
            <div class="row" style="padding-top: 10%;">
                <div class="offset-md-3 col-md-6 offset-md-3 ">
                    <div class="ws-card-connect">
                        <div class="ws-spacing">

                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <h2>Enregistrez vous</h2>
                                </div>
                            </div>
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
                                            <asp:TextBox runat="server" CssClass="form-group" ID="TB_MOT_DE_PASSE_VALUE"></asp:TextBox>
                                        </div>
                                    </div>

                                         <div class="row">
                                        <div class="col-md-4">
                                            <asp:Button runat="server" ID="BTN_VALIDER" CssClass="btn btn-primary" Text="Créer le compte" OnClick="enregistrerClick" />
                                        </div>
                                        <div class="offset-md-4 col-md-4">
                                            <asp:LinkButton runat="server" PostBackUrl="Connexion.aspx" Text="Retour" CssClass=""></asp:LinkButton>
                                        </div>
                                    </div>

                                   

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </form>
    </div>
</body>
</html>
