<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="siteASPMaratona.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maratona de Lisboa 2020</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- stylesheets css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/nivo_themes/default/default.css">

    <link rel="stylesheet" href="css/hover-min.css">
    <link rel="stylesheet" href="css/flexslider.css">

    <link rel="stylesheet" href="css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation section -->
        <div class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand"></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="home.aspx" class="smoothScroll">Página Inicial</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <section id="feature">
            <div class="container">
                <div class="row">

                    <div class="wow fadeInUp section-title" data-wow-delay="0.3s">
                        <h2>ADMIN | REGISTO </h2>
                        <p>Insira nome de utilizador, email e password para criar utilizador</p>
                        <h3>
                            <asp:Label ID="lbl_mensagem" runat="server" ForeColor="Red"></asp:Label></h3>
                        <h3>
                            <asp:Label ID="lbl_registado" runat="server" Text="" ForeColor="#33CC33"></asp:Label></h3>
                        <br />

                        <div class="row">
                            <h4>Utilizador</h4>
                            <label class="form-label">
                                <asp:TextBox type="text" ID="tb_utilizador" runat="server" class="form-control" placeholder="Insira o utilizador" Width="291px"></asp:TextBox>
                            </label>
                        </div>

                        <div class="row">
                            <h4>Email</h4>
                            <label class="form-label">
                                <asp:TextBox type="text" ID="tb_email" runat="server" class="form-control" placeholder="Insira o email" Width="291px" TextMode="Email"></asp:TextBox>
                            </label>
                            <div class="row">
                                <h4>Password</h4>
                                <label class="form-label">
                                    <asp:TextBox type="text" ID="tb_password" runat="server" class="form-control" placeholder="Insira a sua password" Width="291px" TextMode="Password"></asp:TextBox>
                                </label>
                                <br />
                                <br />
                            </div>
                            <asp:Button ID="btn_regUtilizador" runat="server" Text="Criar Utilizador" type="submit" class="btn btn-danger" OnClick="btn_regUtilizador_Click" Width="165px" />
                            <br />
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Login Admin</asp:LinkButton>

                        </div>
                    </div>

                </div>
            </div>
        </section>

        <footer>
            <div class="row">
                <div class="col-md-6 col-sm-offset-1 col-sm-10 text-right">
                    <p>André Brito | Maio 2021 | Citeforma </p>
                </div>
            </div>
        </footer>

        <!-- javscript js -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script src="js/jquery.magnific-popup.min.js"></script>

        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>

        <script src="js/isotope.js"></script>
        <script src="js/imagesloaded.min.js"></script>
        <script src="js/nivo-lightbox.min.js"></script>

        <script src="js/jquery.flexslider-min.js"></script>

        <script src="js/jquery.parallax.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/wow.min.js"></script>

        <script src="js/custom.js"></script>

    </form>
</body>
</html>
