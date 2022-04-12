package com.health.dto;

public class ProductDTO {
int prod_num;
int category_num;
String prod_title;
int prod_price;
int prod_inventory;
String prod_img;
String prod_description;
int prod_fee;
String prod_large;
String prod_medium;
String prod_small;
int view_count;

public ProductDTO() {}

public ProductDTO(int prod_num, int category_num, String prod_title, int prod_price, int prod_inventory,
		String prod_img, String prod_description, int prod_fee, String prod_large, String prod_medium,
		String prod_small, int view_count) {
	this.prod_num = prod_num;
	this.category_num = category_num;
	this.prod_title = prod_title;
	this.prod_price = prod_price;
	this.prod_inventory = prod_inventory;
	this.prod_img = prod_img;
	this.prod_description = prod_description;
	this.prod_fee = prod_fee;
	this.prod_large = prod_large;
	this.prod_medium = prod_medium;
	this.prod_small = prod_small;
	this.view_count = view_count;
}




public int getProd_num() {
	return prod_num;
}

public void setProd_num(int prod_num) {
	this.prod_num = prod_num;
}

public int getCategory_num() {
	return category_num;
}

public void setCategory_num(int category_num) {
	this.category_num = category_num;
}

public String getProd_title() {
	return prod_title;
}

public void setProd_title(String prod_title) {
	this.prod_title = prod_title;
}

public int getProd_price() {
	return prod_price;
}

public void setProd_price(int prod_price) {
	this.prod_price = prod_price;
}

public int getProd_inventory() {
	return prod_inventory;
}

public void setProd_inventory(int prod_inventory) {
	this.prod_inventory = prod_inventory;
}

public String getProd_img() {
	return prod_img;
}

public void setProd_img(String prod_img) {
	this.prod_img = prod_img;
}

public String getProd_description() {
	return prod_description;
}

public void setProd_description(String prod_description) {
	this.prod_description = prod_description;
}

public int getProd_fee() {
	return prod_fee;
}

public void setProd_fee(int prod_fee) {
	this.prod_fee = prod_fee;
}

public String getProd_large() {
	return prod_large;
}

public void setProd_large(String prod_large) {
	this.prod_large = prod_large;
}

public String getProd_medium() {
	return prod_medium;
}

public void setProd_medium(String prod_medium) {
	this.prod_medium = prod_medium;
}

public String getProd_small() {
	return prod_small;
}

public void setProd_small(String prod_small) {
	this.prod_small = prod_small;
}

public int getView_count() {
	return view_count;
}

public void setView_count(int view_count) {
	this.view_count = view_count;
}


}




