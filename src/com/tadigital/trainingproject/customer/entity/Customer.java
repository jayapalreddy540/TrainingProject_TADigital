package com.tadigital.trainingproject.customer.entity;

/*
 * This is Customer Entity class used for Handling Data of Customer.
 */

public class Customer {
	private int id;
	private String firstName;
	private String lastName;
	private String dateOfBirth;
	private String email;
	private String password;
	private String newPassword;
	private String gender;
	private String address;
	private String city;
	private int zip;
	private String state;
	private String country;
	private long mobile;

	/*
	 * Default Constructor
	 */
	public Customer() {
	}

	/*
	 * Constructor with parameters used to set the Customer data.
	 */
	public Customer(int id, String firstName, String lastName, String dateOfBirth, String email, String password) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.password = password;
	}

	/*
	 * Constructor with email,password as parameters to set data of Customer.
	 */
	public Customer(String email, String password) {
		this.email = email;
		this.password = password;
	}

	/*
	 * GETTER METHODS
	 */
	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getGender() {
		return gender;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public int getZip() {
		return zip;
	}

	public String getState() {
		return state;
	}

	public String getCountry() {
		return country;
	}

	public long getMobile() {
		return mobile;
	}

	public String getNewPassword() {
		return newPassword;
	}

	/*
	 * SETTER METHODS
	 */
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
