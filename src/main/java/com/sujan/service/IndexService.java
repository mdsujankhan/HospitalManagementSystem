package com.sujan.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.IndexDAO;
import com.sujan.model.Appointment;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;
import com.sujan.service.impl.IIndexService;

@Service(value = "indexService")
public class IndexService implements IIndexService {
	@Autowired
	IndexDAO indexDAO;

	@Override
	public CovidTestApplication save(HttpServletRequest request) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		String date2 = dateFormat.format(date).toString();

		CovidTestApplication test = new CovidTestApplication();
		test.setName(request.getParameter("name"));
		test.setAge(Integer.valueOf(request.getParameter("age")));
		test.setGender(request.getParameter("gender"));
		test.setAddress(request.getParameter("address"));
		test.setNidNo(request.getParameter("nid"));
		test.setPassportNo(request.getParameter("passport"));
		test.setStatus("unseen");
		test.setTestStatus("No");
		test.setApproveStatus("No");
		test.setApplyDate(date2);
		test.setPaymentMethod(request.getParameter("method"));
		test.setTransactionId(request.getParameter("transactionID"));
		return indexDAO.save(test);
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Appointment makeAppoinment(HttpServletRequest request) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		String date2 = dateFormat.format(date).toString();

		Appointment a = new Appointment();
		a.setName(request.getParameter("name"));
		a.setAge(request.getParameter("age"));
		a.setGender(request.getParameter("gender"));
		a.setContact(request.getParameter("contact"));
		a.setEmail(request.getParameter("email"));
		a.setDepartment(request.getParameter("department"));
		a.setDoctor(request.getParameter("doctor"));
		a.setSlot(request.getParameter("slot"));
		a.setDate(date2);
		a.setStatus("new");
		a.setTakeUpStatus("No");
		return indexDAO.makeAppoinment(a);
	}

	public List<Department> getAllDepartments() {
		return indexDAO.getAllDepartments();
	}
}
