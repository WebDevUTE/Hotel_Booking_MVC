package com.hotelbooking.dao;

import com.hotelbooking.model.User;
import com.hotelbooking.JPA.DBUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;


public class UserDAO {
	public void createUser(User user) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		EntityTransaction eTransactions = em.getTransaction();
		try {
			eTransactions.begin();
			em.persist(user);
			eTransactions.commit();
		} catch (Exception e) {
			e.printStackTrace();
			eTransactions.rollback();
		} finally {
			em.close();
		}
	}
	
	public User getUserByEmail(String email) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT u FROM User u WHERE u.email=:email";
		
		TypedQuery<User> q = em.createQuery(query, User.class);
		q.setParameter("email", email);
		
		User user = null;
		try {
			user = q.getSingleResult();
		} catch(NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return user;
	}
}
