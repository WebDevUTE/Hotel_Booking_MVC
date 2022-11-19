package com.hotelbooking.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.BookingUserInfo;
import com.hotelbooking.model.User;

import java.util.List;

public class BookingUserInfoDAO {

	public void newBookingUserInfo(BookingUserInfo bookingInfo) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTransactions = em.getTransaction();
		try {
			eTransactions.begin();
			em.persist(bookingInfo);
			eTransactions.commit();
		} catch(Exception e) {
			e.printStackTrace();
			eTransactions.rollback();
		} finally {
			em.close();
		}
	}
	
	
	public BookingUserInfo getBookingInfoById(int id) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT bI FROM BookingUserInfo bI WHERE bI.bookingUserInfoId=:id";
		TypedQuery<BookingUserInfo> q = em.createQuery(query, BookingUserInfo.class);
		q.setParameter("id", id);
		BookingUserInfo bookingInfo;
		try {
			bookingInfo = q.getSingleResult();
		} finally {
			em.close();
		}
		return bookingInfo;
	}
	
	public List<BookingUserInfo> getAllBookingInfo() {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT bI FROM BookingUserInfo bI";
		TypedQuery<BookingUserInfo> q = em.createQuery(query, BookingUserInfo.class);
		List<BookingUserInfo> bookingUserInfos;
		try {
			bookingUserInfos = q.getResultList();
			if(bookingUserInfos == null || bookingUserInfos.isEmpty()) {
				bookingUserInfos = null;
			}
		} finally {
			em.close();
		}
		return bookingUserInfos;
		
	}
	
	public List<BookingUserInfo> getUserBookingHistory(User user) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT bI FROM BookingUserInfo bI INNER JOIN bI.booking b WHERE b.user=:user";
		TypedQuery<BookingUserInfo> q = em.createQuery(query, BookingUserInfo.class);
		q.setParameter("user", user);
		List<BookingUserInfo> userBookingHistory;
		try {
			userBookingHistory = q.getResultList();
			if(userBookingHistory == null || userBookingHistory.isEmpty()) {
				userBookingHistory = null;
			}
		} finally {
			em.close();
		}
		return userBookingHistory;
		
	}
}
