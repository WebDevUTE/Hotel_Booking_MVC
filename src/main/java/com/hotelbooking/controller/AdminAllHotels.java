package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "AdminAllHotels", value = "/allHotels")
public class AdminAllHotels extends HttpServlet {
	
	HotelDAO hotelDAO = new HotelDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/all-hotel.jsp";
		List<Hotel> allHotels = hotelDAO.getAllHotel();
		
		request.setAttribute("allHotels", allHotels);
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
