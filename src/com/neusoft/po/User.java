package com.neusoft.po;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private Integer id;

	private String uname;

	private String upwd;

	private Integer renqi;

	private Integer jifen;

	private Integer fens;

	private Integer fouc;

	private String logo;

	private String address;

	private String shengfen;

	private String email;
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	private Date time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname == null ? null : uname.trim();
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd == null ? null : upwd.trim();
	}

	public Integer getRenqi() {
		return renqi;
	}

	public void setRenqi(Integer renqi) {
		this.renqi = renqi;
	}

	public Integer getJifen() {
		return jifen;
	}

	public void setJifen(Integer jifen) {
		this.jifen = jifen;
	}

	public Integer getFens() {
		return fens;
	}

	public void setFens(Integer fens) {
		this.fens = fens;
	}

	public Integer getFouc() {
		return fouc;
	}

	public void setFouc(Integer fouc) {
		this.fouc = fouc;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo == null ? null : logo.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public String getShengfen() {
		return shengfen;
	}

	public void setShengfen(String shengfen) {
		this.shengfen = shengfen == null ? null : shengfen.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", upwd=" + upwd + ", renqi=" + renqi + ", jifen=" + jifen
				+ ", fens=" + fens + ", fouc=" + fouc + ", logo=" + logo + ", address=" + address + ", shengfen="
				+ shengfen + ", email=" + email + ", time=" + time + "]";
	}

}