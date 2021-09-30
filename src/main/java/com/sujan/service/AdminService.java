package com.sujan.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sujan.dao.AdminDAO;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Role;
import com.sujan.model.Test;
import com.sujan.model.User;
import com.sujan.service.impl.IAdminService;

@Service(value = "adminService")
public class AdminService implements IAdminService {
	@Autowired
	private AdminDAO adminDAO;

	@Autowired
	ServletContext servletContext;

	public void saveFile(MultipartFile file, String fileName, String path) throws IOException {
		byte[] bytes = file.getBytes();

		String filePath = servletContext.getRealPath(path);
		File dir = new File(filePath);
		File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
	}

	@Override
	public Role save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		int status = adminDAO.delete(id);
		return status;
	}

	public Department saveDepartment(HttpServletRequest request) {
		Department dept = new Department();
		dept.setCode(request.getParameter("code"));
		dept.setName(request.getParameter("departmentName"));
		dept.setDescription(request.getParameter("description"));
		dept.setStatus(request.getParameter("status"));
		return adminDAO.saveDepartment(dept);
	}

	public final String imagePath = "/app-assets/images/";

	public User saveUser(HttpServletRequest request, MultipartFile photo) throws IOException {
		User u = new User();
		saveFile(photo, photo.getOriginalFilename(), imagePath);

		u.setCode(request.getParameter("code"));
		u.setName(request.getParameter("name"));
		u.setPassword(request.getParameter("password"));
		u.setUserName(request.getParameter("contact"));
		u.setContact(request.getParameter("contact"));
		u.setFatherName(request.getParameter("father_name"));
		u.setMotherName(request.getParameter("mother_name"));

		u.setEmail(request.getParameter("email"));
		u.setGender(request.getParameter("gender"));

		u.setAddress(request.getParameter("address"));
		u.setDateOfBirth(request.getParameter("birthday"));

		u.setBloodGroup(request.getParameter("blood_group"));
		u.setMaritalStatus(request.getParameter("merital_status"));

		u.setAccountNo(request.getParameter("account_no"));
		u.setBasicSalary(request.getParameter("basic_salary"));

		u.setRole(request.getParameter("role"));
		u.setDepartment(request.getParameter("department"));

		u.setDesignation(request.getParameter("designation"));
		u.setPhoto(imagePath + photo.getOriginalFilename());
		return adminDAO.saveUser(u);
	}

	public List<User> getUsers() {
		return adminDAO.getUsers();
	}

	public User getById(int id) {
		return adminDAO.getUserById(id);
	}

	public User updateUser(HttpServletRequest request) {
		User u = new User();
		u.setId(Integer.valueOf(request.getParameter("id")));
		u.setCode(request.getParameter("code"));
		u.setName(request.getParameter("name"));
		u.setPassword(request.getParameter("password"));
		u.setUserName(request.getParameter("contact"));
		u.setContact(request.getParameter("contact"));
		u.setFatherName(request.getParameter("father_name"));
		u.setMotherName(request.getParameter("mother_name"));

		u.setEmail(request.getParameter("email"));
		u.setGender(request.getParameter("gender"));

		u.setAddress(request.getParameter("address"));
//		u.setDateOfBirth(request.getParameter("birthday"));

		u.setBloodGroup(request.getParameter("blood_group"));
		u.setMaritalStatus(request.getParameter("merital_status"));

		u.setAccountNo(request.getParameter("account_no"));
		u.setBasicSalary(request.getParameter("basic_salary"));

		u.setRole(request.getParameter("role"));
		/*
		 * u.setJoinDate(request.getParameter("join_date"));
		 * 
		 * u.setPhoto(request.getParameter("photo"));
		 */
		u.setDesignation(request.getParameter("designation"));
		return adminDAO.updateUser(u);
	}

	public List<Department> getAllDepartments() {
		return adminDAO.getAllDepartments();
	}

	public List<User> getAllEmployees() {
		return adminDAO.getAllEmployees();
	}

	public List<Patient> getAllPatients() {
		return adminDAO.getAllPatients();
	}

	public int deleteDepartment(int id) {
		int status = adminDAO.deleteDepartment(id);
		return status;
	}

	// Tests CRUD Operation
	public Test saveTest(HttpServletRequest request) {
		Test t = new Test();
		t.setCode(request.getParameter("code"));
		t.setName(request.getParameter("name"));
		t.setDescription(request.getParameter("description"));
		t.setDepartment(request.getParameter("department"));
		t.setFee(Integer.valueOf(request.getParameter("fee")));
		return adminDAO.saveTest(t);
	}

	public List<Test> allTests() {
		return adminDAO.allTests();
	}

	public int deleteTest(int id) {
		int status = adminDAO.deleteTest(id);
		return status;
	}

	public Test getTest(int id) {
		return adminDAO.getTest(id);
	}

	public Test updateTest(HttpServletRequest request) {
		Test t = new Test();
		t.setId(Integer.valueOf(request.getParameter("id")));
		t.setCode(request.getParameter("code"));
		t.setName(request.getParameter("name"));
		t.setDescription(request.getParameter("description"));
		t.setDepartment(request.getParameter("department"));
		t.setFee(Integer.valueOf(request.getParameter("fee")));
		return adminDAO.updateTest(t);
	}

	public List<?> getAllCovidIncome() {
		return adminDAO.getAllCovidIncome();
	}

	public List<?> getMonthlyIncome() {
		return adminDAO.getMonthlyIncome();
	}
}
