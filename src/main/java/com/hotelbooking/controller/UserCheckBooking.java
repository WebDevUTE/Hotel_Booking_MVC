package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingUserInfoDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.BookingUserInfo;

@WebServlet(name = "CheckBookingHistory", value = "/checkBooking")
public class UserCheckBooking extends HttpServlet {
	
	BookingUserInfoDAO bInfoDAO = new BookingUserInfoDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/userCheckBooking.jsp";
		String infoId = request.getParameter("bookingInfoId");
		int bookingInfoId = Integer.parseInt(infoId);
		
		BookingUserInfo bookingInfo = bInfoDAO.getBookingInfoById(bookingInfoId); 
		Booking booking = bookingInfo.getBooking();
		
		request.setAttribute("bookingInfo", bookingInfo);
		request.setAttribute("booking", booking);
	
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
