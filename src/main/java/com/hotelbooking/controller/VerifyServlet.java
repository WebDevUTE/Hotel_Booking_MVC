package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotelbooking.dao.UserDAO;
import com.hotelbooking.model.User;

@WebServlet(name = "VerifyServlet", value = "/verify")
public class VerifyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/verify.jsp";
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	UserDAO userDAO = new UserDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/verify";
		String message = "";
		String otp = request.getParameter("otp");
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("newUser");
		if(otp.equals(user.getOtpCode())) {
			user.setIsActivate(true);
			user.setOtpCode(null);
			userDAO.updateUser(user);
			url = "/login";
			response.sendRedirect(request.getContextPath() + url);
		} else {
			message = "Incorrect otp code. Please enter again!";
			url = "/verify";
			request.setAttribute("message", true);
			request.getRequestDispatcher("/public/verify.jsp").forward(request, response);
		}
	}

}
