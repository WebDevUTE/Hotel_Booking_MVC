package com.hotelbooking.dao;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Destination;
import com.hotelbooking.model.Hotel;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

public class HotelDAO {
	
	public List<Hotel> getHotelsByDestination(int desID) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT h FROM Hotel h INNER JOIN h.destination d WHERE d.destinationId=:desID";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		q.setParameter("desID", desID);
		List<Hotel> hotels;
		try {
			hotels = q.getResultList();
			if(hotels == null || hotels.isEmpty()) {
				hotels = null;
			}
		} finally {
			em.close();
		}
		return hotels;
	}
	
	public List<Hotel> getAllHotel() {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "FROM Hotel h";
		TypedQuery<Hotel> q = em.createQuery(query, Hotel.class);
		List<Hotel> hotels;
		try {
			hotels = q.getResultList();
			if(hotels == null || hotels.isEmpty()) {
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
			if(hotels == null || hotels.isEmpty()) {
				hotels = null;
			}
		} finally {
			em.close();
		}
		return hotels;
	}
}
