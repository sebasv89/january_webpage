package co.com.psl.januarywebpage.controller;

public class RsvpResponseDto {

	private int numberOfGuests;
	private ResponseGuestDetail[] guestDetails;
	private String assistingToParty;
	private String bringsCar;

	public String bringsCar() {
		return bringsCar;
	}

	public String getBringsCar() {
		return bringsCar;
	}

	public void setBringsCar(String bringsCar) {
		this.bringsCar = bringsCar;
	}

	public int getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(int numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	public ResponseGuestDetail[] getGuestDetails() {
		return guestDetails;
	}

	public void setGuestDetails(ResponseGuestDetail[] guestDetails) {
		this.guestDetails = guestDetails;
	}

	public String isAssistingToParty() {
		return assistingToParty;
	}

	public void setAssistingToParty(String assistingToParty) {
		this.assistingToParty = assistingToParty;
	}

}
