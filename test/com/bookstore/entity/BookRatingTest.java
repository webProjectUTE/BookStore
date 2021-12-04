package com.bookstore.entity;

import static org.junit.Assert.*;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;

public class BookRatingTest {

	@Test
	public void testAverageRating1() {
		Book book = new Book();
		
		Set<Review> reviews = new HashSet<>();
		Review review1 = new Review();
		review1.setRating(5);
		reviews.add(review1);
		
		book.setReviews(reviews);
		
		float averageRating = book.getAverageRating();
		
		assertEquals(5.0, averageRating, 0.0);
	}

	@Test
	public void testRatingString2() {
		float averageRating = 5.0f;
		Book book = new Book();
		String actual = book.getRatingString(averageRating);
		
		String expected = "on,on,on,on,on";
		
		assertEquals(actual, expected);
	}
	
	@Test
	public void testRatingString3() {
		float averageRating = 3.0f;
		Book book = new Book();
		String actual = book.getRatingString(averageRating);
		
		String expected = "on,on,on,off,off";
		
		assertEquals(actual, expected);
	}
	
	@Test
	public void testRatingString4() {
		float averageRating = 4.5f;
		Book book = new Book();
		String actual = book.getRatingString(averageRating);
		
		String expected = "on,on,on,on,half";
		
		assertEquals(actual, expected);
	}
}
