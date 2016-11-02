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
    
    <nav class="menu">                                                                   
        <ul id="main_menu">
            <li><a href="/">HOME</a></li>
            <li><a class="selected" href="/rsvp">CONFIRMA TU ASISTENCIA</a></li>
        </ul>
    </nav>


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
              
  				<div class="form_row_full">
                    <label>N&uacute;mero de invitados a confirmar:</label>
                    <div class="select_container">
                    <select class="form_select" id="guests" onchange="setHtmlForInvitedPeople();">
                    <option value=""></option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    </select>
                    </div>
				</div>
<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>
              <div class="form_section">
              	  
                  <h3 class="form_subtitle" id="titleForInfoAtendees" style="visibility:hidden">PREFERENCIAS Y NOMBRES DE LOS INVITADOS</h3>
    
             	<div id="holderForInvitedPeopleInformation">
             	</div>

                 
             </div>
                
                <div class="form_section" id="transportationDetails" style="visibility:hidden">
           			<h3 class="form_subtitle">DETALLES DE TRANSPORTE</h3>
                    <div class="form_row_full">
                    <label>¿LLEVAR&Aacute;S VEH&Iacute;CULO?</label>
                    <div class="select_container">
                    <select class="form_select" name="transportationType" id="transportationType" onchange="transportationTypeChange();">
                    <option value=""></option>
                    <option value="CARRO">Si - Carro</option>
                    <option value="MOTO">Si - Moto</option>
                    <option value="BICICLETA">Si - Bicicleta</option>
                    <option value="HELICOPTERO">Si - Helic&oacute;ptero</option>
                    <option value="NO">No</option>
                    </select>
                    </div>
                    </div>
                    <div id="carTransportationDetails" style="visibility:hidden">
                    <div class="form_row full">
                    <label>INSERTA LA DIRECCI&Oacute;N DE TU PUNTO DE SALIDA (TU CASA O UN SITIO CONOCIDO CERCANO)</label>
                    <input type="text" class="form_input required" name="rsvpname" id="start_point_location"/>
                    </div>
                    <div class="form_row_full" id="trafficResultDiv" style="visibility:hidden">
                    Tiempo estimado de viaje seg&uacute;n el tr&aacute;fico estimado el d&iacute;a de la boda: <span id="estimatedTimeSpot"></span>
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
               </div>
                
                </form>
            </div>              
    
          <div class="clear"></div>
        </div>  <!--end of full width-->
      </div> <!--end of about content-->   
  
  
   
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
<script type="text/javascript" src="js/rsvp.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAbG36j_XKchUFTvRcAgZoNzlOzeg2lRIk&libraries=places&callback=initAutocomplete"></script>

</body>
</html>