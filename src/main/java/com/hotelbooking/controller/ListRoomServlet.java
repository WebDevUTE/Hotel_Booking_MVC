package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "ListRoomServlet", value = "/listRoom")
public class ListRoomServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/listRoom.jsp";
		
		loadListingRoom(request);
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public static void loadListingRoom(HttpServletRequest request) {
		HotelDAO hotelDAO = new HotelDAO();
		
		List<Hotel> listingHotels = null;
		String destination = request.getParameter("destination");
		if(destination == null) {
			listingHotels = hotelDAO.getAllHotel();
		} else if(destination != null) {
			listingHotels = hotelDAO.getHotelsByDestination(destination);
		}
		if(listingHotels == null) {
			request.setAttribute("message", true);
		}
		request.setAttribute("listingHotels", listingHotels);
	}

}
