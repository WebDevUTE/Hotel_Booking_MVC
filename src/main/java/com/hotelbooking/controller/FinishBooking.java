package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingDAO;
import com.hotelbooking.dao.BookingUserInfoDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.BookingUserInfo;

@WebServlet(name = "FinishBooking", value = "/finishBooking")
public class FinishBooking extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	BookingDAO bookingDAO = new BookingDAO();
	BookingUserInfoDAO bookingUserInfoDAO = new BookingUserInfoDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/bookingForm.jsp";
		// params
		int bookingId = Integer.parseInt(request.getParameter("bookingId"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		Booking booking = bookingDAO.getBookingById(bookingId);
		
		BookingUserInfo bookingUserInfo = new BookingUserInfo();
		bookingUserInfo.setName(firstName + " " + lastName );
		bookingUserInfo.setEmail(email);
		bookingUserInfo.setPhone(phone);
		bookingUserInfo.setBooking(booking);
		try {
			bookingUserInfoDAO.newBookingUserInfo(bookingUserInfo);
			url = "/public/successBooking.jsp";
			request.setAttribute("bookingInfo", bookingUserInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
