package com.sujan.model;

public class Report {
	private Long doctorFee;
	private Long cavinRent;
	private Long pathologyBill;
	private Long covidTest;
	private Long medicineBill;
	private Long totalBill;

	private Long doctorFeePercentage;
	private Long cavinRentPercentage;
	private Long pathologyBillPercentage;
	private Long covidTestPercentage;
	private Long medicineBillPercentage;

	private String month;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Long getDoctorFee() {
		return doctorFee;
	}

	public void setDoctorFee(Long doctorFee) {
		this.doctorFee = doctorFee;
	}

	public Long getCavinRent() {
		return cavinRent;
	}

	public void setCavinRent(Long cavinRent) {
		this.cavinRent = cavinRent;
	}

	public Long getPathologyBill() {
		return pathologyBill;
	}

	public void setPathologyBill(Long pathologyBill) {
		this.pathologyBill = pathologyBill;
	}

	public Long getMedicineBill() {
		return medicineBill;
	}

	public void setMedicineBill(Long medicineBill) {
		this.medicineBill = medicineBill;
	}

	public Long getTotalBill() {
		return totalBill;
	}

	public void setTotalBill(Long totalBill) {
		this.totalBill = totalBill;
	}

	public Long getCovidTest() {
		return covidTest;
	}

	public void setCovidTest(Long covidTest) {
		this.covidTest = covidTest;
	}

	public Long getDoctorFeePercentage() {
		return doctorFeePercentage;
	}

	public void setDoctorFeePercentage(Long doctorFeePercentage) {
		this.doctorFeePercentage = doctorFeePercentage;
	}

	public Long getCavinRentPercentage() {
		return cavinRentPercentage;
	}

	public void setCavinRentPercentage(Long cavinRentPercentage) {
		this.cavinRentPercentage = cavinRentPercentage;
	}

	public Long getPathologyBillPercentage() {
		return pathologyBillPercentage;
	}

	public void setPathologyBillPercentage(Long pathologyBillPercentage) {
		this.pathologyBillPercentage = pathologyBillPercentage;
	}

	public Long getCovidTestPercentage() {
		return covidTestPercentage;
	}

	public void setCovidTestPercentage(Long covidTestPercentage) {
		this.covidTestPercentage = covidTestPercentage;
	}

	public Long getMedicineBillPercentage() {
		return medicineBillPercentage;
	}

	public void setMedicineBillPercentage(Long medicineBillPercentage) {
		this.medicineBillPercentage = medicineBillPercentage;
	}

}
