package com.hotelbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.hotelbooking.dao.UserDAO;
import com.hotelbooking.model.User;


@WebServlet(name= "SignupServlet", value = "/signup")
public class SignupServlet extends HttpServlet {
      
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/signup.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/login.jsp";
		String userName = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String salt = BCrypt.gensalt(12);
		String hashPassword = BCrypt.hashpw(password, salt);
		
		UserDAO userDAO = new UserDAO();
		
		User existUser = userDAO.getUserByEmail(email);
		if(existUser != null) {
			throw new Error("This email is already taken!");
		}
		
		User user = new User();
		user.setUserName(userName);
		user.setEmail(email);
		user.setPassword(hashPassword);
		
		try { 
			userDAO.createUser(user);
			request.setAttribute("user", user);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}

}
