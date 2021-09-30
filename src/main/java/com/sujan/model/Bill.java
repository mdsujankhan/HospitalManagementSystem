package com.sujan.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "bill")
@Table(name = "bills")
public class Bill {
	@Id
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "gender")
	private String gender;

	@Column(name = "age")
	private int age;

	@Column(name = "address")
	private String address;

	@Column(name = "contact")
	private String contact;

	@Column(name = "email")
	private String email;

	@Column(name = "nid_no")
	private String nidNo;

	@Column(name = "services")
	private String services;

	@Column(name = "payment_status")
	private String paymentStatus;

	@Column(name = "doctor_fee")
	private long doctorFee;

	@Column(name = "covid_test_fee")
	private long covidTestFee;

	@Column(name = "pathology_bill")
	private long pathologyBill;

	@Column(name = "cavin_rent")
	private long cavinRent;

	@Column(name = "medicine_and_others")
	private long medicineAndOthers;

	@Column(name = "total_bill")
	private long totalBill;

	@Column(name = "paid_amount")
	private long paidAmount;

	@Column(name = "due_amount")
	private long dueAmount;

	@Column(name = "paid_date")
	private Date paidDate;

	@Column(name = "payment_method")
	private String paymentMethod;

	@Column(name = "transaction_id")
	private String transactionId;

	@Column(name = "year")
	private String year;

	@Column(name = "month")
	private String month;

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getNidNo() {
		return nidNo;
	}

	public void setNidNo(String nidNo) {
		this.nidNo = nidNo;
	}

	public String getServices() {
		return services;
	}

	public void setServices(String services) {
		this.services = services;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public long getDoctorFee() {
		return doctorFee;
	}

	public void setDoctorFee(long doctorFee) {
		this.doctorFee = doctorFee;
	}

	public long getPathologyBill() {
		return pathologyBill;
	}

	public void setPathologyBill(long pathologyBill) {
		this.pathologyBill = pathologyBill;
	}

	public long getCavinRent() {
		return cavinRent;
	}

	public void setCavinRent(long cavinRent) {
		this.cavinRent = cavinRent;
	}

	public long getMedicineAndOthers() {
		return medicineAndOthers;
	}

	public void setMedicineAndOthers(long medicineAndOthers) {
		this.medicineAndOthers = medicineAndOthers;
	}

	public long getTotalBill() {
		return totalBill;
	}

	public void setTotalBill(long totalBill) {
		this.totalBill = totalBill;
	}

	public long getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(long paidAmount) {
		this.paidAmount = paidAmount;
	}

	public long getDueAmount() {
		return dueAmount;
	}

	public void setDueAmount(long dueAmount) {
		this.dueAmount = dueAmount;
	}

	public Date getPaidDate() {
		return paidDate;
	}

	public void setPaidDate(Date paidDate) {
		this.paidDate = paidDate;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	public long getCovidTestFee() {
		return covidTestFee;
	}

	public void setCovidTestFee(long covidTestFee) {
		this.covidTestFee = covidTestFee;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

}
