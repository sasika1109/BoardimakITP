package com.boardimak.main.model;

import java.security.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;





import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="blogs")
public class Blogs {
	
	@Id
	private int id;
	private String title;
	private String description;
	private String status;
	private String author;
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="date_time")
	private Date date_time;
	
	

	public Blogs() {
	
	}



	public Blogs(String title, String description, String status, Date date_time, String author) {
		super();
		this.title = title;
		this.description = description;
		this.status = status;
		
		
		this.date_time = date_time;
		this.author = author;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDateTime() {
		return date_time;
	}

	public void setDateTime(Date date_time) {
		this.date_time = date_time;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "Blogs [id=" + id + ", title=" + title + ", description=" + description + ", status=" + status
				+ ", date_time=" + date_time + ", author=" + author + "]";
	}

	

	
	
	
	

}
