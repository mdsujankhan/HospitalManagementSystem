package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IReceptionistDAO;
import com.sujan.model.Bill;
import com.sujan.model.CovidTestApplication;

@Repository(value = "receptionistDAO")
@Transactional
public class ReceptionistDAO implements IReceptionistDAO {

	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public CovidTestApplication save(CovidTestApplication t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CovidTestApplication> getAll() {
		String query = "FROM covidTestApplication where approveStatus ='No' and testStatus = 'No'";
		List<CovidTestApplication> applicants = getSession().createQuery(query).list();
		return applicants;
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
		String sql = "delete covidTestApplication where id = '" + id + "'";
		int status = getSession().createQuery(sql).executeUpdate();
		return status;
	}

	public CovidTestApplication updateAppointmentStatus(CovidTestApplication a) {
		String query = "update covidTestApplication set approveStatus = '" + a.getApproveStatus() + "' where id = '"
				+ a.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return a;
	}

	public CovidTestApplication findApplication(CovidTestApplication a) {
		String query = "from covidTestApplication where id = '" + a.getId() + "'";
		List<CovidTestApplication> uList = getSession().createQuery(query).list();
		return uList.get(0);
	}

	public Bill saveBill(Bill a) {
		getSession().save(a);
		getSession().flush();
		return a;
	}

	public Bill createInvoice(Bill b) {
		String query = "FROM bill where contact ='" + b.getContact() + "' and paymentStatus = 'due'";
		List<Bill> bills = getSession().createQuery(query).list();
		return bills.get(0);
	}

	public Bill completePayment(Bill b) {
		String query = "update bill set paymentStatus = '" + b.getPaymentStatus() + "',paymentMethod = '"
				+ b.getPaymentMethod() + "', transactionId = '" + b.getTransactionId() + "',paidDate = '"
				+ b.getPaidDate() + "', totalBill = '" + b.getTotalBill() + "' where id = '" + b.getId() + "'";
		getSession().createQuery(query).executeUpdate();
		getSession().flush();
		return b;
	}
}
