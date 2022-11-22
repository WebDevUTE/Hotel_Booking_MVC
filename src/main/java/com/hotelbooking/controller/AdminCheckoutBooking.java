package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.Hotel;


@WebServlet(name = "AdminCheckoutBooking", value = "/checkout")
public class AdminCheckoutBooking extends HttpServlet {
	
	BookingDAO bookingDAO = new BookingDAO();
	HotelDAO hotelDAO = new HotelDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/allBooking";
		int bookingId = Integer.parseInt(request.getParameter("bookingId"));
		Booking booking = bookingDAO.getBookingById(bookingId);
		int bookingRooms = booking.getRooms();
		Hotel hotel = booking.getHotel();
				
		try {
			bookingDAO.checkoutBooking(booking);
			hotel.setAvailableRooms(hotel.getAvailableRooms() + bookingRooms);
			hotelDAO.updateHotel(hotel);
		} catch (Exception e) {
			e.printStackTrace();
		}
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	

}
