package com.sujan.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.UserDAO;
import com.sujan.model.Role;
import com.sujan.model.User;
import com.sujan.service.impl.IUserService;

@Service(value = "userService")
public class UserService implements IUserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public User save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Boolean processlogin(HttpServletRequest request) {
		User u = new User();
		u.setUserName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setRole(request.getParameter("role"));
		return userDAO.processlogin(u);
	}

	public List<Role> getAllRoles() {
		return userDAO.getAllRoles();
	}

	// Second Login
	public User processlogin2(HttpServletRequest request) {
		User u = new User();
		u.setUserName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setRole(request.getParameter("role"));
		return userDAO.processlogin2(u);
	}

}
