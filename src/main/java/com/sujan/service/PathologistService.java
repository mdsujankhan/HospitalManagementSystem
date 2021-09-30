package com.sujan.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.PathologistDAO;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Patient;
import com.sujan.model.Prescription;
import com.sujan.model.Test;
import com.sujan.service.impl.IPathologistService;

@Service(value = "pathologistService")
public class PathologistService implements IPathologistService {
	@Autowired
	PathologistDAO pathologistDAO;

	@Override
	public Patient save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Patient> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<CovidTestApplication> newCovidTestApplications() {
		return pathologistDAO.newCovidTestApplications();
	}

	public CovidTestApplication covidTestReport(int id) {
		CovidTestApplication a = new CovidTestApplication();
		a.setId(id);
		return pathologistDAO.covidTestReport(a);
	}

	public CovidTestApplication updateCovidTestReport(HttpServletRequest request) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		String date2 = dateFormat.format(date).toString();

		CovidTestApplication a = new CovidTestApplication();
		a.setId(Integer.valueOf(request.getParameter("id")));
		a.setTestStatus("Yes");
		a.setResult(request.getParameter("result"));
		a.setSwabTakenDate(date2);
		return pathologistDAO.updateCovidTestReport(a);
	}

	public List<CovidTestApplication> completeTests() {
		return pathologistDAO.completeTests();
	}

	public List<Test> createReport(HttpServletRequest request) {
		return pathologistDAO.createReport(request);
	}

	public Prescription searchPrescription(HttpServletRequest request) {
		Prescription p = new Prescription();
		p.setContact(request.getParameter("contact"));
		return pathologistDAO.searchPrescription(p);
	}

	public List<?> getAvailableTest(Prescription p) {

		return pathologistDAO.getAvailableTest(p);
	}

	public Object savePathologiBill(HttpServletRequest request) {

		return pathologistDAO.savePathologiBill(request);
	}

	public List<CovidTestApplication> completedRequests() {

		return pathologistDAO.completedRequests();
	}

	public CovidTestApplication details(int aid) {

		return pathologistDAO.details(aid);
	}
}
