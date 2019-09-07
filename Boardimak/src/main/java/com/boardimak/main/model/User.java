package com.boardimak.main.model;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="usetting")
public class User {

    @Id
    @Column(name="user_id")
	private int id;
    private String firstname;
    private String lastname;
    private String email;
    private String address1;
    private String address2;
    private String phone_num;
	
    public User() {
		
    }

	public User(String firstname, String lastname, String email, String address1, String address2, String phone_num) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.address1 = address1;
		this.address2 = address2;
		this.phone_num = phone_num;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", address1=" + address1 + ", address2=" + address2 + ", phone_num=" + phone_num + "]";
	}
    
    
    
    
	
}
