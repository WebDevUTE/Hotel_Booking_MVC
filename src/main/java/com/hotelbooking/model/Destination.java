package com.hotelbooking.model;
// default package
// Generated Nov 16, 2022, 11:06:54 PM by Hibernate Tools 4.3.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Destination generated by hbm2java
 */
@Entity
@Table(name = "destination", catalog = "hotel_booking")
public class Destination implements java.io.Serializable {

	private Integer destinationId;
	private String desName;
	private String imageUrl;
	private Set<Hotel> hotels = new HashSet<Hotel>(0);
	private Set<Hotel> hotels_1 = new HashSet<Hotel>(0);

	public Destination() {
	}

	public Destination(String desName, String imageUrl, Set<Hotel> hotels, Set<Hotel> hotels_1) {
		this.desName = desName;
		this.imageUrl = imageUrl;
		this.hotels = hotels;
		this.hotels_1 = hotels_1;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Destination_ID", unique = true, nullable = false)
	public Integer getDestinationId() {
		return this.destinationId;
	}

	public void setDestinationId(Integer destinationId) {
		this.destinationId = destinationId;
	}

	@Column(name = "Des_Name")
	public String getDesName() {
		return this.desName;
	}

	public void setDesName(String desName) {
		this.desName = desName;
	}

	@Column(name = "Image_Url")
	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "destination")
	public Set<Hotel> getHotels() {
		return this.hotels;
	}

	public void setHotels(Set<Hotel> hotels) {
		this.hotels = hotels;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "destination")
	public Set<Hotel> getHotels_1() {
		return this.hotels_1;
	}

	public void setHotels_1(Set<Hotel> hotels_1) {
		this.hotels_1 = hotels_1;
	}

}
