package co.com.psl.januarywebpage.controller;

public class ResponseGuestDetail {

	private String name;

	private boolean isVeggie;

	private boolean isDiabetic;

	private boolean isDrinker;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isVeggie() {
		return isVeggie;
	}

	public void setVeggie(boolean isVeggie) {
		this.isVeggie = isVeggie;
	}

	public boolean isDiabetic() {
		return isDiabetic;
	}

	public void setDiabetic(boolean isDiabetic) {
		this.isDiabetic = isDiabetic;
	}

	public boolean isDrinker() {
		return isDrinker;
	}

	public void setDrinker(boolean isDrinker) {
		this.isDrinker = isDrinker;
	}

}
