package com.placefinder.beans.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
@Entity
@Table(name = "USER")
public class User{
	@Id @GeneratedValue
    @Column(name = "id")
	private int id;
	@JsonProperty("email")
	@Column(name = "email")
	public String email;
	@JsonProperty("place_id")
	@Column(name = "place_id")
	public String place_id;
	@JsonProperty("rating")
	@Column(name = "rating")
	public int rating;
	
	
	public User(){
	
	}
	public int getId() {
	      return id;
	   }
	   public void setId( int id ) {
	      this.id = id;
	   }
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	
	
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String toString(){
		return id+email+place_id+rating;
	}
	
	

}
