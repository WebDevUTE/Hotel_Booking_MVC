package com.hotelbooking.model;
// default package
// Generated Nov 14, 2022, 3:10:51 PM by Hibernate Tools 4.3.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Rating generated by hbm2java
 */
@Entity
@Table(name = "rating", catalog = "hotel_booking", uniqueConstraints = @UniqueConstraint(columnNames = "User_ID"))
public class Rating implements java.io.Serializable {

	private Integer ratingId;
	private Hotel hotel;
	private User user;
	private String title;
	private String comment;
	private Integer rate;

	public Rating() {
	}

	public Rating(Hotel hotel, User user, String title, String comment, Integer rate) {
		this.hotel = hotel;
		this.user = user;
		this.title = title;
		this.comment = comment;
		this.rate = rate;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Rating_ID", unique = true, nullable = false)
	public Integer getRatingId() {
		return this.ratingId;
	}

	public void setRatingId(Integer ratingId) {
		this.ratingId = ratingId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Hotel_ID")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "User_ID", unique = true)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "Title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "Comment")
	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Column(name = "Rate")
	public Integer getRate() {
		return this.rate;
	}

	public void setRate(Integer rate) {
		this.rate = rate;
	}

}
