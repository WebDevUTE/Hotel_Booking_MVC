package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "AdminDeleteHotel", value = "/deleteHotel")
public class AdminDeleteHotel extends HttpServlet {
	
	HotelDAO hotelDAO = new HotelDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/allHotels";
		int hotelId = Integer.parseInt(request.getParameter("hotelId"));
		Hotel hotel = hotelDAO.getHotelDetailById(hotelId);
		Set<Booking> currentBookings = hotel.getBookings();
		
		if(!currentBookings.isEmpty()) {
			request.setAttribute("message", true);
		} else {
			try {
				hotelDAO.deleteHotel(hotel);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
