package com.placefinder.beans.distance;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Duration 
{
	@JsonProperty("text")
	private String text;
	@JsonProperty("value")
	private int value;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	
	
}
