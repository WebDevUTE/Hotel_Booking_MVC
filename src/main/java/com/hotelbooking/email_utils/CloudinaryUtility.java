package com.hotelbooking.email_utils;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

public class CloudinaryUtility {
	
	public static Cloudinary cloudinary;
	public static Cloudinary getCloudinary() {
		if(cloudinary == null) {
			cloudinary = new Cloudinary(ObjectUtils.asMap(
					"cloud_name", "dwdro7ihh",
					  "api_key", "354832969324979",
					  "api_secret", "ffD4MhT8SVkb3Avju3jff1g7l74",
					  "secure", true));

			System.out.println("Cloud name: " + cloudinary.config.cloudName);
		}
		return cloudinary;
	}
}
