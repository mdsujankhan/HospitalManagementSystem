package com.sujan.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sujan.dao.DoctorDAO;
import com.sujan.model.Appointment;
import com.sujan.model.Bill;
import com.sujan.model.Prescription;
import com.sujan.service.impl.IDoctorService;

@Service(value = "doctortService")
public class DoctorService implements IDoctorService {
	@Autowired
	DoctorDAO doctorDAO;

	@Override
	public Appointment save(HttpServletRequest request) {
		return null;
	}

	@Override
	public Appointment edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Appointment update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Appointment> getAll() {
		return doctorDAO.getAll();
	}

	@Override
	public int delete(int id) {
		int status = doctorDAO.delete(id);
		return status;
	}

	public List<Appointment> getNewAppointments() {
		return doctorDAO.getNewAppointments();
	}

	public Appointment updateAppointmentStatus(String id) {
		Appointment a = new Appointment();
		a.setId(Integer.valueOf(id));
		a.setStatus("seen");
		return doctorDAO.updateAppointmentStatus(a);
	}

	public Appointment createPrescription(String id) {
		int aid = Integer.valueOf(id);
		return doctorDAO.createPrescription(aid);
	}

	public Prescription savePrescription(HttpServletRequest request) {
		java.util.Date utilPackageDate = new java.util.Date();
		java.sql.Date sqlPackageDate = new java.sql.Date(utilPackageDate.getTime());

		String test1 = request.getParameter("test1");
		String test2 = request.getParameter("test2");
		String test3 = request.getParameter("test3");
		String test4 = request.getParameter("test4");
		String test5 = request.getParameter("test5");
		String test6 = request.getParameter("test6");
		String test7 = request.getParameter("test7");
		String test8 = request.getParameter("test8");

		String medicine1 = request.getParameter("medicine1");
		String medicine2 = request.getParameter("medicine2");
		String medicine3 = request.getParameter("medicine3");
		String medicine4 = request.getParameter("medicine4");
		String medicine5 = request.getParameter("medicine5");
		String medicine6 = request.getParameter("medicine6");
		String medicine7 = request.getParameter("medicine7");
		String medicine8 = request.getParameter("medicine8");
		String medicine9 = request.getParameter("medicine9");
		String medicine10 = request.getParameter("medicine10");

		String medicine1_time = "";
		String medicine2_time = "";
		String medicine3_time = "";
		String medicine4_time = "";
		String medicine5_time = "";
		String medicine6_time = "";
		String medicine7_time = "";
		String medicine8_time = "";
		String medicine9_time = "";
		String medicine10_time = "";

		String m1_time_1 = request.getParameter("M1");
		String m1_time_2 = request.getParameter("N1");
		String m1_time_3 = request.getParameter("E1");
		String m1_time_4 = request.getParameter("B1");
		String m1_time_5 = request.getParameter("A1");

		if (m1_time_1 != null) {
			medicine1_time += m1_time_1 + " ";
		}
		if (m1_time_2 != null) {
			medicine1_time += m1_time_2 + " ";
		}
		if (m1_time_3 != null) {
			medicine1_time += m1_time_3 + " ";
		}
		if (m1_time_4 != null) {
			medicine1_time += m1_time_4 + " ";
		}
		if (m1_time_5 != null) {
			medicine1_time += m1_time_5;
		}

		String m2_time_1 = request.getParameter("M2");
		String m2_time_2 = request.getParameter("N2");
		String m2_time_3 = request.getParameter("E2");
		String m2_time_4 = request.getParameter("B2");
		String m2_time_5 = request.getParameter("A2");

		if (m2_time_1 != null) {
			medicine2_time += m2_time_1 + " ";
		}
		if (m2_time_2 != null) {
			medicine2_time += m2_time_2 + " ";
		}
		if (m2_time_3 != null) {
			medicine2_time += m2_time_3 + " ";
		}
		if (m2_time_4 != null) {
			medicine2_time += m2_time_4 + " ";
		}
		if (m2_time_5 != null) {
			medicine2_time += m2_time_5;
		}

		String m3_time_1 = request.getParameter("M3");
		String m3_time_2 = request.getParameter("N3");
		String m3_time_3 = request.getParameter("E3");
		String m3_time_4 = request.getParameter("B3");
		String m3_time_5 = request.getParameter("A3");

		if (m3_time_1 != null) {
			medicine3_time += m3_time_1 + " ";
		}
		if (m3_time_2 != null) {
			medicine3_time += m3_time_2 + " ";
		}
		if (m3_time_3 != null) {
			medicine3_time += m3_time_3 + " ";
		}
		if (m3_time_4 != null) {
			medicine3_time += m3_time_4 + " ";
		}
		if (m3_time_5 != null) {
			medicine3_time += m3_time_5;
		}

		String m4_time_1 = request.getParameter("M4");
		String m4_time_2 = request.getParameter("N4");
		String m4_time_3 = request.getParameter("E4");
		String m4_time_4 = request.getParameter("B4");
		String m4_time_5 = request.getParameter("A4");

		if (m4_time_1 != null) {
			medicine4_time += m4_time_1 + " ";
		}
		if (m4_time_2 != null) {
			medicine4_time += m4_time_2 + " ";
		}
		if (m4_time_3 != null) {
			medicine4_time += m4_time_3 + " ";
		}
		if (m4_time_4 != null) {
			medicine4_time += m4_time_4 + " ";
		}
		if (m4_time_5 != null) {
			medicine4_time += m4_time_5;
		}

		String m5_time_1 = request.getParameter("M5");
		String m5_time_2 = request.getParameter("N5");
		String m5_time_3 = request.getParameter("E5");
		String m5_time_4 = request.getParameter("B5");
		String m5_time_5 = request.getParameter("A5");

		if (m5_time_1 != null) {
			medicine5_time += m5_time_1 + " ";
		}
		if (m5_time_2 != null) {
			medicine5_time += m5_time_2 + " ";
		}
		if (m5_time_3 != null) {
			medicine5_time += m5_time_3 + " ";
		}
		if (m5_time_4 != null) {
			medicine5_time += m5_time_4 + " ";
		}
		if (m5_time_5 != null) {
			medicine5_time += m5_time_5;
		}

		String m6_time_1 = request.getParameter("M6");
		String m6_time_2 = request.getParameter("N6");
		String m6_time_3 = request.getParameter("E6");
		String m6_time_4 = request.getParameter("B6");
		String m6_time_5 = request.getParameter("A6");

		if (m6_time_1 != null) {
			medicine6_time += m6_time_1 + " ";
		}
		if (m6_time_2 != null) {
			medicine6_time += m6_time_2 + " ";
		}
		if (m6_time_3 != null) {
			medicine6_time += m6_time_3 + " ";
		}
		if (m6_time_4 != null) {
			medicine6_time += m6_time_4 + " ";
		}
		if (m6_time_5 != null) {
			medicine6_time += m6_time_5;
		}

		String m7_time_1 = request.getParameter("M7");
		String m7_time_2 = request.getParameter("N7");
		String m7_time_3 = request.getParameter("E7");
		String m7_time_4 = request.getParameter("B7");
		String m7_time_5 = request.getParameter("A7");

		if (m7_time_1 != null) {
			medicine7_time += m7_time_1 + " ";
		}
		if (m7_time_2 != null) {
			medicine7_time += m7_time_2 + " ";
		}
		if (m7_time_3 != null) {
			medicine7_time += m7_time_3 + " ";
		}
		if (m7_time_4 != null) {
			medicine7_time += m7_time_4 + " ";
		}
		if (m7_time_5 != null) {
			medicine7_time += m7_time_5;
		}

		String m8_time_1 = request.getParameter("M8");
		String m8_time_2 = request.getParameter("N8");
		String m8_time_3 = request.getParameter("E8");
		String m8_time_4 = request.getParameter("B8");
		String m8_time_5 = request.getParameter("A8");

		if (m8_time_1 != null) {
			medicine8_time += m8_time_1 + " ";
		}
		if (m8_time_2 != null) {
			medicine8_time += m8_time_2 + " ";
		}
		if (m8_time_3 != null) {
			medicine8_time += m8_time_3 + " ";
		}
		if (m8_time_4 != null) {
			medicine8_time += m8_time_4 + " ";
		}
		if (m8_time_5 != null) {
			medicine8_time += m8_time_5;
		}

		String m9_time_1 = request.getParameter("M9");
		String m9_time_2 = request.getParameter("N9");
		String m9_time_3 = request.getParameter("E9");
		String m9_time_4 = request.getParameter("B9");
		String m9_time_5 = request.getParameter("A9");

		if (m9_time_1 != null) {
			medicine9_time += m9_time_1 + " ";
		}
		if (m9_time_2 != null) {
			medicine9_time += m9_time_2 + " ";
		}
		if (m9_time_3 != null) {
			medicine9_time += m9_time_3 + " ";
		}
		if (m9_time_4 != null) {
			medicine9_time += m9_time_4 + " ";
		}
		if (m9_time_5 != null) {
			medicine9_time += m9_time_5;
		}

		String m10_time_1 = request.getParameter("M10");
		String m10_time_2 = request.getParameter("N10");
		String m10_time_3 = request.getParameter("E10");
		String m10_time_4 = request.getParameter("B10");
		String m10_time_5 = request.getParameter("A10");

		if (m10_time_1 != null) {
			medicine10_time += m10_time_1 + " ";
		}
		if (m10_time_2 != null) {
			medicine10_time += m10_time_2 + " ";
		}
		if (m10_time_3 != null) {
			medicine10_time += m10_time_3 + " ";
		}
		if (m10_time_4 != null) {
			medicine10_time += m10_time_4 + " ";
		}
		if (m10_time_5 != null) {
			medicine10_time += m10_time_5;
		}

		String tests = test1 + " " + test2 + " " + test3 + " " + test4 + " " + test5 + " " + test6 + " " + test7 + " "
				+ test8;

		Prescription p = new Prescription();
		p.setCode(request.getParameter("code"));
		p.setName(request.getParameter("name"));
		p.setGender(request.getParameter("gender"));
		p.setContact(request.getParameter("contact"));
		p.setEmail(request.getParameter("email"));
		p.setTests(tests);

		p.setTest1(test1);
		p.setTest2(test2);
		p.setTest3(test3);
		p.setTest4(test4);
		p.setTest5(test5);
		p.setTest6(test6);
		p.setTest7(test7);
		p.setTest8(test8);

		p.setTodayDate(sqlPackageDate);
		p.setMedicine_1(medicine1);
		p.setMedicine_2(medicine2);
		p.setMedicine_3(medicine3);
		p.setMedicine_4(medicine4);
		p.setMedicine_5(medicine5);
		p.setMedicine_6(medicine6);
		p.setMedicine_7(medicine7);
		p.setMedicine_8(medicine8);
		p.setMedicine_9(medicine9);
		p.setMedicine_10(medicine10);

		p.setMedicine_1_time(medicine1_time);
		p.setMedicine_2_time(medicine2_time);
		p.setMedicine_3_time(medicine3_time);
		p.setMedicine_4_time(medicine4_time);
		p.setMedicine_5_time(medicine5_time);
		p.setMedicine_6_time(medicine6_time);
		p.setMedicine_7_time(medicine7_time);
		p.setMedicine_8_time(medicine8_time);
		p.setMedicine_9_time(medicine9_time);
		p.setMedicine_10_time(medicine10_time);

		return doctorDAO.savePrescription(p);
	}

	public Appointment updateTestStatus(HttpServletRequest request) {
		int id = Integer.valueOf(request.getParameter("id"));
		Appointment a = new Appointment();
		a.setId(id);
		a.setTakeUpStatus("Yes");
		return doctorDAO.updateTestStatus(a);
	}

	public Bill saveBill(HttpServletRequest request) {
		int days = Integer.valueOf(request.getParameter("days"));
		DateFormat dateFormat = new SimpleDateFormat("MMMM");
		Date date = new Date();
		String month = dateFormat.format(date).toString();

		DateFormat dateFormatY = new SimpleDateFormat("YYYY");
		String year = dateFormatY.format(date).toString();

		Bill b = new Bill();
		b.setName(request.getParameter("name"));
		b.setGender(request.getParameter("gender"));
		b.setAge(Integer.valueOf(request.getParameter("age")));
		b.setEmail(request.getParameter("email"));
		b.setContact(request.getParameter("contact"));
		b.setPaymentStatus("due");
		b.setServices("Doctor Fee");
		b.setDoctorFee(Long.valueOf(500));
		b.setCavinRent(days * 1000);
		b.setMonth(month);
		b.setYear(year);
		b.setTotalBill(Long.valueOf(500) + days * 1000);
		return doctorDAO.saveBill(b);
	}
}
