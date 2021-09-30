package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IPatientDAO;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Prescription;

@Repository(value = "patientDAO")
@Transactional
public class PatientDAO implements IPatientDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public Patient save(Patient t) {
		getSession().save(t);
		getSession().flush();
		return t;
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

	public List<Department> getAllDepartments() {
		List<Department> departments = getSession().createQuery("FROM department").list();
		return departments;
	}

	public CovidTestApplication getReport(CovidTestApplication c) {
		List<CovidTestApplication> report = getSession()
				.createQuery("FROM covidTestApplication where nidNo = '" + c.getNidNo() + "'").list();
		return report.get(0);
	}

	public Prescription getPrescription(Prescription p) {
		System.out.println(p.getContact());
		String sql = "FROM prescription where contact = '" + p.getContact() + "'";
		List<Prescription> prescriptions = getSession().createQuery(sql).list();
		return prescriptions.get(0);
	}

	public void deletePatient(int idd) {
		String sql = "delete patient where id = '" + idd + "'";
		int status = getSession().createQuery(sql).executeUpdate();

	}
}
