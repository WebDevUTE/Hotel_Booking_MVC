package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.HotelDAO;
import com.hotelbooking.model.Hotel;

@WebServlet(name = "HotelDetailServlet", value = "/hotelDetails")
public class HotelDetailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/roomDetails.jsp";
		HotelDAO hotelDAO = new HotelDAO();
		
		int hotelId = Integer.parseInt(request.getParameter("hotelId"));
		Hotel hotelDetail = hotelDAO.getHotelDetailById(hotelId);
		
		request.setAttribute("hotelDetail", hotelDetail);
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
