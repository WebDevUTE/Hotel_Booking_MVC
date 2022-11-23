package com.hotelbooking.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import com.hotelbooking.JPA.DBUtil;
import com.hotelbooking.model.Category;

public class CategoryDAO {
	public Category getCategoryFromName(String categoryName) {
		EntityManager em = DBUtil.getFactory().createEntityManager();
		String query = "SELECT c FROM Category c WHERE c.categoryName=:categoryName";
		TypedQuery<Category> q = em.createQuery(query, Category.class);
		q.setParameter("categoryName", categoryName);
		Category category = null;
		try {
			category = q.getSingleResult();
		} catch(NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return category;
	}
}
