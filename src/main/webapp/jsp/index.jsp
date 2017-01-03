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
    
    <nav class="menu">                                                                   
        <ul id="main_menu">
            <li><a class="selected" href="/">HOME</a></li>
        </ul>
    </nav>

    
    <div class="title_container">
     
         <div class="title_front">NOS VAMOS A CASAR</div>
         <div class="love_birds"><img src="images/birds_icon.png" alt="" title=""/></div>
         <div class="title">Aleja <span>&amp;</span> Sebas</div>
         <div class="title_date"><span class="swirl_left"><span class="swirl_right">01.07.2017</span></span></div>
         <a href="ical/Matrimonio_Aleja_y_Sebas.ics" download><div class="title_under">AGENDA LA FECHA</div></a>
         
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
       <div class="rsvp_button"><span class="swirl_left_small"><span class="swirl_right_small" style="color:#FFFFFF;">Navega hasta la capilla con:</span></span></div>
       <div class="centered_title" style="text-align:center">
       <a href="waze://?ll=6.277355, -75.496268&navigate=yes"><img src="images/wazeimage.png"  style="width:150px;height:150px" ></a>
       <a href="comgooglemaps://?center=6.277355, -75.496268&zoom=14&views=traffic"><img src="images/googlemaps.png"  style="width:150px;height:150px" ></a>
       </div>
              <h2 class="centered_title">Cuenta regresiva al matrimonio:</h2>
       <div id="defaultCountdown"></div>
   </div>


  
  <div class="home_bottom">
      <div class="full_width_centered">
            <div class="left13"> 
            <div class="bottom_icon"><img src="images/icon_vacation.png" alt="" title="" /></div>
            <h2>VESTUARIO</h2>
            <span class="subtitle">Nada de formalidades. ¡Ante todo comodidad!</span>
            <p>
            Estaremos en Santa Elena, y hace algo de frio. <br/>
            <strong>Hombres:</strong> Nada de corbatas ni corbatines. <br/> 
            <strong>Mujeres:</strong> Lindas como siempre. <br/>
            <br/>
            (No nos gusta el rojo) 
            
            </p>
            </div>
            <div class="left13">
            <div class="bottom_icon"><img src="images/icon_location.png" alt="" title="" /></div>
            <h2>UBICACI&Oacute;N</h2>
            <span class="subtitle">Santa Elena, Antioquia</span>
            <p>La ceremonia ser&aacute; en la <strong>Capilla Ermita de la Santa Cruz - El Tambo</strong> a las 2.30PM. Luego la recepci&oacute;n ser&aacute; en Cariva Eventos, en el mismo sector.</br>
            <br/>Coordenadas: 6.277365, -75.496279<br/>o mejor:<br/><br/>
            <a href="https://www.google.com.co/maps/dir/Capilla+ermita+de+santa+cruz,+Medell%C3%ADn,+Antioquia/Cariva+Eventos,+Guarne,+Antioquia/@6.2508654,-75.5024863,14z/data=!4m13!4m12!1m5!1m1!1s0x8e442671d827e8c7:0x2212fe2c42d36b22!2m2!1d-75.4963114!2d6.2773547!1m5!1m1!1s0x8e4427a0d9bc2b27:0xb7963a9a4e1dee10!2m2!1d-75.4837296!2d6.2298501?hl=es" class="post_read_more">Ver Mapa</a>
            </p>
            </div>
            <div class="left13_last">
            <div class="bottom_icon"><img src="images/icon_gifts.png" alt="" title="" /></div>
            <h2>LLUVIA DE SOBRES</h2>
            <span class="subtitle">Es opcional. Lo m&aacute;s importante es que nos acompa&ntilde;es</span>
            <p>No tendremos lista de regalos ni nada por el estilo. Cualquier donaci&oacute;n es bien recibida :)</p>
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
