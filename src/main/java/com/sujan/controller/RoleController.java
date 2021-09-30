package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IRoleController;
import com.sujan.model.Role;
import com.sujan.service.RoleService;

@RestController
@RequestMapping(value = "role")
public class RoleController implements IRoleController {
	@Autowired
	RoleService roleService;

	@Override
	@RequestMapping(value = "/addRole")
	public ModelAndView create() {
		return new ModelAndView("admin/addRole");
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Role role = roleService.save(request);
		return new ModelAndView("/admin/addRole");
	}

	@Override

	public ModelAndView edit(String id) {
		return null;
	}

	@Override
	public ModelAndView update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@GetMapping("/getAll")
	public ModelAndView getAll() {
		List<Role> roles = roleService.getAll();
		return new ModelAndView("/patients/userLogin", "roles", roles);
	}

}
