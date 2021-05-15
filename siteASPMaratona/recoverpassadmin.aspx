<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recoverpassadmin.aspx.cs" Inherits="siteASPMaratona.recoverpassadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
    <form id="form2" runat="server">
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
                        <h2>RECUPERAÇÃO | CONTA | ADMIN</h2>
                        <p>Indique por favor o endereço de e-mail associado à conta a recuperar</p>

                        <br />
                        <div class="row">
                            <h4></h4>
                            <label class="form-label">
                                <asp:TextBox ID="tb_email" runat="server" class="form-control" placeholder="Indique o e-mail" Width="291px"></asp:TextBox>
                            </label>
                            <br />

                        </div>
                        <div class="row">
                            <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="btn_recuperar" runat="server" Text="Recuperar conta" type="submit" class="btn btn-danger" Width="165px" OnClick="btn_recuperar_Click" />
                        </div>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar para o Login</asp:LinkButton>

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
