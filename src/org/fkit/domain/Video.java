package org.fkit.domain;

import java.io.Serializable;

/**
 * CREATE TABLE v_video(
	id INT PRIMARY KEY AUTO_INCREMENT,      #id
	biaoti VARCHAR(100) ,  		       #标题
	jianjie VARCHAR(600) ,	    	#简介
	author VARCHAR(30),				#作者//外键-关联v_user
	url VARCHAR(300),				#路径
	private String authorId;   	  //作者id
	private String imgurl;     	  //图片路径
	private String date;       	  //上传日期
	private String shenhe;     	  //审核
	private int bofang ;       	  //播放量
);
 * */

public class Video implements Serializable{

	private int id;				// id
	private String biaoti;	    // 标题
	private String jianjie;	    // 简介
	private String author;	    // 作者
	private String url;		    // 路径
	private String authorId;    //作者id
	private String imgurl;      //图片路径
	private String date;         //上传日期
	private String shenhe;       //审核
	private int bofang ;         //播放量
	
	public Video() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBiaoti() {
		return biaoti;
	}
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	@Override
	public String toString() {
		return "Video [id=" + id + ", baioti=" + biaoti + ", jianjie="
				+ jianjie+ ", author=" + author + ", url=" + url + "]";
	}

	public String getAuthorId() {
		return authorId;
	}

	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getShenhe() {
		return shenhe;
	}

	public void setShenhe(String shenhe) {
		this.shenhe = shenhe;
	}

	public int getBofang() {
		return bofang;
	}

	public void setBofang(int bofang) {
		this.bofang = bofang;
	}
}
