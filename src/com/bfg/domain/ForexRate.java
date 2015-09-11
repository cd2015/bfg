package com.bfg.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="forex_rate")
public class ForexRate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9054909965394826546L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="forex_beaural_id")
	private ForexBeaural forexBeaural;
	
	@ManyToOne
	@JoinColumn(name="currency_id")
	private Currency currency;
	
	@NotEmpty
	private int buying;
	
	@NotEmpty
	private int selling;
	
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

	public Currency getCurrency() {
		return currency;
	}

	public void setCurrency(Currency currency) {
		this.currency = currency;
	}

	public int getBuying() {
		return buying;
	}

	public void setBuying(int buying) {
		this.buying = buying;
	}

	public int getSelling() {
		return selling;
	}

	public void setSelling(int selling) {
		this.selling = selling;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
