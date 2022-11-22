package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingUserInfoDAO;
import com.hotelbooking.model.BookingUserInfo;

@WebServlet(name = "AdminAllBooking", value = "/allBooking")
public class AdminAllBooking extends HttpServlet {
	
	BookingUserInfoDAO bookingUserInfoDAO = new BookingUserInfoDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/all-booking.jsp";
		List<BookingUserInfo> allBookingInfos = bookingUserInfoDAO.getAllBookingInfo();
		request.setAttribute("allBookings", allBookingInfos);
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
