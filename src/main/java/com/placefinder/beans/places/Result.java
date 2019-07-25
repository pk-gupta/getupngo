package com.placefinder.beans.places;


import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Result 
{
	@JsonProperty("geometry")
	private Geometry geometry;
	@JsonProperty("name")
	private String name;
	@JsonProperty("opening_hours")
	private Opening_hours opening_hours;
	@JsonProperty("place_id")
	private String place_id;
	@JsonProperty("photos")
	private List<Photos> photos;
	@JsonProperty("rating")
	private String rating;
	@JsonProperty("icon")
	private String icon;
	private int appRating;

	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	@JsonProperty("vicinity")
	private String vicinity;
	
	public String getName() 
	{
		return name;
	}
	public Geometry getGeometry() {
		return geometry;
	}
	public void setGeometry(Geometry geometry) {
		this.geometry = geometry;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public Opening_hours getOpening_hours() {
		return opening_hours;
	}
	public void setOpening_hours(Opening_hours opening_hours) {
		this.opening_hours = opening_hours;
	}
	public List<Photos> getPhotos() {
		return photos;
	}
	public void setPhotos(List<Photos> photos) {
		this.photos = photos;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getVicinity() {
		return vicinity;
	}
	public void setVicinity(String vicinity) {
		this.vicinity = vicinity;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public int getAppRating() {
		return appRating;
	}
	public void setAppRating(int appRating) {
		this.appRating = appRating;
	}
	
}
