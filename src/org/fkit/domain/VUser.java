package org.fkit.domain;

import java.io.Serializable;

/**
 * CREATE TABLE v_user(
id INT PRIMARY KEY AUTO_INCREMENT,      #id
level VARCHAR(10) ,    		 #等级
name VARCHAR(50) ,			#用户名
password VARCHAR(40),		#密码
xingbie VARCHAR(10),		#性别
beizhu VARCHAR(600),		#备注
VARCHAR(20) zhanghao;		# 账号
);
 * */

public class VUser implements Serializable{
	
	private Integer id;			// id
	private String level;	    // 等级
	private String name;	    // 用户名
	private String password;	// 密码
	private String xingbie;		// 性别
	private String beizhu;		// 备注
	private String zhanghao;		// 账号
	
	public VUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getXingbie() {
		return xingbie;
	}
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {

		this.beizhu = beizhu;
	}
	
	@Override
	public String toString() {
		return "VUser [id=" + id + ", level=" + level + ", name="
				+ name+ ", password=" + password + ", xingbie=" + xingbie
				+ ", beizhu=" + beizhu + "]";
	}

	public String getZhanghao() {
		return zhanghao;
	}

	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
}
