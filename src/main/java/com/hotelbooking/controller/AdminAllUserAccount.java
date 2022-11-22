package com.hotelbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelbooking.dao.UserDAO;
import com.hotelbooking.model.User;

@WebServlet(name = "AdminAllUserAccount", value = "/allUserAccount")
public class AdminAllUserAccount extends HttpServlet {
	
	UserDAO userDAO = new UserDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin_page/all-customer.jsp";
		List<User> allUsers = userDAO.getAllUser();
		request.setAttribute("allUsers", allUsers);
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
