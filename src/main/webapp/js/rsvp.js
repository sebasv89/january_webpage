
function setHtmlForInvitedPeople(){
	
	$("#holderForInvitedPeopleInformation").empty();
	var numberOfPeople = $("#guests")[0].value;
	
	for (var i=0; i < numberOfPeople; i++){
		var htmlToAppend="<div class='form_row full'>"+
		"<label>Nombre:</label>"+
		"<input type='text' class='form_input required' name='rsvpname" + i + "'/>"+
		"</div>"+
		"<div class='checkbox_container left13_first'>"+
		"<input type='checkbox' id='c1" + i + "' name='c1" + i + "' value='vegetarian'>"+
		"<label for='c1" + i + "'>Vegetariano</label>"+
		"</div>"+
		"<div class='checkbox_container left13'>"+
		"<input type='checkbox' id='c2" + i + "' name='c2" + i + "' value='diabetic'>"+
		"<label for='c2" + i + "'>Diab&eacute;tico</label>"+
		"</div>"+
		"<div class='checkbox_container left13_last'>"+
		"<input type='checkbox' id='c3" + i + "' name='c3" + i + "' value='drinker'>"+
		"<label for='c3" + i + "'>Bebedor Empedernido</label>"+
		"</div>";
		$("#holderForInvitedPeopleInformation").append(htmlToAppend);
	}
	
	var partyConfirmationHtml="<div class='form_row full'><br/><br/>"+
    			"<label>Existen rumores sobre una posible fiesta en Kukaramákara luego de la boda. ¿Te gustaría ser parte?</label>"+
 				"<div class='checkbox_container left13_first'>"+
 					"<input type='checkbox' id='partyCheckboxYes' name='partyCheckboxYes' value='yes'>"+
 					"<label for='partyCheckboxYes'>Si</label>"+
 				"</div>"+
 				"<div class='checkbox_container left13'>"+
 					"<input type='checkbox' id='partyCheckboxNo' name='partyCheckboxNo' value='no'>"+
 					"<label for='partyCheckboxNo'>No</label>"+
 				"</div>"+
 				"<label style='font-size:14px;font-weight:none'>Posdata: los rumores son ciertos</label>"+
 		    "</div>";
	
	$("#holderForInvitedPeopleInformation").append(partyConfirmationHtml);
	
	$("#titleForInfoAtendees").css("visibility", "visible");
	$("#transportationDetails").css("visibility", "visible");
	
}

function transportationTypeChange(){
	var transportationType = $("#transportationType")[0].value;
	if (transportationType !== "" && transportationType !== "NO"){
		$("#carTransportationDetails").css("visibility", "visible");
	}
}

function submit(){
//	#guests
	
}


