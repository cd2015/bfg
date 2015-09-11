package com.bfg.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Review implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -150195208985775319L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="forex_beaural_id")
	private ForexBeaural forexBeaural;

	private int user_id;
	
	private String comment;
	
	private int rating;
	
	private Timestamp timestamp;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ForexBeaural getForexBeaural() {
		return forexBeaural;
	}

	public void setForexBeaural(ForexBeaural forexBeaural) {
		this.forexBeaural = forexBeaural;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
