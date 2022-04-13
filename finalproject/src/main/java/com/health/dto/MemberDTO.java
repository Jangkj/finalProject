package com.health.dto;

import java.util.Date;

public class MemberDTO {
	private int m_num;

	private String m_id, m_pw, m_name, m_hint, m_hintan, m_hp, m_post, m_add, m_mail;

	private Date m_date;
	
	
	public MemberDTO() {}

	public MemberDTO(int m_num, String m_id, String m_pw, String m_name, String m_hint, String m_hintan, String m_hp,
			String m_post, String m_add, String m_mail, Date m_date) {
		super();
		this.m_num = m_num;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_hint = m_hint;
		this.m_hintan = m_hintan;
		this.m_hp = m_hp;
		this.m_post = m_post;
		this.m_add = m_add;
		this.m_mail = m_mail;
		this.m_date = m_date;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_hint() {
		return m_hint;
	}

	public void setM_hint(String m_hint) {
		this.m_hint = m_hint;
	}

	public String getM_hintan() {
		return m_hintan;
	}

	public void setM_hintan(String m_hintan) {
		this.m_hintan = m_hintan;
	}

	public String getM_hp() {
		return m_hp;
	}

	public void setM_hp(String m_hp) {
		this.m_hp = m_hp;
	}

	public String getM_post() {
		return m_post;
	}

	public void setM_post(String m_post) {
		this.m_post = m_post;
	}

	public String getM_add() {
		return m_add;
	}

	public void setM_add(String m_add) {
		this.m_add = m_add;
	}

	public String getM_mail() {
		return m_mail;
	}

	public void setM_mail(String m_mail) {
		this.m_mail = m_mail;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}

}