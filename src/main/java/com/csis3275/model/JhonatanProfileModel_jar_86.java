package com.csis3275.model;

/**
 * 
 * @author Jhonatan Araneda
 * This class manage the profile_jar_86 fields. Any time the user want to edit/see the profile
 * a new object of this class will be created 
 */

public class JhonatanProfileModel_jar_86 {
	private String name;
	private String lastName;
	private String address;
	private String email;
	private String description;
	private String phoneNumber;
	private String pictureName;

	public JhonatanProfileModel_jar_86() {
		super();
	}

	public JhonatanProfileModel_jar_86(String name, String lastName, String address, String email, String description,
			String phoneNumber, String pictureName) {
		super();
		this.name = name;
		this.lastName = lastName;
		this.address = address;
		this.email = email;
		this.description = description;
		this.phoneNumber = phoneNumber;
		this.pictureName = pictureName;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String display() {
		return "Name: " + getName() + " LastName: " + getLastName();
	}
}
