package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Hotel; 

import java.util.List;

	
@WebServlet(name = "HomeServlet", urlPatterns = {"", "/home"})
public class HomeServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/index.jsp";
		loadHomePage(request);
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	
	static void loadHomePage(HttpServletRequest request) {
		HotelDAO hotelDAO = new HotelDAO();
		
		List<Hotel> londonHotels;
		londonHotels = hotelDAO.getHotelsByDestination(1);
		// Set request
		request.setAttribute("londonHotels", londonHotels);
		
		List<Hotel> newyorkHotels;
		newyorkHotels = hotelDAO.getHotelsByDestination(2);
		// Set request
		request.setAttribute("newyorkHotels", newyorkHotels);
		
		List<Hotel> parisHotels;
		parisHotels = hotelDAO.getHotelsByDestination(3);
		// Set request
		request.setAttribute("parisHotels", parisHotels);
	}

}
