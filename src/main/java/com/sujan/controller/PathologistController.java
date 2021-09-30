package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IPathololistController;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Prescription;
import com.sujan.model.Test;
import com.sujan.service.PathologistService;

@RestController
@RequestMapping(value = "pathologist")
public class PathologistController implements IPathololistController {
	@Autowired
	PathologistService pathologistService;

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
	public ModelAndView save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
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

	@RequestMapping("/home")
	public ModelAndView home() {
		return new ModelAndView("pathologist/HomePathologist");
	}

	@RequestMapping("/newCovidTestApplications")
	public ModelAndView newCovidTestApplications() {
		List<CovidTestApplication> newApplicants = pathologistService.newCovidTestApplications();
		return new ModelAndView("pathologist/newCovidTestApplications", "newApplicants", newApplicants);
	}

	@RequestMapping(value = "/covidTestReport/{id}")
	public ModelAndView covidTestReport(@PathVariable String id) {
		int aid = Integer.valueOf(id);
		CovidTestApplication a = pathologistService.covidTestReport(aid);
		return new ModelAndView("pathologist/covidTestReport", "a", a);
	}

	@RequestMapping(value = "/updateCovidTestReport")
	public ModelAndView updateCovidTestReport(HttpServletRequest request) {
		CovidTestApplication a = pathologistService.updateCovidTestReport(request);
		List<CovidTestApplication> newApplicants = pathologistService.newCovidTestApplications();
		return new ModelAndView("pathologist/newCovidTestApplications", "newApplicants", newApplicants);
	}

	@RequestMapping("/completeTests")
	public ModelAndView completeTests() {
		List<CovidTestApplication> completeTests = pathologistService.completeTests();
		return new ModelAndView("pathologist/completedCovidTestList", "completeTests", completeTests);
	}

	@RequestMapping("/createReport")
	public ModelAndView createReport(HttpServletRequest request, ModelMap map) {
		Prescription p = pathologistService.searchPrescription(request);
		map.addAttribute("id", p.getId());
		map.addAttribute("name", p.getName());
		map.addAttribute("gender", p.getGender());
		map.addAttribute("email", p.getEmail());
		map.addAttribute("test", p.getTests());
		map.addAttribute("contact", p.getContact());
		map.addAttribute("test_1", p.getTest1());
		map.addAttribute("test_2", p.getTest2());
		map.addAttribute("test_3", p.getTest3());
		map.addAttribute("test_4", p.getTest4());
		map.addAttribute("test_5", p.getTest5());

		List<?> t = pathologistService.getAvailableTest(p);

		/*
		 * List<Test> report = new ArrayList<Test>(); long sum = 0;
		 * 
		 * for (int i = 0; i < t.size(); i++) { Object[] r = (Object[]) t.get(i); Test
		 * tt = new Test(); tt.setFee((Integer) r[1]); sum += (Integer) r[1];
		 * 
		 * report.add(tt); } map.addAttribute("tests", report); System.out.println(sum);
		 * 
		 */
		List<Test> tests = pathologistService.createReport(request);
		return new ModelAndView("pathologist/pathologyReport", "tests", t);
	}

	@RequestMapping("/searchNid")
	public ModelAndView searchNid() {
		return new ModelAndView("pathologist/inputContact");
	}

	@RequestMapping("/savePathologiBill")
	public ModelAndView savePathologiBill(HttpServletRequest request) {
		System.out.println(request.getParameter("contact"));
		pathologistService.savePathologiBill(request);
		return new ModelAndView("pathologist/HomePathologist");
	}

	@RequestMapping("/completedRequests")
	public ModelAndView completedRequests() {
		List<CovidTestApplication> applies = pathologistService.completedRequests();
		return new ModelAndView("pathologist/completedCovidTestList", "applies", applies);
	}

	@RequestMapping(value = "/details/{id}")
	public ModelAndView details(@PathVariable String id) {
		int aid = Integer.valueOf(id);
		CovidTestApplication a = pathologistService.details(aid);
		return new ModelAndView("pathologist/detailsCovidApplication", "a", a);
	}

}
