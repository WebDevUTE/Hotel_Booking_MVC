package com.hotelbooking.JPA;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
	private static EntityManagerFactory entityManagerFactory = 
			Persistence.createEntityManagerFactory("Hotel_Booking");
	
	public static EntityManagerFactory getFactory() {
		return entityManagerFactory;
	}
}
