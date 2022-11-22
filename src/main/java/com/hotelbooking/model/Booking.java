package com.hotelbooking.model;
// default package
// Generated Nov 19, 2022, 5:18:30 PM by Hibernate Tools 4.3.6.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Booking generated by hbm2java
 */
@Entity
@Table(name = "booking")
public class Booking implements java.io.Serializable {

	private Integer bookingId;
	private Hotel hotel;
	private User user;
	private Date checkinDate;
	private Date checkoutDate;
	private Integer rooms;
	private Integer guest;
	private Long total;
	private Set<BookingUserInfo> bookingUserInfos = new HashSet<BookingUserInfo>(0);

	public Booking() {
	}

	public Booking(Hotel hotel, User user, Date checkinDate, Date checkoutDate, Integer rooms, Integer guest,
			Long total, Set<BookingUserInfo> bookingUserInfos) {
		this.hotel = hotel;
		this.user = user;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.rooms = rooms;
		this.guest = guest;
		this.total = total;
		this.bookingUserInfos = bookingUserInfos;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Booking_ID", unique = true, nullable = false)
	public Integer getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(Integer bookingId) {
		this.bookingId = bookingId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "Hotel_ID")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "User_ID")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "Checkin_Date", length = 10)
	public Date getCheckinDate() {
		return this.checkinDate;
	}

	public void setCheckinDate(Date checkinDate) {
		this.checkinDate = checkinDate;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "Checkout_Date", length = 10)
	public Date getCheckoutDate() {
		return this.checkoutDate;
	}

	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	@Column(name = "Rooms")
	public Integer getRooms() {
		return this.rooms;
	}

	public void setRooms(Integer rooms) {
		this.rooms = rooms;
	}

	@Column(name = "Guest")
	public Integer getGuest() {
		return this.guest;
	}

	public void setGuest(Integer guest) {
		this.guest = guest;
	}

	@Column(name = "Total", precision = 10, scale = 0)
	public Long getTotal() {
		return this.total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "booking")
	public Set<BookingUserInfo> getBookingUserInfos() {
		return this.bookingUserInfos;
	}

	public void setBookingUserInfos(Set<BookingUserInfo> bookingUserInfos) {
		this.bookingUserInfos = bookingUserInfos;
	}

}
