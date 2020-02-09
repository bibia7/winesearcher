package com.etranger.review.domain;

//	+----------------+--------------+------+-----+---------+----------------+
//	| Field          | Type         | Null | Key | Default | Extra          |
//	+----------------+--------------+------+-----+---------+----------------+
//	| review_num     | int(11)      | NO   | PRI | NULL    | auto_increment |
//	| member_email   | varchar(50)  | YES  |     | NULL    |                |
//	| wine_num       | int(11)      | YES  |     | NULL    |                |
//	| review_content | varchar(500) | YES  |     | NULL    |                |
//	| review_star    | int(11)      | YES  |     | NULL    |                |
//	| review_taste1  | int(11)      | YES  |     | NULL    |                |
//	| review_taste2  | int(11)      | YES  |     | NULL    |                |
//	| review_taste3  | int(11)      | YES  |     | NULL    |                |
//	| review_taste4  | int(11)      | YES  |     | NULL    |                |
//	+----------------+--------------+------+-----+---------+----------------+	
//	
public class ReviewBean {
	
	private int review_num;
	private String member_email;
	private int wine_num;
	private String review_content;
	private int review_star;
	private int review_taste1;
	private int review_taste2;
	private int review_taste3;
	private int review_taste4;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getWine_num() {
		return wine_num;
	}
	public void setWine_num(int wine_num) {
		this.wine_num = wine_num;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
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
