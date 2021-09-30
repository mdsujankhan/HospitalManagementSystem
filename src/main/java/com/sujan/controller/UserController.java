package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IUserController;
import com.sujan.model.Role;
import com.sujan.model.User;
import com.sujan.service.UserService;

@RestController
@RequestMapping(value = "user")
public class UserController implements IUserController {
	@Autowired
	private UserService userService;

	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView save(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView edit(String id) {
		// TODO Auto-generated method stub
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
	@GetMapping("/login")
	public ModelAndView getAll() {
		List<Role> roles = userService.getAllRoles();
		return new ModelAndView("patients/userLogin", "roles", roles);
	}

	@RequestMapping(value = "/processlogin", method = RequestMethod.POST)
	public ModelAndView processlogin(Model model, HttpServletRequest request) {
		String role = request.getParameter("role"); // model.addAllAttributes("re",request);

		boolean result = userService.processlogin(request);
		if (result && role.equalsIgnoreCase("admin")) {
			return new ModelAndView("redirect:/admin/home", "user", request);
		} else if (result && role.equalsIgnoreCase("Doctor")) {
			return new ModelAndView("redirect:/doctor/home", "user", request);
		} else if (result && role.equalsIgnoreCase("Receptionist")) {
			return new ModelAndView("redirect:/receptionist/home", "user", request);
		} else if (result && role.equalsIgnoreCase("Pathologist")) {
			return new ModelAndView("redirect:/pathologist/home", "user", request);
		} else if (result && role.equalsIgnoreCase("Patient")) {
			return new ModelAndView("redirect:/patient/home", "user", request);
		} else {
			return new ModelAndView("redirect:login");
		}
	}

	// Second Login effective Method.
	@RequestMapping(value = "/processlogin2", method = RequestMethod.POST)
	public ModelAndView processlogin2(Model model, HttpServletRequest request) {
		String role = request.getParameter("role");

		User result = userService.processlogin2(request);
		model.addAttribute("user", result);

		if (result != null && role.equalsIgnoreCase("admin")) {
			return new ModelAndView("redirect:/admin/home", "user", request);
		} else if (result != null && role.equalsIgnoreCase("Doctor")) {
			return new ModelAndView("redirect:/doctor/home", "user", request);
		} else if (result != null && role.equalsIgnoreCase("Receptionist")) {
			return new ModelAndView("redirect:/receptionist/home", "user", request);
		} else if (result != null && role.equalsIgnoreCase("Pathologist")) {
			return new ModelAndView("redirect:/pathologist/home", "user", request);
		} else if (result != null && role.equalsIgnoreCase("Patient")) {
			return new ModelAndView("redirect:/patient/home", "user", request);
		} else {
			return new ModelAndView("redirect:login");
		}
	}
}
