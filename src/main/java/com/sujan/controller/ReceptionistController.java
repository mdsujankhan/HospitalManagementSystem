package com.sujan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sujan.controller.impl.IReceptionistController;
import com.sujan.model.Bill;
import com.sujan.model.CovidTestApplication;
import com.sujan.service.ReceptionistService;

@RestController
@RequestMapping(value = "receptionist")
public class ReceptionistController implements IReceptionistController {
	@Autowired
	ReceptionistService receptionistService;

	@Override
	public ModelAndView create() {
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
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int uid = Integer.valueOf(id);
		int test = receptionistService.delete(uid);
		List<CovidTestApplication> applicants = receptionistService.getAll();
		return new ModelAndView("receptionist/HomeReceptionist", "applicants", applicants);
	}

	@Override
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<CovidTestApplication> applicants = receptionistService.getAll();
		return new ModelAndView("receptionist/HomeReceptionist", "applicants", applicants);
	}

	// approve test and save bill
	@RequestMapping(value = "/updateApproveStatus")
	public ModelAndView updateAppointmentStatus(HttpServletRequest request) {
		String idd = request.getParameter("id");
		CovidTestApplication a = receptionistService.updateAppointmentStatus(idd);
		Bill b = receptionistService.saveBill(request);
		List<CovidTestApplication> applicants = receptionistService.getAll();
		return new ModelAndView("receptionist/HomeReceptionist", "applicants", applicants);
	}

	@RequestMapping(value = "/findApplication/{id}")
	public ModelAndView findApplication(@PathVariable String id) {
		CovidTestApplication a = receptionistService.findApplication(id);
		return new ModelAndView("receptionist/invoice", "a", a);
	}

	// Creating invoice
	@RequestMapping(value = "/createInvoice")
	public ModelAndView createInvoice(HttpServletRequest request, ModelMap map) {
		Bill bills = receptionistService.createInvoice(request);
		long d = bills.getDoctorFee();
		long p = bills.getPathologyBill();
		long m = bills.getMedicineAndOthers();
		long c = bills.getCavinRent();
		long t = d + p + m + c;
		map.addAttribute("total", t);
		return new ModelAndView("receptionist/invoiceFinal", "b", bills);
	}

	@RequestMapping(value = "/contactInput")
	public ModelAndView contactInput() {
		return new ModelAndView("receptionist/inputContact");
	}

	@RequestMapping(value = "/completePayment")
	public ModelAndView completePayment(HttpServletRequest request) {
		Bill b = receptionistService.completePayment(request);
		List<CovidTestApplication> applicants = receptionistService.getAll();
		return new ModelAndView("receptionist/HomeReceptionist", "applicants", applicants);
	}
}
