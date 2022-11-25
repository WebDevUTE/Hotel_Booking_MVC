package com.hotelbooking.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.hotelbooking.dao.CategoryDAO;
import com.hotelbooking.dao.DestinationDAO;
import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.email_utils.HandleFileUpload;
import com.hotelbooking.model.Category;
import com.hotelbooking.model.Destination;
import com.hotelbooking.model.Hotel;

@WebServlet( name = "AdminEditHotel", value = "/editHotel")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
		)
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
		int rooms = Integer.parseInt(request.getParameter("rooms"));
		
		Category category = categoryDAO.getCategoryFromName(request.getParameter("hotelType"));
		Destination des = desDAO.getDesFromName(request.getParameter("destination"));
		// update hotel
		toUpdateHotel.setHotelName(request.getParameter("hotelName"));
		toUpdateHotel.setDescription(request.getParameter("description"));
		toUpdateHotel.setDestination(des);
		toUpdateHotel.setAddress(request.getParameter("address"));
		toUpdateHotel.setPrice(Long.parseLong(request.getParameter("price")));
		toUpdateHotel.setRooms(rooms);
		toUpdateHotel.setAvailableRooms(rooms);
		toUpdateHotel.setCategory(category);
		
		// Handle file
		Part part = request.getPart("img");
		if(part.getSize() >0) {
			String fileName = part.getName();
			Map result = HandleFileUpload.uploadImage(fileName, "hotel_booking/hotels", part);
			String imageUrl = String.valueOf(result.get("url"));
			if(result == null) {
				throw new RuntimeException("Loi upload");
			} else {
				toUpdateHotel.setImageUrl(imageUrl);
			}
		}
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
