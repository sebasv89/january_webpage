<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1" />
<meta name="author" content="FamousThemes" />
<meta name="description" content="Get in the spotlight" />
<meta name="keywords" content="premium css templates, premium wordpress themes, famous themes, themeforest" />
<title>Wedding Bells | Responsive Wedding Template</title>
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="colors/blue.css" />
<link href='http://fonts.googleapis.com/css?family=Clicker+Script' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="main_container">

    <a class="show_menu" href="#"><img src="images/mobile_menu_open.png" alt="" title="" /></a>
    <a class="hide_menu" href="#"><img src="images/mobile_menu_close.png" alt="" title="" /></a>
    
    <jsp:include page="menu.jsp"></jsp:include>


    <div class="page_header_photo contact_header">
      <div class="page_header_trans">
               <div class="page_header_title">
               <h1>Confirma tu asistencia</h1>
<p>Buscando que tengas la mejor experiencia en nuestro matrimonio, tenemos algunas preguntas para hacerte. Por favor se honesto con tus respuestas, esta pareja no promueve las mentiras.</p>
               </div>
       </div>
   </div>

    <div class="page_content">
     <div class="full_width_centered">

			<div class="form_content">
                <h3 class="form_toptitle" id="Note"></h3>
                <form id="RSVPForm" method="post" action="">
              
              
              <div class="form_section">  
                  <h3 class="form_subtitle">¿CU&Aacute;LES DE ESTAS OPCIONES TE APLICAN?</h3>
    
                 <div class="checkbox_container left13_first">
                 <input type="checkbox" id="c1" name="c1" value="Wedding Ceremony" checked>
                 <label for="c1">Vegetariano</label>
                 </div>
                 <div class="checkbox_container left13">
                 <input type="checkbox" id="c2" name="c2" value="Church Ceremony">
                 <label for="c2">Vegano</label>
                 </div>
                 <div class="checkbox_container left13_last">
                 <input type="checkbox" id="c3" name="c3" value="Ring Ceremony">
                 <label for="c3">Diab&eacute;tico</label>
                 </div>
                 <div class="checkbox_container left13_first">
                 <input type="checkbox" id="c4" name="c4" value="Exchanging of Vows">
                 <label for="c4">Chica fit / Chico fit</label>
                 </div>
                 <div class="checkbox_container left13">
                 <input type="checkbox" id="c5" name="c5" value="Bridal Shower">
                 <label for="c5">Bebedor empedernido</label>
                 </div>
             </div>

           <h3 class="form_subtitle">SELECCIONA TU OPCI&Oacute;N PREFERIDA DE ALIMENTACI&Oacute;N</h3>
               <div class="form_section">
                    <div class="form_row left13_first">
                    <label>Primera opci&oacute;n</label>
                    <div class="select_container">
                    <select class="form_select" name="mainmeal">
                    <option value="Chicken">Pollo</option>
                    <option value="Beef">Cerdo</option>
                    <option value="Beef">Vegetariano</option>
                    </select>
                    </div>
                    </div>
                    <div class="form_row left13">
                    <label>Segunda opci&oacute;n</label>
                    <div class="select_container">
                    <select class="form_select" name="secondmeal">
                    <option value="Chicken">Pollo</option>
                    <option value="Beef">Cerdo</option>
                    <option value="Fish">Vegetariano</option>
                    </select>
                    </div>
                    </div>
                    <div class="form_row left13_last">
                    <label>Postre</label>
                    <div class="select_container">
                    <select class="form_select" name="desert">
                    <option value="Chocolate Cake">Dulce</option>
                    <option value="Cup Cookies">Salado</option>
                    </select>
                    </div>
                    </div>
                    <div class="form_row_full">
                    <label>¿Alguna nota adicional de tu alimentaci&oacute;n que debamos saber?</label>
                    <textarea class="form_textarea_full" name="menunotes"></textarea>
                    </div>
                </div>

                
           <h3 class="form_subtitle">DETALLES DE TRANSPORTE</h3>
                <div class="form_section">
                    <div class="form_row_full">
                    <label>¿LLEVAR&Aacute;S VEH&Iacute;CULO?</label>
                    <div class="select_container">
                    <select class="form_select" name="guests">
                    <option value="1">Si - Carro</option>
                    <option value="2">Si - Moto</option>
                    <option value="3">Si - Bicicleta</option>
                    <option value="4">Si - Helic&oacute;ptero</option>
                    <option value="5+">No</option>
                    </select>
                    </div>
                    </div>
                    <div class="form_row full">
                    <label>INSERTA LA DIRECCI&Oacute;N DE TU PUNTO DE SALIDA (TU CASA O UN SITIO CONOCIDO CERCANO)</label>
                    <input type="text" class="form_input required" name="rsvpname" id="start_point_location"/>
                    </div>
                    <div class="form_row_full">
                    Tiempo estimado de viaje seg&uacute;n el tr&aacute;fico estimado el d&iacute;a de la boda: 46 minutos.
                    <br/><br/>
                    Te recomendamos que salgas a las 12:00 para llegar a tiempo.
                    <br/><br/><br/><br/>
                    A continuaci&oacute;n te presentamos la ruta &oacute;ptima desde tu domicilio hasta la iglesia, y luego hasta el lugar del evento:
                    <br/><br/><br/><br/>
                    <iframe id="routeToEventIframe" width="600" height="450" frameborder="0" style="border:0" src="" allowfullscreen></iframe>
                    
                    </div>
                    <div class="form_row">
                    <input type="submit" name="submit" class="form_submit_contact" id="submit" value="SEND RSVP" />
                    <input class="" type="hidden" name="to"  value="youremail@yourwebsite.com" />
                    <input class="" type="hidden" name="subject" value="RSVP form message" />
                    <label id="loader" style="display:none;"><img src="images/loader.gif" alt="Loading..." id="LoadingGraphic" /></label> 
                    </div> 
               </div>
                
                
           <h3 class="form_subtitle">GUEST DETAILS &amp; COMMENTS</h3>
                <div class="form_section">
                    <div class="form_row_full">
                    <label>NR OF GUESTS</label>
                    <div class="select_container">
                    <select class="form_select" name="guests">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5+">5+</option>
                    </select>
                    </div>
                    </div>
                    <div class="form_row left13_first">
                    <label>NAME</label>
                    <input type="text" class="form_input required" name="rsvpname" id="rsvpname" />
                    </div>
                    <div class="form_row left13">
                    <label>EMAIL</label>
                    <input type="text" class="form_input required email" name="rsvpemail" id="rsvpemail" />
                    </div>
                    <div class="form_row left13_last">
                    <label>PHONE</label>
                    <input type="text" class="form_input required" name="rsvpphone" id="rsvpphone" />
                    </div>
                    <div class="form_row_full">
                    <label>OTHER COMMENTS</label>
                    <textarea class="form_textarea_full" name="rsvpcomments" id="rsvpcomments"></textarea>
                    </div>
                    <div class="form_row">
                    <input type="submit" name="submit" class="form_submit_contact" id="submit" value="SEND RSVP" />
                    <input class="" type="hidden" name="to"  value="youremail@yourwebsite.com" />
                    <input class="" type="hidden" name="subject" value="RSVP form message" />
                    <label id="loader" style="display:none;"><img src="images/loader.gif" alt="Loading..." id="LoadingGraphic" /></label> 
                    </div> 
               </div>
                
                </form>
            </div>              
    
          <div class="clear"></div>
        </div>  <!--end of full width-->
      </div> <!--end of about content-->   
  
  
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
<script type="text/javascript" src="js/effects.js"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<!-- DropDownMenu -->
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" charset="utf-8">
var $ = jQuery.noConflict();
  $(window).load(function() {
    "use strict";
	$("#RSVPForm").validate({
	submitHandler: function(form) {
	ajaxContact(form);
	return false;
	}
	});

  });
</script>
<script type="text/javascript">
var main_menu=new main_menu.dd("main_menu");
main_menu.init("main_menu","menuhover");
</script>
<script type="text/javascript">  
function ajaxContact(theForm) {
"use strict";
var $ = jQuery;
$('#loader').fadeIn();
var formData = $(theForm).serialize(),
note = $('#Note');
$.ajax({
type: "POST",
url: "rsvp-send.php",
data: formData,
success: function(response) {
if ( note.height() ) {			
note.fadeIn('fast', function() { $(this).hide(); });
} else {
note.hide();
}
$('#LoadingGraphic').fadeOut('fast', function() {
$(this).remove();
if (response === 'success') {
	
	$('#RSVPForm').hide();
	
}
// Message Sent? Show the 'Thank You' message and hide the form
result = '';
c = '';
if (response === 'success') { 
	result = 'Your message has been sent. Thank you!';
	c = 'success';
} else {
	result = response;
	c = 'error';
}
note.removeClass('success').removeClass('error').text('');
var i = setInterval(function() {
	if ( !note.is(':visible') ) {
		note.html(result).addClass(c).slideDown('fast');
		clearInterval(i);
	}
}, 40);    
}); // end loading image fadeOut
}
});
return false;
}
</script>  
<script type="text/javascript" src="js/google-helper.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAbG36j_XKchUFTvRcAgZoNzlOzeg2lRIk&libraries=places&callback=initAutocomplete"></script>

</body>
</html>