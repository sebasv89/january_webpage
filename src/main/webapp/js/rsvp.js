
function setHtmlForInvitedPeople(){
	
	
	var numberOfPeople = 3;
	
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
	
	for (var i=0; i < numberOfPeople; i++){
		$("#holderForInvitedPeopleInformation").append(htmlToAppend);
	}
	
}