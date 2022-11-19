package com.hotelbooking.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Booking;

public class BookingDAO {

	public void createBooking(Booking booking) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTransactions = em.getTransaction();
		try {
			eTransactions.begin();
			em.persist(booking);
			eTransactions.commit();
		} catch(Exception e) {
			e.printStackTrace();
			eTransactions.rollback();
		} finally {
			em.close();
		}
	}
}
