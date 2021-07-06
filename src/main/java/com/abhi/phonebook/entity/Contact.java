package com.abhi.phonebook.entity;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class Contact {
	private Integer id;
	private String firstname;
	private String lastname;
	private String email;
	private String phone;
	private String avatar;
	private String address;
	private String city;
	private String pincode;
	private String state;
	private String country;
	private Integer userId;
	private Date createdAt = new Date();

	public Contact(String firstname, String lastname, String email, String phone, String avatar, String address,
			String city, String pincode, String state, String country) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phone = phone;
		this.avatar = avatar;
		this.address = address;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.country = country;
	}

}
