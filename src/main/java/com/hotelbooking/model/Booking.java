// default package
// Generated Nov 13, 2022, 12:55:12 AM by Hibernate Tools 4.3.6.Final
package com.hotelbooking.model;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Booking generated by hbm2java
 */
@Entity
@Table(name = "booking", catalog = "hotel_booking", uniqueConstraints = @UniqueConstraint(columnNames = "Hotel_ID"))
public class Booking implements java.io.Serializable {

	private int bookingId;
	private Date checkinDate;
	private Date checkoutDate;
	private Integer rooms;
	private Integer guest;
	private Integer hotelId;
	private Hotel hotel;
	private Set<BookingUserInfo> bookingUserInfos = new HashSet<BookingUserInfo>(0);

	public Booking() {
	}

	public Booking(int bookingId) {
		this.bookingId = bookingId;
	}

	public Booking(int bookingId, Date checkinDate, Date checkoutDate, Integer rooms, Integer guest, Integer hotelId,
			Hotel hotel, Set<BookingUserInfo> bookingUserInfos) {
		this.bookingId = bookingId;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.rooms = rooms;
		this.guest = guest;
		this.hotelId = hotelId;
		this.hotel = hotel;
		this.bookingUserInfos = bookingUserInfos;
	}

	@Id

	@Column(name = "Booking_ID", unique = true, nullable = false)
	public int getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
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

	@Column(name = "Hotel_ID", unique = true)
	public Integer getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "booking")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "booking")
	public Set<BookingUserInfo> getBookingUserInfos() {
		return this.bookingUserInfos;
	}

	public void setBookingUserInfos(Set<BookingUserInfo> bookingUserInfos) {
		this.bookingUserInfos = bookingUserInfos;
	}

}
