package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IAdminDAO;
import com.sujan.model.Department;
import com.sujan.model.Patient;
import com.sujan.model.Role;
import com.sujan.model.Test;
import com.sujan.model.User;

@Repository(value = "adminDAO")
@Transactional
public class AdminDAO implements IAdminDAO {

	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public Role save(Role t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role update(Role t) {
		// TODO Auto-generated method stub
		return null;
	}

//	Save the department
	public Department saveDepartment(Department d) {
		getSession().save(d);
		getSession().flush();
		return d;
	}

//	Save the User
	public User saveUser(User u) {
		getSession().save(u);
		getSession().flush();
		return u;
	}

	public List<User> getUsers() {
		List<User> users = getSession().createQuery("FROM user").list();
		return users;
	}

	@Override
	public int delete(int uid) {
		String sql = "delete user where id = '" + uid + "'";
		int status = getSession().createQuery(sql).executeUpdate();
		return status;
	}

	public User getUserById(int uid) {
		String sql = "from user where id = '" + uid + "'";
		List<User> uList = getSession().createQuery(sql).list();
		return uList.get(0);
	}

	public User updateUser(User u) {
		String query = "update user set name = '" + u.getName() + "'," + " code = '" + u.getCode() + "', address = '"
				+ u.getAddress() + "'," + " email = '" + u.getEmail() + "'" + "," + " contact = '" + u.getContact()
				+ "'," + " accountNo = '" + u.getAccountNo() + "' " + "," + " basicSalary = '" + u.getBasicSalary()
				+ "' where id = '" + u.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return u;
	}

	public List<Department> getAllDepartments() {
		List<Department> departments = getSession().createQuery("FROM department").list();
		return departments;
	}

	public List<User> getAllEmployees() {
		List<User> users = getSession().createQuery("FROM user").list();
		return users;
	}

	public List<Patient> getAllPatients() {
		List<Patient> patients = getSession().createQuery("FROM patient").list();
		return patients;
	}

	public int deleteDepartment(int did) {
		String sql = "delete department where id = '" + did + "'";
		int status = getSession().createQuery(sql).executeUpdate();
		return status;
	}

//Tests CRUD Operation
	public Test saveTest(Test t) {
		getSession().save(t);
		getSession().flush();
		return t;
	}

	public List<Test> allTests() {
		List<Test> tests = getSession().createQuery("FROM test").list();
		return tests;
	}

	public int deleteTest(int did) {
		String sql = "delete test where id = '" + did + "'";
		int status = getSession().createQuery(sql).executeUpdate();
		return status;
	}

	public Test getTest(int uid) {
		String sql = "from test where id = '" + uid + "'";
		List<Test> uList = getSession().createQuery(sql).list();
		return uList.get(0);
	}

	public Test updateTest(Test t) {
		String query = "update test set name = '" + t.getName() + "',code = '" + t.getCode() + "',description = '"
				+ t.getDescription() + "',fee = '" + t.getFee() + "' where id = '" + t.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return t;
	}

	public List<?> getAllCovidIncome() {
		String sql = "select sum(doctorFee), sum(pathologyBill),sum(cavinRent),sum(totalBill),sum(medicineAndOthers),sum(covidTestFee) from bill";
		Query q = getSession().createQuery(sql);
		List<?> bill = ((org.hibernate.query.Query) q).list();
		return bill;
	}

	public List<?> getMonthlyIncome() {
		String sql = "select sum(doctorFee), sum(pathologyBill),sum(cavinRent),sum(totalBill),sum(medicineAndOthers),sum(covidTestFee),month from bill group by month";
		Query q = getSession().createQuery(sql);
		List<?> bill = ((org.hibernate.query.Query) q).list();
		return bill;
	}
}
