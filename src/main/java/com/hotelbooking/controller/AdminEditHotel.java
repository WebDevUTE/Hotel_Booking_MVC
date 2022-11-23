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

@WebServlet( name = "AdminEditHotel", value = "/editHotel")
public class AdminEditHotel extends HttpServlet {
	
	HotelDAO hotelDAO = new HotelDAO();
	CategoryDAO categoryDAO = new CategoryDAO();
	DestinationDAO desDAO = new DestinationDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/edit-room.jsp";
		int hotelId = Integer.parseInt(request.getParameter("hotelId"));
		Hotel toUpdateHotel = hotelDAO.getHotelDetailById(hotelId);
		
		request.setAttribute("hotel", toUpdateHotel);
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/allHotels";
		
		int hotelId = Integer.parseInt(request.getParameter("hotelId"));
		Hotel toUpdateHotel = hotelDAO.getHotelDetailById(hotelId);
		// form inputs
		String hotelName = request.getParameter("hotelName");
		String hotelType = request.getParameter("hotelType");
		int rooms = Integer.parseInt(request.getParameter("rooms"));
		String destination = request.getParameter("destination");
		String address = request.getParameter("address");
		Long price = Long.parseLong(request.getParameter("price"));
		String description =  request.getParameter("description");
		
		Category category = categoryDAO.getCategoryFromName(hotelType);
		Destination des = desDAO.getDesFromName(destination);
		// update hotel
		toUpdateHotel.setHotelName(hotelName);
		toUpdateHotel.setDescription(description);
		toUpdateHotel.setDestination(des);
		toUpdateHotel.setAddress(address);
		toUpdateHotel.setPrice(price);
		toUpdateHotel.setRooms(rooms);
		toUpdateHotel.setAvailableRooms(rooms);
		toUpdateHotel.setCategory(category);
		try {
			hotelDAO.updateHotel(toUpdateHotel);
		} catch(Exception e) {
			e.printStackTrace();
		}
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
