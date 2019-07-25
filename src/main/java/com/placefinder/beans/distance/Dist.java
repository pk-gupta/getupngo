package com.placefinder.beans.distance;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
@JsonIgnoreProperties(ignoreUnknown=true)
public class Dist 
{
	@JsonProperty("rows")
	private List<Rows> rows;
	private String status;
	public List<Rows> getRows() {
		return rows;
	}
	public void setRows(List<Rows> rows) {
		this.rows = rows;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
