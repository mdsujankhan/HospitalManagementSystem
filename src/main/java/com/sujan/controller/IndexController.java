package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IIndexController;
import com.sujan.model.Appointment;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;
import com.sujan.service.IndexService;

@RestController
public class IndexController implements IIndexController {
	@Autowired
	private IndexService idexService;

	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/test")
	public ModelAndView test() {
		return new ModelAndView("covidTestApplication");
	}

	@Override
	@PostMapping("/submit")
	public ModelAndView save(HttpServletRequest request) {
		CovidTestApplication test = idexService.save(request);
		return new ModelAndView("index");
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
	public ModelAndView delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(value = "/home")
	public ModelAndView home() {
		return new ModelAndView("HomePage");
	}

	@RequestMapping(value = "/appointment")
	public ModelAndView appointment() {
		List<Department> departments = idexService.getAllDepartments();
		return new ModelAndView("appointment", "departments", departments);
	}

	@PostMapping("/makeAppoinment")
	public ModelAndView makeAppoinment(HttpServletRequest request) {
		Appointment appoint = idexService.makeAppoinment(request);
		return new ModelAndView("index");
	}
}
