package data;

public class State {
	private Integer stateNum;
	private String abbrev;
	private String name;
	private String capital;
	private String latitude;
	private String longitude;
	private String population;
	private String imgpath;
	

	public State() {
	}
	
	public State(Integer stateNum, String abbreviation, String name, String capital, String latitude, String longitude, String population, String imgpath) {
		this.stateNum = stateNum;
		this.abbrev = abbreviation;
		this.name = name;
		this.capital = capital;
		this.latitude = latitude;
		this.longitude = longitude;
		this.population = population;
		this.imgpath = imgpath;
		
	}

	
	public String getImgpath() {
		return imgpath;
	}
	
	public Integer getStateNum() {
		return stateNum;
	}
	
	public String getAbbreviation() {
		return abbrev;
	}
	public String getName() {
		return name;
	}
	public String getCapital() {
		return capital;
	}
	public String getLatitude() {
		return latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public String getPopulation() {
		return population;
	}

	public void setAbbreviation(String abbreviation) {
		this.abbrev = abbreviation;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public void setPopulation(String population) {
		this.population = population;
	}

	@Override
	public String toString() {
		return "State [stateNum=" + stateNum + ", abbrev=" + abbrev + ", name=" + name + ", capital=" + capital
				+ ", latitude=" + latitude + ", longitude=" + longitude + ", population=" + population + ", imgpath="
				+ imgpath + "]";
	}


}
