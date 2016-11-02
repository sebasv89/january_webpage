package co.com.psl.januarywebpage.controller;

public class RsvpResponseDto {

	private int numberOfGuests;
	private ResponseGuestDetail[] guestDetails;
	private boolean assistingToParty;
	private boolean bringsCar;

	public boolean bringsCar() {
		return bringsCar;
	}

	public boolean getBringsCar() {
		return bringsCar;
	}

	public void setBringsCar(boolean bringsCar) {
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

	public boolean isAssistingToParty() {
		return assistingToParty;
	}

	public void setAssistingToParty(boolean assistingToParty) {
		this.assistingToParty = assistingToParty;
	}

}
