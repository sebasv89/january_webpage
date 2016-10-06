<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1" />
<meta name="author" content="FamousThemes" />
<meta name="description" content="Get in the spotlight" />
<meta name="keywords" content="premium css templates, premium wordpress themes, famous themes, themeforest" />
<title>Aleja&Sebas - 07.01.2017</title>
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="colors/blue.css" />
<link rel="stylesheet" href="css/carousel.css">
<link href='http://fonts.googleapis.com/css?family=Clicker+Script' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="main_container">

    <a class="show_menu" href="#"><img src="images/mobile_menu_open.png" alt="" title="" /></a>
    <a class="hide_menu" href="#"><img src="images/mobile_menu_close.png" alt="" title="" /></a>
    
    <jsp:include page="menu.jsp"></jsp:include>

    
    <div class="title_container">
     
         <div class="title_front">NOS VAMOS A CASAR</div>
         <div class="love_birds"><img src="images/birds_icon.png" alt="" title=""/></div>
         <div class="title">Aleja <span>&amp;</span> Sebas</div>
         <div class="title_date"><span class="swirl_left"><span class="swirl_right">01.07.2017</span></span></div>
         <div class="title_under">AGENDA LA FECHA</div>
         
    </div>

    <div class="slider_container">
            <div class="slider_trans_black"></div>
            <div id="random">
                <div style="background-image: url(images/slider/slide1.jpg);"></div>
                <div style="background-image: url(images/slider/slide2.jpg);"></div> 
                <div style="background-image: url(images/slider/slide3.jpg);"></div>                   
            </div>
   </div>
   <div class="countdown_container">
       <h2 class="centered_title">Cuenta regresiva al matrimonio:</h2>
       <div id="defaultCountdown"></div>
       <div class="rsvp_button"><span class="swirl_left_small"><span class="swirl_right_small"><a href="#">Confirma tu asistencia dando click aqu&iacute;</a></span></span></div>
   </div>


  
  <div class="home_bottom">
      <div class="full_width_centered">
            <div class="left13"> 
            <div class="bottom_icon"><img src="images/icon_music.png" alt="" title="" /></div>
            <h2>BACHELOR PARTY</h2>
            <span class="subtitle">BRING YOUR DANCING SHOES</span>
            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse <strong>cillum dolore</strong> eu fugiat nulla pariat ur si nt oc caecat non proident, sunt in culpa <a href="#">qui officia</a> deserunt mollit anim id est laborum sed quia non numquam eius modi.</p>
            <a href="page.html" class="post_read_more">READ MORE</a>
            </div>
            <div class="left13">
            <div class="bottom_icon"><img src="images/icon_location.png" alt="" title="" /></div>
            <h2>WEDDING LOCATION</h2>
            <span class="subtitle">VENICE, ITALY - HOTEL ADAM</span>
            <p>Nemo enim ipsam voluptatem <strong>quia voluptas</strong> sit aspernatur aut odit aut fugit, sed quia consequuntur <a href="#">magni</a> dolores eos qui ratione voluptatem sequi nesciunt. Neque quisquam est, qui dolorem ipsum</p>
            <a href="page.html" class="post_read_more">READ MORE</a>
            </div>
            <div class="left13_last">
            <div class="bottom_icon"><img src="images/icon_gifts.png" alt="" title="" /></div>
            <h2>GIFT REGISTRY</h2>
            <span class="subtitle">GIVEN FREELY AND OUT OF PURE LOVE</span>
            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit <a href="#">esse quam nihil</a> aspernatur aut odit aut fugit molestiae consequatur, vel illum <strong>qui dolorem</strong> eum fugiat quo voluptas nulla pariatur aspernatur.</p>
            <a href="page.html" class="post_read_more">READ MORE</a>
            </div>
            
            <div class="clear"></div>
      </div>
  </div>
   
<jsp:include page="footer.jsp"></jsp:include>

</div>
<!-- jQuery -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- SLIDER -->
<script type="text/javascript" src="js/jquery.skippr.js"></script>
<script>
	$(document).ready(function() {
	"use strict";
		$("#random").skippr({
			navType: 'bubble',
			transition: 'fade',
			autoPlay: true,
			autoPlayDuration: 4000,
			speed: 1000,
			arrows: false
		});
    $("#weddingcarousel").owlCarousel({
		items : 4,
		itemsScaleUp : true,
		navigationText : ["prev","next"]
		})
	});
</script>
<script src="js/owl.carousel.js"></script>
<!-- DropDownMenu -->
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/effects.js"></script>
<script type="text/javascript" src="js/jquery.arctext.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript">
var $ = jQuery.noConflict();
  $(window).load(function() {
    "use strict";
   var $titlefront = $('.title_front').hide();
   var $titleunder = $('.title_under').hide();
   var $bestman = $('.bestman span').hide();
   var $footernames = $('.footer_names').hide();
  
   $titlefront.show().arctext({radius: 250});
   $titleunder.show().arctext({radius: 180, dir: -1});
   $bestman.show().arctext({radius: 80});
   $footernames.show().arctext({radius: 120, dir: -1});

   $('#defaultCountdown').countdown({until: new Date(2017, 1 - 1, 7, 15), format: 'y-o-d-h'});	 	

  });
</script>
<script type="text/javascript">
var main_menu=new main_menu.dd("main_menu");
main_menu.init("main_menu","menuhover");
</script>
</body>
</html>
