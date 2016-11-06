
function setHtmlForInvitedPeople(){
	
	$("#holderForInvitedPeopleInformation").empty();
	var numberOfPeople = $("#guests")[0].value;
	
	for (var i=0; i < numberOfPeople; i++){
		var htmlToAppend="<div class='form_row full'>"+
		"<label>Nombre del invitado " + (i+1) + ":</label>"+
		"<input type='text' class='form_input required' name='rsvpname" + i + "' id='rsvpname" + i + "'/>"+
		"</div>"+
		"<div class='checkbox_container left13_first'>"+
		"<input type='checkbox' id='c1" + i + "' name='c1" + i + "' value='vegetarian'>"+
		"<label for='c1" + i + "'>¿Es Vegetariano/Vegetariana?</label>"+
		"</div>"+
		"<div class='checkbox_container left13'>"+
		"<input type='checkbox' id='c2" + i + "' name='c2" + i + "' value='diabetic'>"+
		"<label for='c2" + i + "'>¿Es Diab&eacute;tico/Diab&eacute;tica?</label>"+
		"</div>"+
		"<div class='checkbox_container left13_last'>"+
		"<input type='checkbox' id='c3" + i + "' name='c3" + i + "' value='drinker'>"+
		"<label for='c3" + i + "'>¿Es un Bebedor Empedernido(a)?</label>"+
		"<br/><br/><br/><br/></div>";
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
		$("#submitButtonDiv").css("visibility", "hidden");
		$("#carTransportationDetails").css("visibility", "visible");
	} else {
		$("#carTransportationDetails").css("visibility", "hidden");
		$("#submitButtonDiv").css("visibility", "visible");
	}
}

function submitRsvp(){
	var response = {};
	var numberOfPeople = $("#guests")[0].value;
	var transportationType = $("#transportationType")[0].value;
	response.numberOfGuests = numberOfPeople;
	response.guestDetails = [];
	for (var i=0; i < numberOfPeople; i++){
		var guestName = $("#rsvpname" + i)[0].value;
		var isVegetarian = $("#c1" + i)[0].checked;
		var isDiabetic = $("#c2" + i)[0].checked;
		var isDrinker = $("#c3" + i)[0].checked;
		var detail = {name : guestName, isVeggie : isVegetarian, isDiabetic : isDiabetic, isDrinker : isDrinker};
		response.guestDetails.push(detail);
	}
	if (transportationType === "CARRO"){
		response.bringsCar = true;
	} else {
		response.bringsCar = false;
	}
	response.assistingToParty = $("#partyCheckboxYes")[0].checked;
	
	$.ajax({
		  type: "POST",
		  url: "submitrsvp",
		  data: JSON.stringify(response),
		  complete: function(){
			  alert("Haz confirmado tu asistencia exitosamente. Nos vemos el 7 de Enero!");
			  window.location = '/';

		  },
		  dataType: "application/json",
		  contentType: "application/json"
		});
	
}


