<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="atletaspage.aspx.cs" Inherits="siteASPMaratona.atleta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maratona de Lisboa 2022</title>
    
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
      	<a href="#" class="navbar-brand">Atletas</a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="loginatletas.aspx" class="smoothScroll">Logout</a></li>
      </ul>
    </div>

  </div>
</div>

<section>
  <div class="container">
    <div class="row">
          <br />
        <p>A prova decorrerá a 8 de Maio de 2022 pelas 8h30 e percurso total de 42,195km terá que ser percorrido no máximo em 6 horas terminando no máximo às 14h30.</p>
		  <br />
        <div style="overflow:hidden;position:relative;">
			<div style="position:relative;width:100%;padding-top:56.25%;overflow:visible;"/>
				<iframe name="plotaroute_map_1165636" src="https://www.plotaroute.com/embedmap/1165636?units=km" style="position:absolute;top:0;left:0;bottom:0;right:0;width:100%; height:80%;" frameborder="0" scrolling="no" allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen>
				</iframe>
			</div>
	  </div>
</section>

<!-- Copyright section -->
<footer>
  <div class="container">
  <p style="text-align: center;"><a href="https://linkedin.com/in/andré-wahnon-brito-8b741361/">
       <img src="images/linkedin.png" width="40" height="40">André Brito </a>| Citeforma | Programador.NET | 2021 </p>
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
