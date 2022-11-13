// default package
package com.hotelbooking.model;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * Hotel generated by hbm2java
 */
@Entity
@Table(name = "hotel", catalog = "hotel_booking")
public class Hotel implements java.io.Serializable {

	private int hotelId;
	private Agent agent;
	private Booking booking;
	private Category category;
	private Destination destination;
	private String hotelName;
	private String imageUrl;
	private Set<Rating> ratings = new HashSet<Rating>(0);
	private Set<HotelDetail> hotelDetails = new HashSet<HotelDetail>(0);

	public Hotel() {
	}

	public Hotel(Booking booking) {
		this.booking = booking;
	}

	public Hotel(Agent agent, Booking booking, Category category, Destination destination, String hotelName,
			String imageUrl, Set<Rating> ratings, Set<HotelDetail> hotelDetails) {
		this.agent = agent;
		this.booking = booking;
		this.category = category;
		this.destination = destination;
		this.hotelName = hotelName;
		this.imageUrl = imageUrl;
		this.ratings = ratings;
		this.hotelDetails = hotelDetails;
	}

	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "booking"))
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "Hotel_ID", unique = true, nullable = false)
	public int getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Agent_ID")
	public Agent getAgent() {
		return this.agent;
	}

	public void setAgent(Agent agent) {
		this.agent = agent;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Category_ID")
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Destination_ID")
	public Destination getDestination() {
		return this.destination;
	}

	public void setDestination(Destination destination) {
		this.destination = destination;
	}

	@Column(name = "Hotel_Name")
	public String getHotelName() {
		return this.hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	@Column(name = "Image_Url")
	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Rating> getRatings() {
		return this.ratings;
	}

	public void setRatings(Set<Rating> ratings) {
		this.ratings = ratings;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<HotelDetail> getHotelDetails() {
		return this.hotelDetails;
	}

	public void setHotelDetails(Set<HotelDetail> hotelDetails) {
		this.hotelDetails = hotelDetails;
	}

}