package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotelbooking.dao.BookingUserInfoDAO;
import com.hotelbooking.model.BookingUserInfo;
import com.hotelbooking.model.User;

@WebServlet(name = "BookingHistory", value = "/bookingHistory")
public class BookingHistory extends HttpServlet {

	BookingUserInfoDAO bookingUserInfoDAO = new BookingUserInfoDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/bookingHistory.jsp";
		
		// get user from session
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		List<BookingUserInfo> bookingHistory = bookingUserInfoDAO.getUserBookingHistory(user);
		request.setAttribute("bookingHistory", bookingHistory);
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
