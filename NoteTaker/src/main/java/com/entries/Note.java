package com.entries;

import java.util.Date;
import java.util.Random;

import javax.persistence.*;
@Entity
@Table(name="notes")
public class Note {
  @Id	
  private int id;
  private String title;
  @Column(length=1500)
  private String content;
  private Date addDate;
  public Note(String title, String content, Date addDate) {
	super();
	this.id = new Random().nextInt(100000);
	this.title = title;
	this.content = content;
	this.addDate = addDate;
}
public Note() {
	super();
	// TODO Auto-generated constructor stub
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
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getAddDate() {
	return addDate;
}
public void setAddDate(Date addDate) {
	this.addDate = addDate;
}

  
  
}
