package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.hotelbooking.model.User;
import com.hotelbooking.dao.UserDAO;
import static com.hotelbooking.controller.HomeServlet.loadHomePage;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/login.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/";
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDAO userDAO = new UserDAO();
		User user = userDAO.getUserByEmail(email);
		
		boolean isMatchPassword = BCrypt.checkpw(password, user.getPassword());
		System.out.println(isMatchPassword);
		if(!isMatchPassword) {
			url = "/public/login.jsp";
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			getServletContext()
			.getRequestDispatcher("/home")
			.forward(request, response);
		}
		
	}

}
