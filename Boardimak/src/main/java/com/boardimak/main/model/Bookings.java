package com.boardimak.main.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "bookings")
public class Bookings {

	
	@Id
	private int id;
	private String userID;
	private String ownerID;
	private String propertyID;
	private String owner_name;
	private String massege;
	private String status;
	private String user_Name;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date_time")
	private Date date_time;

	public Bookings() {
		super();
	}

	public Bookings(int id, String userID, String ownerID, String propertyID, String owner_name, String massege, String status,
			Date date_time, String user_Name) {
		super();
		this.id = id;
		this.userID = userID;
		this.ownerID = ownerID;
		this.propertyID = propertyID;
		this.owner_name = owner_name;
		this.massege = massege;
		this.status = status;
		this.user_Name = user_Name;
		this.date_time = date_time;
	}

	
	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getOwnerID() {
		return ownerID;
	}

	public void setOwnerID(String ownerID) {
		this.ownerID = ownerID;
	}

	public String getPropertyID() {
		return propertyID;
	}

	public void setPropertyID(String propertyID) {
		this.propertyID = propertyID;
	}

	public String getOwnerName() {
		return owner_name;
	}

	public void setOwnerName(String ownerName) {
		this.owner_name = ownerName;
	}

	public String getMassege() {
		return massege;
	}

	public void setMassege(String massege) {
		this.massege = massege;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDate_time() {
		return date_time;
	}

	public void setDate_time(Date date_time) {
		this.date_time = date_time;
	}

	@Override
	public String toString() {
		return "Bookings [id=" + id + ", userID=" + userID + ", ownerID=" + ownerID + ", propertyID=" + propertyID
				+ ", ownerName=" + owner_name + ", massege=" + massege + ", status=" + status + ", date_time="
				+ date_time + "]";
	}

}
