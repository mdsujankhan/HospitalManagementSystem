package com.sujan.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IAdminController;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Report;
import com.sujan.model.Test;
import com.sujan.model.User;
import com.sujan.service.AdminService;

@RestController
@RequestMapping(value = "admin")
public class AdminController implements IAdminController {
	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/addUser")
	public ModelAndView doctor() {
		List<Department> departments = adminService.getAllDepartments();
		return new ModelAndView("admin/addUser", "departments", departments);
	}

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
		return null;
	}

	@PostMapping("/saveUser")
	public ModelAndView save2(HttpServletRequest request, @RequestParam("photo") MultipartFile photo)
			throws IOException {
		User u = adminService.saveUser(request, photo);
		return new ModelAndView("/admin/addUser");
	}

	@Override
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		User u = adminService.getById(pid);
		return new ModelAndView("/admin/profile", "u", u);
	}

	@Override
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		User u = adminService.updateUser(request);
		List<User> users = adminService.getAllEmployees();
		return new ModelAndView("/admin/allEmployees", "users", users);
	}

	@Override
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int uid = Integer.valueOf(id);
		int test = adminService.delete(uid);
		List<User> users = adminService.getAllEmployees();
		return new ModelAndView("/admin/allEmployees", "users", users);
	}

	@Override
	@GetMapping("/show")
	public ModelAndView getAll() {
		List<User> users = adminService.getUsers();
		return new ModelAndView("admin/show", "users", users);
	}

	@RequestMapping(value = "/addDepartment")
	public ModelAndView department() {
		return new ModelAndView("admin/addDepartment");
	}

	@RequestMapping(value = "/saveDepartment", method = RequestMethod.POST)
	public ModelAndView saveDepartment(HttpServletRequest request) {
		Department dept = adminService.saveDepartment(request);
		return new ModelAndView("/admin/addDepartment");
	}

	@RequestMapping(value = "/home")
	public ModelAndView home(HttpServletRequest request, Model model) {
		List<?> bills = adminService.getAllCovidIncome();
		List<Report> report = new ArrayList<Report>();

		for (int i = 0; i < bills.size(); i++) {
			Object[] r = (Object[]) bills.get(i);
			Report rs = new Report();

			rs.setDoctorFee((Long) r[0]);
			rs.setPathologyBill((Long) r[1]);
			rs.setCavinRent((Long) r[2]);
			rs.setTotalBill((Long) r[3]);
			rs.setMedicineBill((Long) r[4]);
			rs.setCovidTest((Long) r[5]);
			report.add(rs);
		}
		model.addAttribute("report", report);
		return new ModelAndView("admin/HomeAdmin");
	}

	@RequestMapping(value = "/allDepartments")
	public ModelAndView allDepartments() {
		List<Department> departments = adminService.getAllDepartments();
		return new ModelAndView("admin/allDepartments", "departments", departments);
	}

	@RequestMapping(value = "/allEmployees")
	public ModelAndView allEmployees() {
		List<User> users = adminService.getAllEmployees();
		return new ModelAndView("admin/allEmployees", "users", users);
	}

	@RequestMapping(value = "/allPatients")
	public ModelAndView allPatients() {
		List<Patient> patients = adminService.getAllPatients();
		return new ModelAndView("admin/allPatients", "patients", patients);
	}

	@RequestMapping(value = "/deleteDepartment/{id}", method = RequestMethod.GET)
	public ModelAndView deleteDepartment(@PathVariable String id) {
		int did = Integer.valueOf(id);
		int dept = adminService.deleteDepartment(did);
		List<Department> departments = adminService.getAllDepartments();
		return new ModelAndView("/admin/allDepartments", "departments", departments);
	}

	@RequestMapping(value = "/addTest")
	public ModelAndView addTest() {
		return new ModelAndView("admin/addTest");
	}

//Tests CRUD Operation

	@RequestMapping(value = "/saveTest", method = RequestMethod.POST)
	public ModelAndView saveTest(HttpServletRequest request) {
		Test t = adminService.saveTest(request);
		return new ModelAndView("/admin/addTest");
	}

	@RequestMapping(value = "/allTests")
	public ModelAndView allTests() {
		List<Test> tests = adminService.allTests();
		return new ModelAndView("admin/allTests", "tests", tests);
	}

	@RequestMapping(value = "/deleteTest/{id}", method = RequestMethod.GET)
	public ModelAndView deleteTest(@PathVariable String id) {
		int did = Integer.valueOf(id);
		int test = adminService.deleteTest(did);
		List<Test> tests = adminService.allTests();
		return new ModelAndView("admin/allTests", "tests", tests);
	}

	@RequestMapping(value = "/getTest/{id}", method = RequestMethod.GET)
	public ModelAndView getTest(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Test u = adminService.getTest(pid);
		return new ModelAndView("/admin/editTest", "u", u);
	}

	@RequestMapping(value = "/updateTest", method = RequestMethod.POST)
	public ModelAndView updateTest(HttpServletRequest request) {
		Test t = adminService.updateTest(request);
		List<Test> tests = adminService.allTests();
		return new ModelAndView("admin/allTests", "tests", tests);
	}

	@RequestMapping(value = "/getAllCovidIncome")
	public ModelAndView getAllCovidIncome(Model model) {

		List<?> bills = adminService.getAllCovidIncome();
		List<Report> report = new ArrayList<Report>();
		Long doctorFee = Long.valueOf(0);
		Long cavinRent = Long.valueOf(0);
		Long pathologyBill = Long.valueOf(0);
		Long medicineBill = Long.valueOf(0);
		Long covidTest = Long.valueOf(0);
		Long totalBill = Long.valueOf(0);

		for (int i = 0; i < bills.size(); i++) {
			Object[] r = (Object[]) bills.get(i);
			Report rs = new Report();
			doctorFee = (Long) r[0];
			pathologyBill = (Long) r[1];
			cavinRent = (Long) r[2];
			totalBill = (Long) r[3];
			medicineBill = (Long) r[4];
			covidTest = (Long) r[5];

			rs.setDoctorFee((Long) r[0]);
			rs.setPathologyBill((Long) r[1]);
			rs.setCavinRent((Long) r[2]);
			rs.setTotalBill((Long) r[3]);
			rs.setMedicineBill((Long) r[4]);
			rs.setCovidTest((Long) r[5]);

			rs.setDoctorFeePercentage((doctorFee * 100) / totalBill);
			rs.setPathologyBillPercentage((pathologyBill * 100) / totalBill);
			rs.setCavinRentPercentage((cavinRent * 100) / totalBill);
			rs.setCovidTestPercentage((covidTest * 100) / totalBill);
			rs.setMedicineBillPercentage((medicineBill * 100) / totalBill);
			report.add(rs);
		}
		model.addAttribute("report", report);
		return new ModelAndView("admin/totalIncome");
	}

	@RequestMapping(value = "/getMonthlyIncome")
	public ModelAndView getMonthlyIncome(Model model) {

		List<?> bills = adminService.getMonthlyIncome();
		List<Report> report = new ArrayList<Report>();

		for (int i = 0; i < bills.size(); i++) {
			Object[] r = (Object[]) bills.get(i);
			Report rs = new Report();

			rs.setDoctorFee((Long) r[0]);
			rs.setPathologyBill((Long) r[1]);
			rs.setCavinRent((Long) r[2]);
			rs.setTotalBill((Long) r[3]);
			rs.setMedicineBill((Long) r[4]);
			rs.setCovidTest((Long) r[5]);
			rs.setMonth((String) r[6]);
			report.add(rs);
		}
		model.addAttribute("report", report);
		return new ModelAndView("admin/perMonthIncome");
	}

	@RequestMapping(value = "/pieChart")
	public ModelAndView pieChart(Model model) {
		List<?> bills = adminService.getAllCovidIncome();
		List<Report> report = new ArrayList<Report>();

		for (int i = 0; i < bills.size(); i++) {
			Object[] r = (Object[]) bills.get(i);
			Report rs = new Report();

			rs.setDoctorFee((Long) r[0]);
			rs.setPathologyBill((Long) r[1]);
			rs.setCavinRent((Long) r[2]);
			rs.setTotalBill((Long) r[3]);
			rs.setMedicineBill((Long) r[4]);
			rs.setCovidTest((Long) r[5]);
			report.add(rs);
		}
		model.addAttribute("report", report);

		return new ModelAndView("/admin/pieChart");
	}
}
