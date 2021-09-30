package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IPathologistDAO;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Patient;
import com.sujan.model.Prescription;
import com.sujan.model.Test;

@Repository(value = "pathologistDAO")
@Transactional
public class PathologistDAO implements IPathologistDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public Patient save(Patient t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Patient> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Patient update(Patient t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<CovidTestApplication> newCovidTestApplications() {
		String query = "FROM covidTestApplication where approveStatus ='Yes' and testStatus = 'No'";
		List<CovidTestApplication> applicants = getSession().createQuery(query).list();
		return applicants;
	}

	public CovidTestApplication covidTestReport(CovidTestApplication c) {
		List<CovidTestApplication> applicants = getSession()
				.createQuery("FROM covidTestApplication where id = '" + c.getId() + "'").list();
		return applicants.get(0);
	}

	public CovidTestApplication updateCovidTestReport(CovidTestApplication a) {
		String query = "update covidTestApplication set testStatus = '" + a.getTestStatus() + "', result = '"
				+ a.getResult() + "' ,swabTakenDate = '" + a.getSwabTakenDate() + "'  where id = '" + a.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return a;
	}

	public List<CovidTestApplication> completeTests() {
		String query = "FROM covidTestApplication where testStatus = 'Yes'";
		List<CovidTestApplication> completedTests = getSession().createQuery(query).list();
		return completedTests;
	}

	public List<Test> createReport(HttpServletRequest request) {
		String query = "FROM test";
		List<Test> completedTests = getSession().createQuery(query).list();
		return completedTests;
	}

	public Prescription searchPrescription(Prescription p) {
		String query = "FROM prescription where contact = '" + p.getContact() + "'";
		List<Prescription> bills = getSession().createQuery(query).list();
		return bills.get(0);
	}

	public List<?> getAvailableTest(Prescription p) {
		String query = "FROM test where name in ( '" + p.getTest1() + "','" + p.getTest2() + "','" + p.getTest3() + "'"
				+ ",'" + p.getTest4() + "','" + p.getTest5() + "','" + p.getTest6() + "','" + p.getTest7() + "','"
				+ p.getTest8() + "')";
		List<?> test = getSession().createQuery(query).list();
		return test;
	}

	public Object savePathologiBill(HttpServletRequest request) {
		String query = "update bill set pathologyBill = '3500' where contact = '" + request.getParameter("contact")
				+ "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return null;
	}

	public List<CovidTestApplication> completedRequests() {
		String query = "FROM covidTestApplication where testStatus = 'Yes'";
		List<CovidTestApplication> applicants = getSession().createQuery(query).list();
		return applicants;
	}

	public CovidTestApplication details(int aid) {
		String query = "FROM covidTestApplication where id = '" + aid + "'";
		List<CovidTestApplication> applicants = getSession().createQuery(query).list();
		return applicants.get(0);
	}
}
