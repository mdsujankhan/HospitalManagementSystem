package com.sujan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "appointment")
@Table(name = "appointments")
public class Appointment {
	@Id
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "age")
	private String age;
	@Column(name = "gender")
	private String gender;
	@Column(name = "contact")
	private String contact;
	@Column(name = "email")
	private String email;

	@Column(name = "department")
	private String department;

	@Column(name = "doctor")
	private String doctor;

	@Column(name = "date")
	private String date;

	@Column(name = "slot")
	private String slot;

	@Column(name = "status")
	private String status;

	@Column(name = "takeUpStatus")
	private String takeUpStatus;

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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSlot() {
		return slot;
	}

	public void setSlot(String slot) {
		this.slot = slot;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTakeUpStatus() {
		return takeUpStatus;
	}

	public void setTakeUpStatus(String takeUpStatus) {
		this.takeUpStatus = takeUpStatus;
	}

}
