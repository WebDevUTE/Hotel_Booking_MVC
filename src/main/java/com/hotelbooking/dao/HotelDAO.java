package com.hotelbooking.dao;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Destination;
import com.hotelbooking.model.Hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

public class HotelDAO {

	public List<Hotel> getHotelsByDestination(String text) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h FROM Hotel h INNER JOIN h.destination d "
				+ "WHERE d.desName LIKE :text OR h.hotelName LIKE :text OR h.description LIKE :text ";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		q.setParameter("text", "%"+text+"%");
		List<Hotel> hotels;
		try {
			hotels = q.getResultList();
			if (hotels == null || hotels.isEmpty()) {
				hotels = null;
			}
		} finally {
			em.close();
		}
		return hotels;
	}

	public List<Hotel> getAllHotel() {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h FROM Hotel h";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		List<Hotel> hotels;
		try {
			hotels = q.getResultList();
			if (hotels == null || hotels.isEmpty()) {
				hotels = null;
			}
		} finally {
			em.close();
		}
		return hotels;
	}

	public Hotel getHotelDetailById(int id) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h FROM Hotel h WHERE h.hotelId=:id";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		q.setParameter("id", id);
		Hotel hotelDetails;
		try {
			hotelDetails = q.getSingleResult();
		} finally {
			em.close();
		}
		return hotelDetails;
	}

	public List<Hotel> getHotelsByCategory(int cateID) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h FROM Hotel h INNER JOIN h.category c WHERE c.categoryId=:cateID";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		q.setParameter("cateID", cateID);
		List<Hotel> hotels;
		try {
			hotels = q.getResultList();
			if (hotels == null || hotels.isEmpty()) {
				hotels = null;
			}
		} finally {
			em.close();
		}
		return hotels;
	}

	public void addHotel(Hotel hotel) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTransactions = em.getTransaction();
		try {
			eTransactions.begin();
			em.persist(hotel);
			eTransactions.commit();
		} catch (Exception e) {
			e.printStackTrace();
			eTransactions.rollback();
		} finally {
			em.close();
		}
	}

	public void updateHotel(Hotel hotel) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTrans = em.getTransaction();
		try {
			eTrans.begin();
			em.merge(hotel);
			eTrans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			eTrans.rollback();
		} finally {
			em.close();
		}
	}

	public void deleteHotel(Hotel hotel) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTrans = em.getTransaction();
		try {
			eTrans.begin();
			em.remove(em.merge(hotel));
			eTrans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			eTrans.rollback();
		} finally {
			em.close();
		}
	}

	public Map<String, Long> getNumberOfEachHotel() {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h.destination.desName ,COUNT(h.hotelId) FROM Hotel h GROUP BY h.destination.desName";
		/* TypedQuery<Hotel> q = em.createQuery(query, Hotel.class); */
		List<Object[]> hotels = em.createQuery(query).getResultList();
		Map<String, Long> data = new HashMap<>();
		for (Object[] o : hotels) {
			data.put((String) o[0], (Long) o[1]);
		}
		/*
		 * try { hotels = q.getResultList(); if(hotels == null || hotels.isEmpty()) {
		 * hotels = null; } } finally { em.close(); }
		 */
		return data;

	}

}
