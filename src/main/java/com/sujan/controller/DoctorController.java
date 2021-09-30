package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IDoctorController;
import com.sujan.model.Appointment;
import com.sujan.model.Bill;
import com.sujan.model.Patient;
import com.sujan.service.DoctorService;
import com.sujan.service.PatientService;

@RestController
@RequestMapping(value = "doctor")
public class DoctorController implements IDoctorController {
	@Autowired
	DoctorService doctorService;

	@Autowired
	PatientService patientService;

	@Override
	@RequestMapping(value = "/prescription")
	public ModelAndView create() {
		return new ModelAndView("doctor/prescription");
	}

	@RequestMapping(value = "/addPatient")
	public ModelAndView addPatient() {
		return new ModelAndView("doctor/addPatient");
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

//save prescription and patient
	@Override
	@RequestMapping(value = "/savePrescription")
	public ModelAndView save(HttpServletRequest request) {

		Appointment a = doctorService.updateTestStatus(request);
		doctorService.savePrescription(request);
		Patient p = patientService.save2(request);

		Bill b = doctorService.saveBill(request);
		List<Appointment> applicants = doctorService.getNewAppointments();
		return new ModelAndView("doctor/HomeDoctor", "appointments", applicants);
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
	@GetMapping(value = "/delete/{id}")
	public ModelAndView delete(@PathVariable String id) {
		int aid = Integer.valueOf(id);
		int test = doctorService.delete(aid);
		List<Appointment> applicants = doctorService.getNewAppointments();
		return new ModelAndView("doctor/HomeDoctor", "appointments", applicants);
	}

	@Override
	@GetMapping("/appointments")
	public ModelAndView getAll() {
		List<Appointment> applicants = doctorService.getAll();
		return new ModelAndView("doctor/showAllAppointments", "appointments", applicants);
	}

	@GetMapping("/home")
	public ModelAndView getNewAppointments() {
		List<Appointment> applicants = doctorService.getNewAppointments();
		return new ModelAndView("doctor/HomeDoctor", "appointments", applicants);
	}

	@RequestMapping(value = "/updateAppointmentStatus/{id}")
	public ModelAndView updateAppointmentStatus(@PathVariable String id) {
		Appointment a = doctorService.updateAppointmentStatus(id);
		List<Appointment> applicants = doctorService.getNewAppointments();
		return new ModelAndView("doctor/HomeDoctor", "appointments", applicants);
	}

	// When Doctor click TakeUp
	@RequestMapping(value = "/createPrescription/{id}")
	public ModelAndView createPrescription(@PathVariable String id) {
		Appointment a = doctorService.createPrescription(id);
		return new ModelAndView("doctor/prescription", "a", a);
	}
}
