package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IDoctorDAO;
import com.sujan.model.Appointment;
import com.sujan.model.Bill;
import com.sujan.model.Prescription;

@Repository(value = "doctorDAO")
@Transactional
public class DoctorDAO implements IDoctorDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public Appointment save(Appointment t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Appointment> getAll() {
		List<Appointment> appointments = getSession()
				.createQuery("FROM appointment where status = 'seen' and takeUpStatus = 'No'").list();
		return appointments;
	}

	@Override
	public Appointment getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Appointment update(Appointment t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		String sql = "delete appointment where id = '" + id + "'";
		int status = getSession().createQuery(sql).executeUpdate();
		return status;
	}

	public List<Appointment> getNewAppointments() {
		List<Appointment> appointments = getSession().createQuery("FROM appointment where status = 'new'").list();
		return appointments;
	}

	public Appointment updateAppointmentStatus(Appointment a) {
		String query = "update appointment set status = '" + a.getStatus() + "' where id = '" + a.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return a;
	}

	public Appointment createPrescription(int aid) {
		String query = "from appointment where id = '" + aid + "'";
		List<Appointment> aList = getSession().createQuery(query).list();
		return aList.get(0);
	}

	public Prescription savePrescription(Prescription p) {
		getSession().save(p);
		getSession().flush();
		return p;
	}

	public Appointment updateTestStatus(Appointment a) {
		String query = "update appointment set takeUpStatus = '" + a.getTakeUpStatus() + "' where id = '" + a.getId()
				+ "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return a;
	}

	public Bill saveBill(Bill b) {
		getSession().save(b);
		getSession().flush();
		return b;
	}
}
