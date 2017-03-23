<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="WebUI.PagesWeb.Connexion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/css/signin.css" rel="stylesheet" />
    <link href="../Style/css/Site.css" rel="stylesheet" />
    <style>
        body {
            background-image: url(../Style/Images/Running-in-Dublin.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position-x: center;
            background-position-y: center;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

    <div class="container" >
        <form class="form-signin" runat="server">

            <div class="card-connect">

                <h2 class="form-signin-heading">Please sign in</h2>

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
                            <asp:Label runat="server" ID="LBL_PASSWORD" Text="Password:"></asp:Label>
                        </div>
                        <div class="col-md-6 col-xs-6">
                            <asp:TextBox runat="server" type="password" CssClass="form-group" ID="TB_PASSWORD_VALUE"></asp:TextBox>
                        </div>
                    </div>
                    <a href="">creer compte</a>

                    <div class="row">
                        <div class="col-md-2 offset-md-10 col-xs-2 offset--xs-5">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Se connecter" OnClick="LoginClick" />
                        </div>
                    </div>
                </div>




            </div>
        </form>

    </div>
    <!-- /container -->

</body>
</html>
