<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="WebUI.PagesWeb.Connexion" %>

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
        <form runat="server">

            <div class="row" style="padding-top: 10%;">
                <div class="offset-md-3 col-md-6 offset-md-3 ">
                    <div class="ws-card-connect">
                        <div class="ws-spacing">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <h2>Connectez vous</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-6">
                                            <asp:Label runat="server" ID="LBL_EMAIL" Text="Email:"></asp:Label>
                                        </div>
                                        <div class="col-md-6 col-xs-6">
                                            <asp:TextBox runat="server" CssClass="form-group" placeholder="someone@email.com" ID="TB_EMAIL_VALUE"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 col-xs-6">
                                            <asp:Label runat="server" ID="LBL_PASSWORD" Text="Mot de passe:"></asp:Label>
                                        </div>
                                        <div class="col-md-6 col-xs-6">
                                            <asp:TextBox runat="server" type="password" CssClass="form-group" ID="TB_PASSWORD_VALUE"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Se connecter" OnClick="LoginClick" />

                                        </div>
                                        <div class="offset-md-4 col-md-4  col-xs-4 offset-xs-8">
                                            <asp:LinkButton runat="server" PostBackUrl="Inscription.aspx" Text="Pas de compte ?" CssClass=""></asp:LinkButton>
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
