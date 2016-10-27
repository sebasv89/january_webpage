
function setHtmlForInvitedPeople(){
	
	$("#holderForInvitedPeopleInformation").empty();
	var numberOfPeople = $("#guests")[0].value;
	
	var htmlToAppend="<div class='form_row full'>"+
    "<label>Nombre:</label>"+
    "<input type='text' class='form_input required' name='rsvpname' id='daddadsa'/>"+
 "</div>"+
 "<div class='checkbox_container left13_first'>"+
 "<input type='checkbox' id='c1' name='c1' value='Wedding Ceremony' checked>"+
 "<label for='c1'>Vegetariano</label>"+
 "</div>"+
 "<div class='checkbox_container left13'>"+
 "<input type='checkbox' id='c2' name='c2' value='Church Ceremony'>"+
 "<label for='c2'>Diab&eacute;tico</label>"+
 "</div>"+
 "<div class='checkbox_container left13_last'>"+
 "<input type='checkbox' id='c3' name='c3' value='Ring Ceremony'>"+
 "<label for='c3'>Bebedor Empedernido</label>"+
 "</div>";
	
	$("#titleForInfoAtendees").css("visibility", "visible");
	$("#transportationDetails").css("visibility", "visible");
	
	for (var i=0; i < numberOfPeople; i++){
		$("#holderForInvitedPeopleInformation").append(htmlToAppend);
	}
	
	var partyConfirmationHtml="<div class='form_row full'><br/><br/>"+
    			"<label>Existen rumores sobre una posible fiesta en Kukaramákara luego de la boda. ¿Te gustaría ser parte?</label>"+
 				"<div class='checkbox_container left13_first'>"+
 					"<input type='checkbox' id='c1' name='c1' value='Wedding Ceremony' checked>"+
 					"<label for='c1'>Si</label>"+
 				"</div>"+
 				"<div class='checkbox_container left13'>"+
 					"<input type='checkbox' id='c2' name='c2' value='Church Ceremony'>"+
 					"<label for='c2'>No</label>"+
 				"</div>"+
 				"<label style='font-size:10px;font-weight:none'>Posdata: los rumores son ciertos</label>"+
 		    "</div>";
	
	$("#holderForInvitedPeopleInformation").append(partyConfirmationHtml);
}

function transportationTypeChange(){
	var transportationType = $("#transportationType")[0].value;
	if (transportationType !== "" && transportationType !== "NO"){
		$("#carTransportationDetails").css("visibility", "visible");
	}
	
}