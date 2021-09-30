package com.sujan.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.ReceptionistDAO;
import com.sujan.model.Bill;
import com.sujan.model.CovidTestApplication;
import com.sujan.service.impl.IReceptionistService;

@Service(value = "receptionistService")
public class ReceptionistService implements IReceptionistService {
	@Autowired
	ReceptionistDAO receptionistDAO;

	@Override
	public CovidTestApplication save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CovidTestApplication edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CovidTestApplication update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CovidTestApplication> getAll() {
		return receptionistDAO.getAll();
	}

	@Override
	public int delete(int id) {
		int status = receptionistDAO.delete(id);
		return status;
	}

	public CovidTestApplication updateAppointmentStatus(String id) {
		CovidTestApplication a = new CovidTestApplication();
		a.setId(Integer.valueOf(id));
		a.setApproveStatus("Yes");
		a.setPaymentStatus("Paid");
		return receptionistDAO.updateAppointmentStatus(a);
	}

	public Bill saveBill(HttpServletRequest request) {
		java.util.Date utilPackageDate = new java.util.Date();
		java.sql.Date sqlPackageDate = new java.sql.Date(utilPackageDate.getTime());

		DateFormat dateFormat = new SimpleDateFormat("MMMM");
		Date date = new Date();
		String month = dateFormat.format(date).toString();

		DateFormat dateFormatY = new SimpleDateFormat("YYYY");
		String year = dateFormatY.format(date).toString();

		Bill a = new Bill();
		a.setName(request.getParameter("name"));
		a.setAddress(request.getParameter("address"));
		// int age = Integer.valueOf(request.getParameter("age"));
		// a.setAge(age);
		a.setNidNo(request.getParameter("nid"));
		a.setServices("Covid-19 Test");
		a.setTotalBill(Long.valueOf(2500));
		a.setPaidAmount(Long.valueOf(request.getParameter("gTotal2")));
		a.setDueAmount(Long.valueOf(0));
		a.setPaymentStatus("Paid");
		a.setPaidDate(sqlPackageDate);
		a.setPaymentMethod(request.getParameter("method"));
		a.setTransactionId(request.getParameter("transactionID"));
		a.setCovidTestFee(Long.valueOf("2500"));
		a.setMonth(month);
		a.setYear(year);
		return receptionistDAO.saveBill(a);
	}

	public CovidTestApplication findApplication(String id) {
		CovidTestApplication a = new CovidTestApplication();
		a.setId(Integer.valueOf(id));
		return receptionistDAO.findApplication(a);
	}

	public Bill createInvoice(HttpServletRequest request) {
		Bill b = new Bill();
		b.setContact(request.getParameter("contact"));
		return receptionistDAO.createInvoice(b);
	}

	public Bill completePayment(HttpServletRequest request) {
		java.util.Date utilPackageDate = new java.util.Date();
		java.sql.Date sqlPackageDate = new java.sql.Date(utilPackageDate.getTime());

		Bill b = new Bill();
		b.setId(Integer.valueOf(request.getParameter("id")));
		b.setPaymentStatus("Paid");
		b.setPaymentMethod(request.getParameter("method"));
		b.setTransactionId(request.getParameter("transactionID"));
		b.setPaidDate(sqlPackageDate);
		b.setPaidAmount(Long.valueOf(request.getParameter("gTotal2")));
//		b.setTotalBill(2500);
		return receptionistDAO.completePayment(b);
	}

}
