package com.hotelbooking.email_utils;

import java.util.Map;

import javax.servlet.http.Part;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import org.apache.commons.io.IOUtils;
import org.apache.commons.codec.binary.Base64;

public class HandleFileUpload {
	public static Map uploadImage(String imgName, String folderPath, Part file) {
		Cloudinary cloudinary = CloudinaryUtility.getCloudinary();

		try {
			byte[] sourceBytes = IOUtils.toByteArray(file.getInputStream());

			Base64 base64 = new Base64();
			String encodedString = base64.encodeToString(sourceBytes);

			Map params1 =
					ObjectUtils.asMap(
							"folder",
							folderPath,
							"public_id",
							imgName,
							"use_filename",
							true,
							"unique_filename",
							false,
							"overwrite",
							true);

			Map result = cloudinary.uploader().upload("data:image/png;base64," + encodedString, params1);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
