// default package
// Generated Nov 13, 2022, 12:55:12 AM by Hibernate Tools 4.3.6.Final
package com.hotelbooking.model;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name = "user", catalog = "hotel_booking")
public class User implements java.io.Serializable {

	private int userId;
	private String userName;
	private String email;
	private String password;
	private Set<Rating> ratings = new HashSet<Rating>(0);

	public User() {
	}

	public User(int userId) {
		this.userId = userId;
	}

	public User(int userId, String userName, String email, String password, Set<Rating> ratings) {
		this.userId = userId;
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.ratings = ratings;
	}

	@Id

	@Column(name = "User_ID", unique = true, nullable = false)
	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "User_Name")
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "Email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "Password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Rating> getRatings() {
		return this.ratings;
	}

	public void setRatings(Set<Rating> ratings) {
		this.ratings = ratings;
	}

}