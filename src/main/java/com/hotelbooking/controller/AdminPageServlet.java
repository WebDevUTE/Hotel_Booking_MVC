package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingDAO;

@WebServlet(name = "AdminPageServlet", value = "/admin")
public class AdminPageServlet extends HttpServlet {

	BookingDAO bookingDAO = new BookingDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/index.jsp";
		int totalBooking = bookingDAO.getAllBooking().size();
		
		request.setAttribute("totalBooking", totalBooking);
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
