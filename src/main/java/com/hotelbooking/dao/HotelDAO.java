package com.hotelbooking.dao;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Hotel;

import java.util.List;

import javax.persistence.EntityManager;
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
}
