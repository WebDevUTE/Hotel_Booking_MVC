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

@WebServlet(name = "AdminAddHotel", value = "/addHotel")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
		)
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
		int rooms = Integer.parseInt(request.getParameter("rooms"));
		System.out.println("sdfffffffff " + request.getParameter("destination"));

		Category category = categoryDAO.getCategoryFromName(request.getParameter("hotelType"));
		Destination des = desDAO.getDesFromName(request.getParameter("destination"));

		hotel.setHotelName(request.getParameter("hotelName"));
		hotel.setDescription(request.getParameter("description"));
		hotel.setDestination(des);
		hotel.setAddress(request.getParameter("address"));
		hotel.setPrice(Long.parseLong(request.getParameter("price")));
		hotel.setRooms(rooms);
		hotel.setAvailableRooms(rooms);
		hotel.setCategory(category);
		
		// Handle file
		Part part = request.getPart("img");
		if(part.getSize() >0) {
			String fileName = part.getName();
			Map result = HandleFileUpload.uploadImage(fileName, "hotel_booking/hotels", part);
			String imageUrl = String.valueOf(result.get("url"));
			if(result == null) {
				throw new RuntimeException("Loi upload");
			} else {
				hotel.setImageUrl(imageUrl);
			}
		}
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
