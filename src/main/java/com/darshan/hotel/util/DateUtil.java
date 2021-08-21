package com.darshan.hotel.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateUtil {

	private DateUtil() {

	}

	public static LocalDate convertStringToDate(String dateString) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		return LocalDate.parse(dateString, formatter);
	}

}
