package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.CategoryDAO;
import com.hotelbooking.dao.DestinationDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Category;
import com.hotelbooking.model.Destination;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "AdminAddHotel", value = "/addHotel")
public class AdminAddHotel extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/add-room.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	
	HotelDAO hotelDAO = new HotelDAO();
	CategoryDAO categoryDAO = new CategoryDAO();
	DestinationDAO desDAO = new DestinationDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/allHotels";
		
		Hotel hotel = new Hotel();
		String hotelName = request.getParameter("hotelName");
		String hotelType = request.getParameter("hotelType");
		int rooms = Integer.parseInt(request.getParameter("rooms"));
		String destination = request.getParameter("destination");
		String address = request.getParameter("address");
		Long price = Long.parseLong(request.getParameter("price"));
		String description =  request.getParameter("description");
		
		Category category = categoryDAO.getCategoryFromName(hotelType);
		Destination des = desDAO.getDesFromName(destination);
		
		hotel.setHotelName(hotelName);
		hotel.setDescription(description);
		hotel.setDestination(des);
		hotel.setAddress(address);
		hotel.setPrice(price);
		hotel.setRooms(rooms);
		hotel.setAvailableRooms(rooms);
		hotel.setCategory(category);
		try {
			hotelDAO.addHotel(hotel);
		} catch(Exception e) {
			e.printStackTrace();
		}
		getServletContext()
		.getRequestDispatcher(url)
		.forward(request, response);
	}

}
