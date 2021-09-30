package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IIndexDAO;
import com.sujan.model.Appointment;
import com.sujan.model.CovidTestApplication;
import com.sujan.model.Department;

@Repository(value = "indexDAO")
@Transactional
public class IndexDAO implements IIndexDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public CovidTestApplication save(CovidTestApplication t) {
		getSession().save(t);
		getSession().flush();
		return t;
	}

	@Override
	public List<CovidTestApplication> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CovidTestApplication getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CovidTestApplication update(CovidTestApplication t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Appointment makeAppoinment(Appointment a) {
		getSession().save(a);
		getSession().flush();
		return a;
	}

	public List<Department> getAllDepartments() {
		List<Department> departments = getSession().createQuery("FROM department").list();
		return departments;
	}
}
