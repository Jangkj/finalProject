package com.health.dto;

import java.util.Date;

public class MemberDTO {
	int m_num;

	String m_id, m_pw, m_name, m_hint, m_hintan, m_hp1, m_hp2, m_hp3, m_post1, m_post2, m_add1, m_add2, m_mail1,
			m_mail2;

	Date m_date;
	
	public MemberDTO() {}
	
	

	public MemberDTO(int m_num, String m_id, String m_pw, String m_name, String m_hint, String m_hintan, String m_hp1,
			String m_hp2, String m_hp3, String m_post1, String m_post2, String m_add1, String m_add2, String m_mail1,
			String m_mail2, Date m_date) {
		super();
		this.m_num = m_num;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_hint = m_hint;
		this.m_hintan = m_hintan;
		this.m_hp1 = m_hp1;
		this.m_hp2 = m_hp2;
		this.m_hp3 = m_hp3;
		this.m_post1 = m_post1;
		this.m_post2 = m_post2;
		this.m_add1 = m_add1;
		this.m_add2 = m_add2;
		this.m_mail1 = m_mail1;
		this.m_mail2 = m_mail2;
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

	public String getM_hp1() {
		return m_hp1;
	}

	public void setM_hp1(String m_hp1) {
		this.m_hp1 = m_hp1;
	}

	public String getM_hp2() {
		return m_hp2;
	}

	public void setM_hp2(String m_hp2) {
		this.m_hp2 = m_hp2;
	}

	public String getM_hp3() {
		return m_hp3;
	}

	public void setM_hp3(String m_hp3) {
		this.m_hp3 = m_hp3;
	}

	public String getM_post1() {
		return m_post1;
	}

	public void setM_post1(String m_post1) {
		this.m_post1 = m_post1;
	}

	public String getM_post2() {
		return m_post2;
	}

	public void setM_post2(String m_post2) {
		this.m_post2 = m_post2;
	}

	public String getM_add1() {
		return m_add1;
	}

	public void setM_add1(String m_add1) {
		this.m_add1 = m_add1;
	}

	public String getM_add2() {
		return m_add2;
	}

	public void setM_add2(String m_add2) {
		this.m_add2 = m_add2;
	}

	public String getM_mail1() {
		return m_mail1;
	}

	public void setM_mail1(String m_mail1) {
		this.m_mail1 = m_mail1;
	}

	public String getM_mail2() {
		return m_mail2;
	}

	public void setM_mail2(String m_mail2) {
		this.m_mail2 = m_mail2;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}
}