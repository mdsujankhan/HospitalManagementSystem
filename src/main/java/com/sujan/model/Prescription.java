package com.sujan.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "prescription")
@Table(name = "prescriptions")
public class Prescription {
	@Id
	private int id;

	@Column(name = "code")
	private String code;

	@Column(name = "name")
	private String name;

	@Column(name = "gender")
	private String gender;

	@Column(name = "age")
	private String age;

	@Column(name = "today_date")
	private Date todayDate;

	@Column(name = "contact")
	private String contact;

	@Column(name = "email")
	private String email;

	@Column(name = "test1")
	private String test1;

	@Column(name = "test2")
	private String test2;

	@Column(name = "test3")
	private String test3;

	@Column(name = "test4")
	private String test4;

	@Column(name = "test5")
	private String test5;

	@Column(name = "test6")
	private String test6;

	@Column(name = "test7")
	private String test7;

	@Column(name = "test8")
	private String test8;

	@Column(name = "tests")
	private String tests;

	@Column(name = "medicine_1")
	private String medicine_1;

	@Column(name = "medicine_1_time")
	private String medicine_1_time;

	@Column(name = "medicine_2")
	private String medicine_2;

	@Column(name = "medicine_2_time")
	private String medicine_2_time;

	@Column(name = "medicine_3")
	private String medicine_3;

	@Column(name = "medicine_3_time")
	private String medicine_3_time;

	@Column(name = "medicine_4")
	private String medicine_4;

	@Column(name = "medicine_4_time")
	private String medicine_4_time;

	@Column(name = "medicine_5")
	private String medicine_5;

	@Column(name = "medicine_5_time")
	private String medicine_5_time;

	@Column(name = "medicine_6")
	private String medicine_6;

	@Column(name = "medicine_6_time")
	private String medicine_6_time;

	@Column(name = "medicine_7")
	private String medicine_7;

	@Column(name = "medicine_7_time")
	private String medicine_7_time;

	@Column(name = "medicine_8")
	private String medicine_8;

	@Column(name = "medicine_8_time")
	private String medicine_8_time;

	@Column(name = "medicine_9")
	private String medicine_9;

	@Column(name = "medicine_9_time")
	private String medicine_9_time;

	@Column(name = "medicine_10")
	private String medicine_10;

	@Column(name = "medicine_10_time")
	private String medicine_10_time;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getTodayDate() {
		return todayDate;
	}

	public void setTodayDate(Date todayDate) {
		this.todayDate = todayDate;
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

	public String getTests() {
		return tests;
	}

	public void setTests(String tests) {
		this.tests = tests;
	}

	public String getMedicine_1() {
		return medicine_1;
	}

	public void setMedicine_1(String medicine_1) {
		this.medicine_1 = medicine_1;
	}

	public String getMedicine_1_time() {
		return medicine_1_time;
	}

	public void setMedicine_1_time(String medicine_1_time) {
		this.medicine_1_time = medicine_1_time;
	}

	public String getMedicine_2() {
		return medicine_2;
	}

	public void setMedicine_2(String medicine_2) {
		this.medicine_2 = medicine_2;
	}

	public String getMedicine_2_time() {
		return medicine_2_time;
	}

	public void setMedicine_2_time(String medicine_2_time) {
		this.medicine_2_time = medicine_2_time;
	}

	public String getMedicine_3() {
		return medicine_3;
	}

	public void setMedicine_3(String medicine_3) {
		this.medicine_3 = medicine_3;
	}

	public String getMedicine_3_time() {
		return medicine_3_time;
	}

	public void setMedicine_3_time(String medicine_3_time) {
		this.medicine_3_time = medicine_3_time;
	}

	public String getMedicine_4() {
		return medicine_4;
	}

	public void setMedicine_4(String medicine_4) {
		this.medicine_4 = medicine_4;
	}

	public String getMedicine_4_time() {
		return medicine_4_time;
	}

	public void setMedicine_4_time(String medicine_4_time) {
		this.medicine_4_time = medicine_4_time;
	}

	public String getMedicine_5() {
		return medicine_5;
	}

	public void setMedicine_5(String medicine_5) {
		this.medicine_5 = medicine_5;
	}

	public String getMedicine_5_time() {
		return medicine_5_time;
	}

	public void setMedicine_5_time(String medicine_5_time) {
		this.medicine_5_time = medicine_5_time;
	}

	public String getMedicine_6() {
		return medicine_6;
	}

	public void setMedicine_6(String medicine_6) {
		this.medicine_6 = medicine_6;
	}

	public String getMedicine_6_time() {
		return medicine_6_time;
	}

	public void setMedicine_6_time(String medicine_6_time) {
		this.medicine_6_time = medicine_6_time;
	}

	public String getMedicine_7() {
		return medicine_7;
	}

	public void setMedicine_7(String medicine_7) {
		this.medicine_7 = medicine_7;
	}

	public String getMedicine_7_time() {
		return medicine_7_time;
	}

	public void setMedicine_7_time(String medicine_7_time) {
		this.medicine_7_time = medicine_7_time;
	}

	public String getMedicine_8() {
		return medicine_8;
	}

	public void setMedicine_8(String medicine_8) {
		this.medicine_8 = medicine_8;
	}

	public String getMedicine_8_time() {
		return medicine_8_time;
	}

	public void setMedicine_8_time(String medicine_8_time) {
		this.medicine_8_time = medicine_8_time;
	}

	public String getMedicine_9() {
		return medicine_9;
	}

	public void setMedicine_9(String medicine_9) {
		this.medicine_9 = medicine_9;
	}

	public String getMedicine_9_time() {
		return medicine_9_time;
	}

	public void setMedicine_9_time(String medicine_9_time) {
		this.medicine_9_time = medicine_9_time;
	}

	public String getMedicine_10() {
		return medicine_10;
	}

	public void setMedicine_10(String medicine_10) {
		this.medicine_10 = medicine_10;
	}

	public String getMedicine_10_time() {
		return medicine_10_time;
	}

	public void setMedicine_10_time(String medicine_10_time) {
		this.medicine_10_time = medicine_10_time;
	}

	public String getTest1() {
		return test1;
	}

	public void setTest1(String test1) {
		this.test1 = test1;
	}

	public String getTest2() {
		return test2;
	}

	public void setTest2(String test2) {
		this.test2 = test2;
	}

	public String getTest3() {
		return test3;
	}

	public void setTest3(String test3) {
		this.test3 = test3;
	}

	public String getTest4() {
		return test4;
	}

	public void setTest4(String test4) {
		this.test4 = test4;
	}

	public String getTest5() {
		return test5;
	}

	public void setTest5(String test5) {
		this.test5 = test5;
	}

	public String getTest6() {
		return test6;
	}

	public void setTest6(String test6) {
		this.test6 = test6;
	}

	public String getTest7() {
		return test7;
	}

	public void setTest7(String test7) {
		this.test7 = test7;
	}

	public String getTest8() {
		return test8;
	}

	public void setTest8(String test8) {
		this.test8 = test8;
	}

}
