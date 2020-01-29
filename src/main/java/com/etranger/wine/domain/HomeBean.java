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
}
