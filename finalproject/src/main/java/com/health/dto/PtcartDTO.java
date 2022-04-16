package com.health.dto;


public class PtcartDTO {
	int pc_num, pu_num, et_num;
	
	public PtcartDTO(){}
	
	public PtcartDTO(int pu_num, int et_num){
		this.pu_num = pu_num;
		this.et_num = et_num;
	}
	
	public int getPc_num() {
		return pc_num;
	}

	public void setPc_num(int pc_num) {
		this.pc_num = pc_num;
	}

	public int getPu_num() {
		return pu_num;
	}

	public void setPu_num(int pu_num) {
		this.pu_num = pu_num;
	}

	public int getEt_num() {
		return et_num;
	}

	public void setEt_num(int et_num) {
		this.et_num = et_num;
	}
	
	
}
