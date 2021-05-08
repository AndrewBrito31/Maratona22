<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="maratona22.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maratona 2022</title>

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
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

    <form id="form1" runat="server">

        <!-- Preloader section -->
        <div class="preloader">
            <div class="sk-spinner sk-spinner-pulse"></div>
        </div>


        <!-- Home section -->
        <section id="home" class="parallax-section">
            <div class="gradient-overlay"></div>
            <div class="container">

                <div class="col-md-offset-2 col-md-8 col-sm-12">
                    <h1 class="wow fadeInUp" data-wow-delay="0.6s">Maratona de Lisboa 2022</h1>
                    <a href="#feature" class="wow fadeInUp btn btn-default hvr-bounce-to-top smoothScroll" data-wow-delay="1.3s">Inscreva-se!</a>
                </div>

            </div>
        </section>

        <!-- Navigation section -->
        <div class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">Maratona Lisboa 2022</a>
                </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#top" class="smoothScroll">Topo</a></li>
                        <li><a href="#feature" class="smoothScroll">Inscrição</a></li>
                        <li><a href="#about" class="smoothScroll">Sobre a Maratona</a></li>
                        <li><a href="percurso.aspx" class="smoothScroll">Percurso</a></li>
                    </ul>
                </div>

            </div>
        </div>


        <!-- Feature section -->
        <section id="feature" class="parallax-section">
            <div class="container">

                <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10">
                    <div class="wow fadeInUp section-title" data-wow-delay="0.6s">

                        <h2>Formulário de inscrição</h2>
                        <h3>Inscreva-se e fique na história desta mítica prova</h3>
                        <br />
                        <h4>Nome do Atleta</h4>
                        <label class="form-label">
                            <asp:TextBox type="text" ID="tb_nome_atleta" runat="server" class="form-control" placeholder="Insira o seu nome" Width="291px"></asp:TextBox>
                        </label>
                            <h4>E-mail</h4>
                        <label class="form-label">
                            <asp:TextBox type="text" ID="email_atleta" runat="server" class="form-control" placeholder="Insira o seu email" Width="291px"></asp:TextBox>
                        </label>
                    </div>
                </div>

                <div class="col-md-12">
                    <asp:Button ID="Button1" runat="server" class="btn btn-danger" Text="Confirmar" />
                </div>

            </div>
        </section>


        <!-- About section -->
        <section id="about" class="parallax-section">
            <div class="container">
                <div class="row">

                    <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10">
                        <div class="wow fadeInUp section-title" data-wow-delay="0.3s">
                            <h2>Sobre a Maratona de Lisboa</h2>
                            <h3>Galeria | Informação | Percurso</h3>
                        </div>
                    </div>

                    <div class="wow fadeInUp col-md-6 col-sm-4" data-wow-delay="0.5s">
                        <h3>Galeria</h3>
                        <!-- flexslider -->
                        <div class="flexslider">
                            <ul class="slides">

                                <li>
                                    <img src="images/slide-img1.jpg" alt="Flexslider">
                                </li>
                                <li>
                                    <img src="images/slide-img2.jpg" alt="Flexslider">
                                </li>
                                <li>
                                    <img src="images/slide-img3.jpg" alt="Flexslider">
                                </li>

                            </ul>

                        </div>
                        <p>A prova decorrerá a 8 de Maio de 2022 pelas 8h30 e percurso total de 42,195km terá que ser percorrido no máximo em 6 horas terminando no máximo às 14h30.</p>
                    </div>

                    <div class="wow fadeInUp col-md-6 col-sm-4" data-wow-delay="0.3s">
                        <a href="percurso.aspx">
                            <h3>Percurso</h3>
                            <img src="images/percurso.jpg" class="img-responsive" alt="Percurso">
                        </a>
                    </div>



                </div>
            </div>
        </section>

        <!-- Footer section -->
        <footer>
            <div class="container">
                <div class="col-md-8 ">
                    <br />
                    <h5><a href="adminlogin.aspx">Admin Login</a></h5>
                </div>

                <div class="col-md-4  text-right">
                    <a href="#top" class="fa fa-angle-up smoothScroll gototop"></a>
                </div>
            </div>
        </footer>

        <!-- Copyright section -->
        <section id="copyright">
            <div class="container">
                <p>
                    <a href="https://linkedin.com/in/andré-wahnon-brito-8b741361/">
                        <img src="images/linkedin.png" width="40" height="40">André Brito </a>Citeforma | Programador.NET | 2021
                </p>
            </div>
        </section>

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
