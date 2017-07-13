package com.demo.model;

public class CartState {
	
	private Product prodinfo;
	private int count;
	public CartState(Product prodinfo, int count) {
		super();
		this.prodinfo = prodinfo;
		this.count = count;
	}
	public Product getProdinfo() {
		return prodinfo;
	}
	public void setProdinfo(Product prodinfo) {
		this.prodinfo = prodinfo;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	

}
