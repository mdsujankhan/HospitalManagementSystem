package com.sujan.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.PatientDAO;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Prescription;
import com.sujan.service.impl.IPatientService;

@Service(value = "patientService")
public class PatientService implements IPatientService {
	@Autowired
	PatientDAO patientDAO;

	@Override
	public Patient save(HttpServletRequest request) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		String date2 = dateFormat.format(date).toString();

//		***********************
		String diabetes = request.getParameter("diabetes");
		String blood_pressure = request.getParameter("blood_pressure");
		String heart_disease = request.getParameter("heart_disease");
		String other_disease = request.getParameter("other_disease");

		if (diabetes != null) {
			diabetes = "Yes";
		} else {
			diabetes = "No";
		}

		if (blood_pressure != null) {
			blood_pressure = "Yes";
		} else {
			blood_pressure = "No";
		}

		if (heart_disease != null) {
			heart_disease = "Yes";
		} else {
			heart_disease = "No";
		}

		if (other_disease != null) {
			other_disease = "Yes";
		} else {
			other_disease = "No";
		}

		Patient p = new Patient();
		p.setCode(request.getParameter("code"));
		p.setName(request.getParameter("name"));
		p.setEmail(request.getParameter("email"));
		p.setAddress(request.getParameter("address"));
		p.setGender(request.getParameter("gender"));
		p.setContact(request.getParameter("contact"));
		p.setUserName(request.getParameter("contact"));
		p.setTodayDate(date2);
		p.setBloodGroup(request.getParameter("bloodGroup"));
		p.setMaritalStatus(request.getParameter("maritalStatus"));
		p.setDepartment(request.getParameter("department"));
		p.setDoctor(request.getParameter("doctor"));
		p.setDateOfBirth(request.getParameter("birthday"));
		p.setDiabetes(diabetes);
		p.setHeartDisease(heart_disease);
		p.setBloodPressure(blood_pressure);
		p.setOtherDisease(other_disease);
		return patientDAO.save(p);
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

	public List<Department> getAllDepartments() {
		return patientDAO.getAllDepartments();
	}

	public CovidTestApplication getReport(HttpServletRequest request) {
		CovidTestApplication a = new CovidTestApplication();
		a.setNidNo(request.getParameter("nid"));
		return patientDAO.getReport(a);
	}

	public Patient save2(HttpServletRequest request) {
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date date = new Date();
		String date2 = dateFormat.format(date).toString();

		Patient p = new Patient();
		// p.setCode(request.getParameter("code"));
		p.setName(request.getParameter("name"));
		p.setEmail(request.getParameter("email"));
		p.setAddress(request.getParameter("address"));
		p.setGender(request.getParameter("gender"));
		p.setContact(request.getParameter("contact"));
		p.setUserName(request.getParameter("contact"));
		p.setTodayDate(date2);
		return patientDAO.save(p);
	}

	public Prescription getPrescription(HttpServletRequest request) {
		Prescription p = new Prescription();
		p.setContact(request.getParameter("contact"));
		return patientDAO.getPrescription(p);
	}

	public void deletePatient(String id) {
		int idd = Integer.valueOf(id);
		patientDAO.deletePatient(idd);
	}

}
