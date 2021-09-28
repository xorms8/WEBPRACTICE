package com.cmis.domain;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int board_num;
	private String board_title;
	private String board_content;
	private String board_writer;
	private String board_date;
	private String board_img_name;
	private int board_hits;
	/////////////////////////////////////////
	private MultipartFile board_img;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_img_name() {
		return board_img_name;
	}
	public void setBoard_img_name(String board_img_name) {
		this.board_img_name = board_img_name;
	}
	public int getBoard_hits() {
		return board_hits;
	}
	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}
	////////////////////////////////////////////////////////
	public MultipartFile getBoard_img() {
		return board_img;
	}
	public void setBoard_img(MultipartFile board_img) {
		this.board_img = board_img;
	}
	
}
