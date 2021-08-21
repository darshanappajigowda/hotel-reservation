package com.darshan.hotel.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Range;

public class GuestDetails {

	@NotNull(message = "Please enter guest name")
	private String guestName;
	private String gender;

	@NotNull(message = "Please enter age")
	@Range(min = 1, max = 100, message = "Please enter valid age (between 1 and 100)")
	private Integer age;

	@NotNull(message = "Please enter email ID")
	@Email(message = "Please enter valid email ID")
	private String emailId;

	@NotNull(message = "Please enter mobile number")
	@Pattern(regexp = "^[0-9]{10}", message = "Please enter valid mobile number (numbers only, 10 digits)")
	private String mobileNumber;

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

}
