package com.sujan.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sujan.dao.impl.IUserDAO;
import com.sujan.model.Role;
import com.sujan.model.User;

@Repository(value = "userDAO")
@Transactional
public class UserDAO implements IUserDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	@Override
	public User save(User t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(User t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean processlogin(User u) {
		String sql = "from user where user_name = '" + u.getUserName() + "'";
		List<User> uses = getSession().createQuery(sql).list();
		boolean b = false;
		for (int i = 0; i < uses.size(); i++) {
			User user = uses.get(i);

			if (user.getUserName().equals(u.getUserName()) && user.getPassword().equals(u.getPassword())
					&& user.getRole().equals(u.getRole())) {
				b = true;
				break;
			} else {

				b = false;
			}
		}
		return b;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Role> getAllRoles() {
		List<Role> roles = getSession().createQuery("FROM role").list();
		return roles;
	}

	// Second Login
	public User processlogin2(User u) {
		String sql = "from user where user_name = '" + u.getUserName() + "'";
		List<User> uses = getSession().createQuery(sql).list();
		User user;
		for (int i = 0; i < uses.size(); i++) {
			user = uses.get(i);

			if (user.getUserName().equals(u.getUserName()) && user.getPassword().equals(u.getPassword())
					&& user.getRole().equals(u.getRole())) {
				return user;
			} else {

				return null;
			}
		}
		return null;
	}

}
