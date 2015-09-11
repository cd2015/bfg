package com.bfg.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="forex_beaural")
public class ForexBeaural implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 74162047676903260L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
//	@NotEmpty
	private String name;
	
	@Email
//	@NotEmpty
	private String email;
	
//	@NotEmpty
	private String phone;
	
//	@NotEmpty
	@Column(name="physical_address")
	private String physicalAddress;
	
	@Column(name="postal_address")
	private String postalAddress;
	
	private String Slogan;
	
	private String logo;
	
	private String location;
	
//	@NotEmpty
	private String password;
	
	@NotEmpty( groups = ForexBeaural.class )
	@Transient
	private String confirmPassword;
	
	private String authority = "FOREX";
	
	private int enabled = 1;
	
	@OneToMany
	@JoinColumn(name="forex_beaural_id")
	private Set<ForexRate> forexRates;
	
	@OneToMany
	@JoinColumn(name="forex_beaural_id")
	private Set<ForexBranch> forexBranches;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhysicalAddress() {
		return physicalAddress;
	}

	public void setPhysicalAddress(String physicalAddress) {
		this.physicalAddress = physicalAddress;
	}

	public String getPostalAddress() {
		return postalAddress;
	}

	public void setPostalAddress(String postalAddress) {
		this.postalAddress = postalAddress;
	}

	public String getSlogan() {
		return Slogan;
	}

	public void setSlogan(String slogan) {
		Slogan = slogan;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public Set<ForexRate> getForexRates() {
		return forexRates;
	}

	public void setForexRates(Set<ForexRate> forexRates) {
		this.forexRates = forexRates;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public Set<ForexBranch> getForexBranches() {
		return forexBranches;
	}

	public void setForexBranches(Set<ForexBranch> forexBranches) {
		this.forexBranches = forexBranches;
	}
}
