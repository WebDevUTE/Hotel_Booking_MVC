package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.BookingDAO;
import com.hotelbooking.dao.BookingUserInfoDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.BookingUserInfo;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "AdminPageServlet", value = "/admin")
public class AdminPageServlet extends HttpServlet {

	BookingDAO bookingDAO = new BookingDAO();
	HotelDAO hotelDAO = new HotelDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/index.jsp";
		int totalBooking = 0;
		if(bookingDAO.getAllBooking() != null ) {
			totalBooking = bookingDAO.getAllBooking().size();
		}
		int availableRooms = getAvailableRooms();
		List<BookingUserInfo> allBookings = getAllBookings();
		
		Map<String, Long> hotels = hotelDAO.getNumberOfEachHotel();
		Map<Integer, Long> hotelss = bookingDAO.getRoomOfEachMonth();
		request.setAttribute("data", hotels);
		request.setAttribute("getMonth", hotelss);
		request.setAttribute("totalBooking", totalBooking);
		request.setAttribute("available", availableRooms);
		request.setAttribute("allBookings", allBookings);
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public int getAvailableRooms() {
		List<Hotel> allHotels = hotelDAO.getAllHotel();
		int availableRooms = 0;
		for(Hotel h : allHotels) {
			availableRooms += h.getAvailableRooms();
		}
		return availableRooms;
	}

	BookingUserInfoDAO bookingUserInfoDAO = new BookingUserInfoDAO();
	public List<BookingUserInfo> getAllBookings() {
		List<BookingUserInfo> allBookingInfos = bookingUserInfoDAO.getAllBookingInfo();
		return allBookingInfos;
	}

}
