package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Note")
public class Note {
  
	
	@Id
	private int id;
	
	public Note(String title, String content, Date addedDate) {

		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public int getId() {
		return id;
	}

	public Note() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	private String title;
	
	@Column(length = 2000)
	private String content;
	
	private Date addedDate;

}
