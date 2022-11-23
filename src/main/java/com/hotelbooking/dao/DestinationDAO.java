package com.hotelbooking.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Destination;

public class DestinationDAO {
	public Destination getDesById(int desID) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT d FROM Destination d WHERE d.destinationId=:desID";
		
		TypedQuery<Destination> q = em.createQuery(query, Destination.class);
		q.setParameter("desID", desID);
		
		Destination des = null;
		try {
			des = q.getSingleResult();
		} catch(NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return des;
	}
	
	public Destination getDesFromName(String desName) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT d FROM Destination d WHERE d.desName=:desName";
		TypedQuery<Destination> q = em.createQuery(query, Destination.class);
		q.setParameter("desName", desName);
		Destination des = null;
		try {
			des = q.getSingleResult();
		} catch(NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return des;
	}
}
