package com.hotelbooking.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Booking;
import com.hotelbooking.model.Hotel;

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
	
	public Booking getBookingById(int id) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT b FROM Booking b WHERE b.bookingId=:id";
		TypedQuery<Booking> q = em.createQuery(query, Booking.class);
		q.setParameter("id", id);
		Booking booking;
		try {
			booking = q.getSingleResult();
		} finally {
			em.close();
		}
		return booking;
	}
	
	public List<Booking> getAllBooking() {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT b FROM Booking b";
		TypedQuery<Booking> q = em.createQuery(query, Booking.class);
		List<Booking> allBookings;
		try {
			allBookings = q.getResultList();
			if(allBookings == null || allBookings.isEmpty()) {
				allBookings = null;
			}
		} finally {
			em.close();
		}
		return allBookings;
	}
	
	public void checkoutBooking(Booking booking) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTrans = em.getTransaction();
		try {
			eTrans.begin();
			em.remove(em.merge(booking));
			eTrans.commit();
		} catch(Exception e) {
			e.printStackTrace();
			eTrans.rollback();
		} finally {
			em.close();
		}
	}
	public Map<Integer, Long> getRoomOfEachMonth(){
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT MONTH(h.checkinDate), SUM(h.rooms) FROM Booking h GROUP BY MONTH(h.checkinDate)";
		/* TypedQuery<Hotel> q = em.createQuery(query, Hotel.class); */
		List<Object[]> hotels = em.createQuery(query).getResultList();
		Map<Integer, Long> data = new HashMap<>();
		for (Object[] o : hotels) {
			data.put((Integer) o[0], (Long) o[1]);
		}
		/*
		 * try { hotels = q.getResultList(); if(hotels == null || hotels.isEmpty()) {
		 * hotels = null; } } finally { em.close(); }
		 */
		return data;
	}
}
