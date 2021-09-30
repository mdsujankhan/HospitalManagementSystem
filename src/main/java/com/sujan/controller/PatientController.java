package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IPatientController;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Prescription;
import com.sujan.service.AdminService;
import com.sujan.service.PatientService;

@RestController
@RequestMapping(value = "patient")
public class PatientController implements IPatientController {
	@Autowired
	PatientService patientService;

	@Autowired
	AdminService adminService;

	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@PostMapping("/save")
	public ModelAndView save(HttpServletRequest request) {
		Patient p = patientService.save(request);
		List<Department> departments = patientService.getAllDepartments();
		return new ModelAndView("patients/addPatient", "departments", departments);
	}

	@Override
	public ModelAndView edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable String id) {
		patientService.deletePatient(id);
		List<Patient> patients = adminService.getAllPatients();
		return new ModelAndView("admin/allPatients", "patients", patients);
	}

	@Override
	public ModelAndView getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping("/home")
	public ModelAndView home() {
		return new ModelAndView("patients/HomePatient");
	}

	@RequestMapping("/add")
	public ModelAndView add() {
		List<Department> departments = patientService.getAllDepartments();
		return new ModelAndView("patients/addPatient", "departments", departments);
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("patientLogin");
	}

	@RequestMapping("/nid")
	public ModelAndView nid2() {
		return new ModelAndView("patients/InputNID");
	}

	@RequestMapping("/getReport")
	public ModelAndView getReport(HttpServletRequest request) {
		CovidTestApplication report = patientService.getReport(request);
		return new ModelAndView("patients/covidTestReport", "r", report);
	}

	// do verify a patient
	@RequestMapping("/varify")
	public ModelAndView varify() {
		return new ModelAndView("patientLogin");
	}

	@RequestMapping("/getContact")
	public ModelAndView getContact(HttpServletRequest request) {
		return new ModelAndView("patients/inputContact");
	}

	@RequestMapping("/getPrescription")
	public ModelAndView getPrescription(HttpServletRequest request) {
		Prescription p = patientService.getPrescription(request);
		return new ModelAndView("patients/prescription", "p", p);
	}

	@RequestMapping("/prescription")
	public ModelAndView getContact2(HttpServletRequest request) {
		return new ModelAndView("patients/prescription");
	}
}
