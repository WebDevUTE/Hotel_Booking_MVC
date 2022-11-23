package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Hotel;

@WebServlet( name = "AdminEditHotel", value = "/editHotel")
public class AdminEditHotel extends HttpServlet {
	
	HotelDAO hotelDAO = new HotelDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/edit-room.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hotelId = Integer.parseInt(request.getParameter("hotelId"));
		Hotel toUpdateHotel = hotelDAO.getHotelDetailById(hotelId);
		// form inputs
//		String q = request.getP
	}

}
