package com.bfg.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="forex_branch")
public class ForexBranch implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4741695291575162982L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	@Column(name="physical_address")
	private String physicalAddress;
	
	@NotEmpty
	private String phone;
	
	private String datails;
	
	@ManyToOne
	@JoinColumn(name="forex_beaural_id")
	private ForexBeaural forexBeaural;

	public ForexBeaural getForexBeaural() {
		return forexBeaural;
	}

	public void setForexBeaural(ForexBeaural forexBeaural) {
		this.forexBeaural = forexBeaural;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhysicalAddress() {
		return physicalAddress;
	}

	public void setPhysicalAddress(String physicalAddress) {
		this.physicalAddress = physicalAddress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDatails() {
		return datails;
	}

	public void setDatails(String datails) {
		this.datails = datails;
	}
}
