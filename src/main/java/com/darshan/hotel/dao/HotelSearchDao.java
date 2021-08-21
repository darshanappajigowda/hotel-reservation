package com.darshan.hotel.dao;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.darshan.hotel.entity.City;
import com.darshan.hotel.entity.Hotel;
import com.darshan.hotel.model.HotelReservation;
import com.darshan.hotel.util.DateUtil;

@Repository
public class HotelSearchDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Map<String, String> getCities() {
		Session session = sessionFactory.getCurrentSession();

		Query<City> query = session.createQuery("from City order by name", City.class);

		List<City> cities = query.getResultList();

		return cities.stream().collect(Collectors.toMap(City::getId, City::getName));
	}

	@SuppressWarnings("unchecked")
	public List<Hotel> getHotelsForCity(String city) {
		Session session = sessionFactory.getCurrentSession();
		Query<Hotel> query = session.createQuery("from Hotel where city=:city order by name");
		query.setParameter("city", city);

		List<Hotel> hotels = query.getResultList();

		return hotels;
	}

	@SuppressWarnings("unchecked")
	public List<Hotel> searchHotel(HotelReservation hotelReservation) {

		Session session = sessionFactory.getCurrentSession();
		Query<Hotel> query = session
				.createQuery("from Hotel where city=:city and id=:hotel and date=:date and status=:status");
		query.setParameter("city", hotelReservation.getCity());
		query.setParameter("hotel", hotelReservation.getHotel());
		query.setParameter("date", DateUtil.convertStringToDate(hotelReservation.getDate()).toString());
		query.setParameter("status", "A");

		List<Hotel> hotel = query.getResultList();

		return hotel;

	}

}
