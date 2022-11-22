package com.hotelbooking.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotelbooking.dao.BookingDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.Hotel;
import com.hotelbooking.model.User;

@WebServlet(name = "/BookingFormServlet", value = "/bookingForm")
public class BookingFormServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/bookingForm.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/public/roomDetails.jsp";
		
		BookingDAO bookingDAO = new BookingDAO();
		HotelDAO hotelDAO = new HotelDAO();
		
		// Get user's email from session
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");
		
		// User booked hotel
		if(user == null) {
			url = "/public/login.jsp";
		}
		else {
			// get form value
			Date checkinDate = null;
			Date checkoutDate = null;
			try {
				checkinDate = this.StringtoDate(request.getParameter("checkin"));
				checkoutDate = this.StringtoDate(request.getParameter("checkout"));
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
			int guest = Integer.parseInt(request.getParameter("guest"));
			int room = Integer.parseInt(request.getParameter("room"));
			
			// Hotel is booked
			int hotelId = Integer.parseInt(request.getParameter("hotelId"));
			Hotel hotel = hotelDAO.getHotelDetailById(hotelId);
			int availableRooms = hotel.getAvailableRooms() - room;
			hotel.setAvailableRooms(availableRooms);
			long total = hotel.getPrice() * room * getDateDif(checkoutDate, checkinDate);

			Booking newBooking = new Booking();
			newBooking.setCheckinDate(checkinDate);
			newBooking.setCheckoutDate(checkoutDate);
			newBooking.setRooms(room);
			newBooking.setGuest(guest);
			newBooking.setTotal(total);
			newBooking.setHotel(hotel);
			newBooking.setUser(user);

			try {
				bookingDAO.createBooking(newBooking);
				hotelDAO.updateHotel(hotel);
				url = "/public/bookingForm.jsp";
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
	
	public  Date StringtoDate(String date) throws ParseException {
		SimpleDateFormat fomartter = new SimpleDateFormat("yyyy-MM-dd");
		Date parsedDate = fomartter.parse(date);
		
		return parsedDate;
	}
	
	public int getDateDif(Date d1, Date d2) {
		long dif_in_time = d2.getTime() - d1.getTime();
		
		return (int) Math.abs(( dif_in_time / (1000*60*60*24)) % 365);
	}

}
