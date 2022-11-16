package com.hotelbooking.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

import com.hotelbooking.dao.BookingDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.dao.UserDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.Hotel;
import com.hotelbooking.model.User;


@WebServlet(name = "BookingHotelServlet", value = "/bookingHotel")
public class BookingHotelServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/bookingForm.jsp";
		
		BookingDAO bookingDAO = new BookingDAO();
		HotelDAO hotelDAO = new HotelDAO();
		UserDAO userDAO = new UserDAO();
		
		// Get user's email from cookie
		String userEmailCookie = "";
		Cookie cookies[] = request.getCookies();
		if(cookies.length >= 2) {
			userEmailCookie = cookies[1].getValue();
		}
		System.out.println(userEmailCookie);
		
		// User booked hotel
		User user = userDAO.getUserByEmail(userEmailCookie);
		if(user == null) {
			url = "/public/login.jsp";
		}
		else {
			// get form value
			Date checkinDate = new Date();
			Date checkoutDate = new Date();
			int guest = Integer.parseInt(request.getParameter("guest"));
			int room = Integer.parseInt(request.getParameter("room"));

			// Hotel is booked
			int hotelId = Integer.parseInt(request.getParameter("hotelId"));
			Hotel hotel = hotelDAO.getHotelDetailById(hotelId);

			Booking newBooking = new Booking();
			newBooking.setCheckinDate(checkinDate);
			newBooking.setCheckoutDate(checkoutDate);
			newBooking.setRooms(room);
			newBooking.setGuest(guest);
			newBooking.setHotel(hotel);
			newBooking.setUser(user);

			try {
				bookingDAO.createBooking(newBooking);
				request.setAttribute("newBooking", newBooking);
				request.setAttribute("hotel", hotel);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
