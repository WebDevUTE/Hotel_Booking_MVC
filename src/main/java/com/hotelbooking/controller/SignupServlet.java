package com.hotelbooking.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.hotelbooking.dao.UserDAO;
import com.hotelbooking.email_utils.EmailUtility;
import com.hotelbooking.model.User;

import net.bytebuddy.implementation.bytecode.Throw;


@WebServlet(name= "SignupServlet", value = "/signup")
public class SignupServlet extends HttpServlet {
	
	private String host;
	private String port;
	private String username;
	private String mailPassword;
	
	public void init() {
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		username = context.getInitParameter("email");
		mailPassword = context.getInitParameter("pass");
	}
      
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/public/signup.jsp";
		getServletContext()
				.getRequestDispatcher(url)
				.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/verify";
		String userName = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String randomOtp = EmailUtility.randomOtp();
		String salt = BCrypt.gensalt(12);
		String hashPassword = BCrypt.hashpw(password, salt);
		
		UserDAO userDAO = new UserDAO();
		
		User existUser = userDAO.getUserByEmail(email);
		if(existUser != null) {
			request.setAttribute("message", true);
			request.getRequestDispatcher("/public/signup.jsp").forward(request, response);
		}
		else {
			User user = new User();
			user.setUserName(userName);
			user.setEmail(email);
			user.setPassword(hashPassword);
			user.setIsAdmin(false);
			user.setOtpCode(randomOtp);
			user.setIsActivate(false);
			
			try { 
				userDAO.createUser(user);
				System.out.println(host + " " + port + " " + username);
				HttpSession session = request.getSession();
				session.setAttribute("newUser", user);
				EmailUtility.sendEmail(host, port, username, mailPassword, email, "Use this otp to activate your account",
						user.getOtpCode());
			} catch(Exception e) {
				e.printStackTrace();
				
			}
			response.sendRedirect(request.getContextPath() + url);
			
		}
	}

}
