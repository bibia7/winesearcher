package com.etranger.wine.domain;

public class HomeBean {
//	wine_num INT PRIMARY KEY AUTO_INCREMENT,
//	wine_name VARCHAR(100),
//	wine_from VARCHAR(50),
//	wine_grapes VARCHAR(50),
//	wine_type VARCHAR(50),
//	wine_image VARCHAR(200),
//	wine_price int

	private int wine_num;
	private String wine_name;
	private String wine_from;
	private String wine_grapes;
	private String wine_type;
	private String wine_image;
	private int wine_price;
	private String wine_info;
	
	private int review_star;
	private int review_taste1;
	private int review_taste2;
	private int review_taste3;
	private int review_taste4;
	
	
	public int getWine_num() {
		return wine_num;
	}
	public void setWine_num(int wine_num) {
		this.wine_num = wine_num;
	}
	public String getWine_name() {
		return wine_name;
	}
	public void setWine_name(String wine_name) {
		this.wine_name = wine_name;
	}
	public String getWine_from() {
		return wine_from;
	}
	public void setWine_from(String wine_from) {
		this.wine_from = wine_from;
	}
	public String getWine_grapes() {
		return wine_grapes;
	}
	public void setWine_grapes(String wine_grapes) {
		this.wine_grapes = wine_grapes;
	}
	public String getWine_type() {
		return wine_type;
	}
	public void setWine_type(String wine_type) {
		this.wine_type = wine_type;
	}
	public String getWine_image() {
		return wine_image;
	}
	public void setWine_image(String wine_image) {
		this.wine_image = wine_image;
	}
	public int getWine_price() {
		return wine_price;
	}
	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}
	public String getWine_info() {
		return wine_info;
	}
	public void setWine_info(String wine_info) {
		this.wine_info = wine_info;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public int getReview_taste1() {
		return review_taste1;
	}
	public void setReview_taste1(int review_taste1) {
		this.review_taste1 = review_taste1;
	}
	public int getReview_taste2() {
		return review_taste2;
	}
	public void setReview_taste2(int review_taste2) {
		this.review_taste2 = review_taste2;
	}
	public int getReview_taste3() {
		return review_taste3;
	}
	public void setReview_taste3(int review_taste3) {
		this.review_taste3 = review_taste3;
	}
	public int getReview_taste4() {
		return review_taste4;
	}
	public void setReview_taste4(int review_taste4) {
		this.review_taste4 = review_taste4;
	}
}
