package com.hotelbooking.dao;

import com.hotelbooking.model.User;
import com.hotelbooking.JPA.DBUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;


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
}
