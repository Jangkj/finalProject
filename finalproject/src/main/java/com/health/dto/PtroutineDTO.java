package com.health.dto;


public class PtroutineDTO {
	int pr_num, pu_num , pr_count;
	String pr_info, et_ename;
	
	public PtroutineDTO(){};
	
	public PtroutineDTO(String pr_info, int pu_num, String et_ename, int pr_count){
		this.pr_info = pr_info;
		this.pu_num = pu_num;
		this.et_ename = et_ename;
		this.pr_count = pr_count;
	}

	public int getPr_num() {
		return pr_num;
	}

	public void setPr_num(int pr_num) {
		this.pr_num = pr_num;
	}

	public int getPu_num() {
		return pu_num;
	}

	public void setPu_num(int pu_num) {
		this.pu_num = pu_num;
	}

	public int getPr_count() {
		return pr_count;
	}

	public void setPr_count(int pr_count) {
		this.pr_count = pr_count;
	}

	public String getPr_info() {
		return pr_info;
	}

	public void setPr_info(String pr_info) {
		this.pr_info = pr_info;
	}

	public String getEt_ename() {
		return et_ename;
	}

	public void setEt_ename(String et_ename) {
		this.et_ename = et_ename;
	};
	
	
	
}
