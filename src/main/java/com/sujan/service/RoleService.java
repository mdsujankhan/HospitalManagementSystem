package com.sujan.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.RoleDAO;
import com.sujan.model.Role;
import com.sujan.service.impl.IRoleService;

@Service(value = "roleService")
public class RoleService implements IRoleService {
	@Autowired
	RoleDAO roleDAO;

	@Override
	public Role save(HttpServletRequest request) {
		Role role = new Role();
		role.setCode(request.getParameter("code"));
		role.setName(request.getParameter("name"));
		role.setDescription(request.getParameter("description"));
		return roleDAO.save(role);
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
		return roleDAO.getAll();
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
