package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IRoleDAO;
import com.sujan.model.Role;

@Repository(value = "roleDAO")
@Transactional
public class RoleDAO implements IRoleDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public Role save(Role t) {
		getSession().save(t);
		getSession().flush();
		return t;
	}

	@Override
	public List<Role> getAll() {
		List<Role> roles = getSession().createQuery("FROM role").list();
		return roles;
	}

	@Override
	public Role getById(int id) {
		return null;
	}

	@Override
	public Role update(Role t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
