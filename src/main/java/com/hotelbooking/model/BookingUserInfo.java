package com.hotelbooking.model;
// default package
// Generated Nov 16, 2022, 11:06:54 PM by Hibernate Tools 4.3.6.Final

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
 * BookingUserInfo generated by hbm2java
 */
@Entity
@Table(name = "booking_user_info", catalog = "hotel_booking", uniqueConstraints = @UniqueConstraint(columnNames = "Booking_ID"))
public class BookingUserInfo implements java.io.Serializable {

	private Integer bookingUserInfoId;
	private Booking booking;
	private String name;
	private String phone;
	private String email;

	public BookingUserInfo() {
	}

	public BookingUserInfo(Booking booking, String name, String phone, String email) {
		this.booking = booking;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Booking_User_Info_ID", unique = true, nullable = false)
	public Integer getBookingUserInfoId() {
		return this.bookingUserInfoId;
	}

	public void setBookingUserInfoId(Integer bookingUserInfoId) {
		this.bookingUserInfoId = bookingUserInfoId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Booking_ID", unique = true)
	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	@Column(name = "Name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "Phone")
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "Email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
